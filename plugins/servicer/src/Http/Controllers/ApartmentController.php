<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\ApartmentRequest;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\ApartmentTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\ApartmentForm;
use Botble\Base\Forms\FormBuilder;
use Auth;

class ApartmentController extends BaseController
{
    /**
     * @var ApartmentInterface
     */
    protected $apartmentRepository;

    /**
     * ApartmentController constructor.
     * @param ApartmentInterface $servicerRepository
     * @author Anh Ngo
     */
    public function __construct(ApartmentInterface $servicerRepository)
    {
        $this->servicerRepository = $servicerRepository;
    }

    /**
     * Display all service
     * @param ApartmentTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(ApartmentTable $dataTable)
    {

        page_title()->setTitle(trans('servicer::apartment.list'));

        return $dataTable->renderTable(['title' => trans('servicer::apartment.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::apartment.create'));

        return $formBuilder->create(ApartmentForm::class)->renderForm();
    }

    /**
     * Insert new Service into database
     *
     * @param ApartmentRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(ApartmentRequest $request)
    {
        $apartment = $this->servicerRepository->createOrUpdate(array_merge($request->input(),[
            'format_type' => APARTMENT_MODULE_SCREEN_NAME,
            'user_id' => Auth::user()->getKey(),
        ]));

        event(new CreatedContentEvent(APARTMENT_MODULE_SCREEN_NAME, $request, $apartment));

        if ($request->input('submit') === 'save') {
            return redirect()->route('apartment.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('apartment.edit', $apartment->id)->with('success_msg', trans('core.base::notices.create_success_message'));
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
        $apartment = $this->servicerRepository->getFirstBy(['id' => $id, 'format_type' => APARTMENT_MODULE_SCREEN_NAME]);
        if (empty($apartment)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::apartment.edit') . ' #' . $id);

        return $formBuilder->create(ApartmentForm::class)->setModel($apartment)->renderForm();
    }

    /**
     * @param $id
     * @param ApartmentRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, ApartmentRequest $request)
    {
        $apartment = $this->servicerRepository->getFirstBy(['id' => $id, 'format_type' => APARTMENT_MODULE_SCREEN_NAME]);
        if (empty($apartment)) {
            abort(404);
        }
        $apartment->fill($request->input());

        $this->servicerRepository->createOrUpdate($apartment);

        event(new UpdatedContentEvent(APARTMENT_MODULE_SCREEN_NAME, $request, $apartment));

        if ($request->input('submit') === 'save') {
            return redirect()->route('apartment.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('apartment.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $apartment = $this->servicerRepository->getFirstBy(['id' => $id, 'format_type' => APARTMENT_MODULE_SCREEN_NAME]);
            if (empty($apartment)) {
                abort(404);
            }
            $this->servicerRepository->delete($apartment);

            event(new DeletedContentEvent(APARTMENT_MODULE_SCREEN_NAME, $request, $apartment));

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
            $apartment = $this->servicerRepository->findById($id);
            $this->servicerRepository->delete($apartment);
            event(new DeletedContentEvent(APARTMENT_MODULE_SCREEN_NAME, $request, $apartment));
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
            $apartment = $this->servicerRepository->findById($id);
            $apartment->status = $request->input('status');
            $this->servicerRepository->createOrUpdate($apartment);

            event(new UpdatedContentEvent(APARTMENT_MODULE_SCREEN_NAME, $request, $apartment));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
