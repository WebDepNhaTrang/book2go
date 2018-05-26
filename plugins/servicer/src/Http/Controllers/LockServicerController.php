<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\LockServicerRequest;
use Botble\Servicer\Repositories\Interfaces\LockServicerInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\LockServicerTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\LockServicerForm;
use Botble\Base\Forms\FormBuilder;
use Auth;
use Botble\Servicer\Services\StorePromotionService;
use Assets;

class LockServicerController extends BaseController
{
    /**
     * @var LockServicerInterface
     */
    protected $lockServicerRepository;

    /**
     * LockServicerController constructor.
     * @param LockServicerInterface $lockServicerRepository
     * @author Anh Ngo
     */
    public function __construct(LockServicerInterface $lockServicerRepository)
    {
        $this->lockServicerRepository = $lockServicerRepository;
    }

    /**
     * Display all service
     * @param LockServicerTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(LockServicerTable $dataTable)
    {

        page_title()->setTitle(trans('servicer::lock.list'));

        return $dataTable->renderTable(['title' => trans('servicer::lock.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::lock.create'));

        Assets::addStylesheetsDirectly('vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css');
        Assets::addJavascriptDirectly(['vendor/core/packages/bootstrap-datetimepicker/moment.min.js', 'vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js', '/vendor/core/plugins/events/js/events.js']);

        return $formBuilder->create(LockServicerForm::class)->renderForm();
    }

    /**
     * Insert new Service into database
     *
     * @param LockServicerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(LockServicerRequest $request)
    {

        $lock = $this->lockServicerRepository->createOrUpdate(array_merge($request->input(),[
            'servicer_id' => $request->input('is_hotel')?0:$request->input('servicer_id'),
            'service_type_id' => $request->input('is_hotel')?$request->input('service_type_id'):0,
            'user_id' => Auth::user()->getKey(),
        ]));

        event(new CreatedContentEvent(LOCK_SERVICER_MODULE_SCREEN_NAME, $request, $lock));


        if ($request->input('submit') === 'save') {
            return redirect()->route('lock-servicer.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('lock-servicer.edit', $lock->id)->with('success_msg', trans('core.base::notices.create_success_message'));
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
        $lock = $this->lockServicerRepository->findById($id);
        if (empty($lock)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::lock.edit') . ' #' . $id);

        Assets::addStylesheetsDirectly('vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css');
        Assets::addJavascriptDirectly(['vendor/core/packages/bootstrap-datetimepicker/moment.min.js', 'vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js', '/vendor/core/plugins/events/js/events.js']);

        return $formBuilder->create(LockServicerForm::class)->setModel($lock)->renderForm();
    }

    /**
     * @param $id
     * @param LockServicerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, LockServicerRequest $request)
    {
        $lock = $this->lockServicerRepository->findById($id);
        if (empty($lock)) {
            abort(404);
        }

        $lock->fill($request->input());

        $lock->servicer_id = $request->input('is_hotel')?0:$request->input('servicer_id');
        $lock->service_type_id = $request->input('is_hotel')?$request->input('service_type_id'):0;
        $this->lockServicerRepository->createOrUpdate($lock);

        event(new UpdatedContentEvent(LOCK_SERVICER_MODULE_SCREEN_NAME, $request, $lock));

        if ($request->input('submit') === 'save') {
            return redirect()->route('lock-servicer.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('lock-servicer.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $lock = $this->lockServicerRepository->getFirstBy(['id' => $id]);
            if (empty($lock)) {
                abort(404);
            }
            $this->lockServicerRepository->delete($lock);

            event(new DeletedContentEvent(LOCK_SERVICER_MODULE_SCREEN_NAME, $request, $lock));

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
            $lock = $this->lockServicerRepository->findById($id);
            $this->lockServicerRepository->delete($lock);
            event(new DeletedContentEvent(LOCK_SERVICER_MODULE_SCREEN_NAME, $request, $lock));
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
            $lock = $this->lockServicerRepository->findById($id);
            $lock->status = $request->input('status');
            $this->lockServicerRepository->createOrUpdate($lock);

            event(new UpdatedContentEvent(LOCK_SERVICER_MODULE_SCREEN_NAME, $request, $lock));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
