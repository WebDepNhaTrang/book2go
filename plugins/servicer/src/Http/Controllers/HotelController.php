<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\HotelRequest;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\HotelTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\HotelForm;
use Botble\Base\Forms\FormBuilder;
use Auth;

class HotelController extends BaseController
{
    /**
     * @var ServiceTypeInterface
     */
    protected $serviceTypeRepository;

    /**
     * ServiceController constructor.
     * @param ServiceTypeInterface $serviceTypeRepository
     * @author Anh Ngo
     */
    public function __construct(ServiceTypeInterface $serviceTypeRepository)
    {
        $this->serviceTypeRepository = $serviceTypeRepository;
    }

    /**
     * Display all service
     * @param HotelTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(HotelTable $dataTable)
    {

        page_title()->setTitle(trans('servicer::hotel.list'));

        return $dataTable->renderTable(['title' => trans('servicer::hotel.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::hotel.create'));

        return $formBuilder->create(HotelForm::class)->renderForm();
    }

    /**
     * Insert new Service into database
     *
     * @param HotelRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(HotelRequest $request)
    {
        $hotel = $this->serviceTypeRepository->createOrUpdate(array_merge($request->input(), [
            'user_id' => Auth::user()->getKey(),
        ]));

        event(new CreatedContentEvent(HOTEL_MODULE_SCREEN_NAME, $request, $hotel));

        if ($request->input('submit') === 'save') {
            return redirect()->route('hotel.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('hotel.edit', $hotel->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        $hotel = $this->serviceTypeRepository->findById($id);
        if (empty($hotel)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::hotel.edit') . ' #' . $id);

        return $formBuilder->create(HotelForm::class)->setModel($hotel)->renderForm();
    }

    /**
     * @param $id
     * @param HotelRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, HotelRequest $request)
    {
        $hotel = $this->serviceTypeRepository->findById($id);
        if (empty($hotel)) {
            abort(404);
        }
        $hotel->fill($request->input());

        $this->serviceTypeRepository->createOrUpdate($hotel);

        event(new UpdatedContentEvent(HOTEL_MODULE_SCREEN_NAME, $request, $hotel));

        if ($request->input('submit') === 'save') {
            return redirect()->route('hotel.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('hotel.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
        }
    }

    /**
     * @param $id
     * @param Request $request
     * @return AjaxResponse
     * @author Anh Ngo
     */
    public function getDelete(Request $request, $id, AjaxResponse $response)
    {
        try {
            $hotel = $this->serviceTypeRepository->findById($id);
            if (empty($hotel)) {
                abort(404);
            }
            $this->serviceTypeRepository->delete($hotel);

            event(new DeletedContentEvent(HOTEL_MODULE_SCREEN_NAME, $request, $hotel));

            return $response->setMessage(trans('core.base::notices.delete_success_message'));
        } catch (Exception $e) {
            return $response->setError(true)->setMessage(trans('core.base::notices.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Anh Ngo
     */
    public function postDeleteMany(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $hotel = $this->serviceTypeRepository->findById($id);
            $this->serviceTypeRepository->delete($hotel);
            event(new DeletedContentEvent(HOTEL_MODULE_SCREEN_NAME, $request, $hotel));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Anh Ngo
     */
    public function postChangeStatus(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $hotel = $this->serviceTypeRepository->findById($id);
            $hotel->status = $request->input('status');
            $this->serviceTypeRepository->createOrUpdate($hotel);

            event(new UpdatedContentEvent(HOTEL_MODULE_SCREEN_NAME, $request, $hotel));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
