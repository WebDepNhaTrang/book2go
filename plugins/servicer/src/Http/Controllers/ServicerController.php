<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\ServicerRequest;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\ServicerTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\ServicerForm;
use Botble\Base\Forms\FormBuilder;

class ServicerController extends BaseController
{
    /**
     * @var ServicerInterface
     */
    protected $servicerRepository;

    /**
     * ServicerController constructor.
     * @param ServicerInterface $servicerRepository
     * @author Anh Ngo
     */
    public function __construct(ServicerInterface $servicerRepository)
    {
        $this->servicerRepository = $servicerRepository;
    }

    /**
     * Display all servicer
     * @param ServicerTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(ServicerTable $dataTable)
    {

        page_title()->setTitle(trans('servicer::servicer.list'));

        return $dataTable->renderTable(['title' => trans('servicer::servicer.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::servicer.create'));

        return $formBuilder->create(ServicerForm::class)->renderForm();
    }

    /**
     * Insert new Servicer into database
     *
     * @param ServicerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(ServicerRequest $request)
    {
        $servicer = $this->servicerRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(SERVICER_MODULE_SCREEN_NAME, $request, $servicer));

        if ($request->input('submit') === 'save') {
            return redirect()->route('servicer.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('servicer.edit', $servicer->id)->with('success_msg', trans('core.base::notices.create_success_message'));
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
        $servicer = $this->servicerRepository->findById($id);
        if (empty($servicer)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::servicer.edit') . ' #' . $id);

        return $formBuilder->create(ServicerForm::class)->setModel($servicer)->renderForm();
    }

    /**
     * @param $id
     * @param ServicerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, ServicerRequest $request)
    {
        $servicer = $this->servicerRepository->findById($id);
        if (empty($servicer)) {
            abort(404);
        }
        $servicer->fill($request->input());

        $this->servicerRepository->createOrUpdate($servicer);

        event(new UpdatedContentEvent(SERVICER_MODULE_SCREEN_NAME, $request, $servicer));

        if ($request->input('submit') === 'save') {
            return redirect()->route('servicer.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('servicer.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $servicer = $this->servicerRepository->findById($id);
            if (empty($servicer)) {
                abort(404);
            }
            $this->servicerRepository->delete($servicer);

            event(new DeletedContentEvent(SERVICER_MODULE_SCREEN_NAME, $request, $servicer));

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
            $servicer = $this->servicerRepository->findById($id);
            $this->servicerRepository->delete($servicer);
            event(new DeletedContentEvent(SERVICER_MODULE_SCREEN_NAME, $request, $servicer));
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
            $servicer = $this->servicerRepository->findById($id);
            $servicer->status = $request->input('status');
            $this->servicerRepository->createOrUpdate($servicer);

            event(new UpdatedContentEvent(SERVICER_MODULE_SCREEN_NAME, $request, $servicer));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
