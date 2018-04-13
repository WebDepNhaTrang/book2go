<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\TourRequest;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\TourTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\TourForm;
use Botble\Base\Forms\FormBuilder;
use Auth;

class TourController extends BaseController
{
    /**
     * @var ApartmentInterface
     */
    protected $servicerRepository;

    /**
     * ServiceController constructor.
     * @param ApartmentInterface $servicerRepository
     * @author Anh Ngo
     */
    public function __construct(ApartmentInterface $servicerRepository)
    {
        $this->servicerRepository = $servicerRepository;
    }

    /**
     * Display all service
     * @param ServiceTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(TourTable $dataTable)
    {

        page_title()->setTitle(trans('servicer::tour.list'));

        return $dataTable->renderTable(['title' => trans('servicer::tour.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::tour.create'));

        return $formBuilder->create(TourForm::class)->renderForm();
    }

    /**
     * Insert new Service into database
     *
     * @param TourRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(TourRequest $request)
    {
        $tour = $this->servicerRepository->createOrUpdate(array_merge($request->input(),[
            'format_type' => TOUR_MODULE_SCREEN_NAME,
            'user_id' => Auth::user()->getKey(),
        ]));

        event(new CreatedContentEvent(TOUR_MODULE_SCREEN_NAME, $request, $tour));

        if ($request->input('submit') === 'save') {
            return redirect()->route('tour.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('tour.edit', $tour->id)->with('success_msg', trans('core.base::notices.create_success_message'));
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
        $tour = $this->servicerRepository->findById($id);
        if (empty($tour)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::service.edit') . ' #' . $id);

        return $formBuilder->create(TourForm::class)->setModel($tour)->renderForm();
    }

    /**
     * @param $id
     * @param TourRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, TourRequest $request)
    {
        $tour = $this->servicerRepository->findById($id);
        if (empty($tour)) {
            abort(404);
        }
        $tour->fill($request->input());

        $this->servicerRepository->createOrUpdate($tour);

        event(new UpdatedContentEvent(TOUR_MODULE_SCREEN_NAME, $request, $tour));

        if ($request->input('submit') === 'save') {
            return redirect()->route('service.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('service.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $tour = $this->servicerRepository->findById($id);
            if (empty($tour)) {
                abort(404);
            }
            $this->servicerRepository->delete($tour);

            event(new DeletedContentEvent(TOUR_MODULE_SCREEN_NAME, $request, $tour));

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
            $tour = $this->servicerRepository->findById($id);
            $this->servicerRepository->delete($tour);
            event(new DeletedContentEvent(TOUR_MODULE_SCREEN_NAME, $request, $tour));
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
            $tour = $this->servicerRepository->findById($id);
            $tour->status = $request->input('status');
            $this->servicerRepository->createOrUpdate($tour);

            event(new UpdatedContentEvent(TOUR_MODULE_SCREEN_NAME, $request, $tour));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
