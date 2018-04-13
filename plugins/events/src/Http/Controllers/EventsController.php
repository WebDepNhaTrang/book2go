<?php

namespace Botble\Events\Http\Controllers;

use Botble\Events\Http\Requests\EventsRequest;
use Botble\Events\Repositories\Interfaces\EventsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Events\Tables\EventsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Events\Forms\EventsForm;
use Botble\Base\Forms\FormBuilder;
use Assets;

class EventsController extends BaseController
{
    /**
     * @var EventsInterface
     */
    protected $eventsRepository;

    /**
     * EventsController constructor.
     * @param EventsInterface $eventsRepository
     * @author Sang Nguyen
     */
    public function __construct(EventsInterface $eventsRepository)
    {
        $this->eventsRepository = $eventsRepository;
    }

    /**
     * Display all events
     * @param EventsTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(EventsTable $dataTable)
    {

        page_title()->setTitle(trans('events::events.list'));

        return $dataTable->renderTable(['title' => trans('events::events.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('events::events.create'));
        Assets::addStylesheetsDirectly('vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css');
        Assets::addJavascriptDirectly(['vendor/core/packages/bootstrap-datetimepicker/moment.min.js', 'vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js', '/vendor/core/plugins/events/js/events.js']);
        return $formBuilder->create(EventsForm::class)->renderForm();
    }

    /**
     * Insert new Events into database
     *
     * @param EventsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(EventsRequest $request)
    {
        $events = $this->eventsRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(EVENTS_MODULE_SCREEN_NAME, $request, $events));

        if ($request->input('submit') === 'save') {
            return redirect()->route('events.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('events.edit', $events->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        $events = $this->eventsRepository->findById($id);
        if (empty($events)) {
            abort(404);
        }
        Assets::addStylesheetsDirectly('vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css');
        Assets::addJavascriptDirectly(['vendor/core/packages/bootstrap-datetimepicker/moment.min.js', 'vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js', '/vendor/core/plugins/events/js/events.js']);
        page_title()->setTitle(trans('events::events.edit') . ' #' . $id);

        return $formBuilder->create(EventsForm::class)->setModel($events)->renderForm();
    }

    /**
     * @param $id
     * @param EventsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, EventsRequest $request)
    {
        $events = $this->eventsRepository->findById($id);
        if (empty($events)) {
            abort(404);
        }
        $events->fill($request->input());

        $this->eventsRepository->createOrUpdate($events);

        event(new UpdatedContentEvent(EVENTS_MODULE_SCREEN_NAME, $request, $events));

        if ($request->input('submit') === 'save') {
            return redirect()->route('events.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('events.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
        }
    }

    /**
     * @param $id
     * @param Request $request
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function getDelete(Request $request, $id, AjaxResponse $response)
    {
        try {
            $events = $this->eventsRepository->findById($id);
            if (empty($events)) {
                abort(404);
            }
            $this->eventsRepository->delete($events);

            event(new DeletedContentEvent(EVENTS_MODULE_SCREEN_NAME, $request, $events));

            return $response->setMessage(trans('core.base::notices.delete_success_message'));
        } catch (Exception $e) {
            return $response->setError(true)->setMessage(trans('core.base::notices.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function postDeleteMany(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $events = $this->eventsRepository->findById($id);
            $this->eventsRepository->delete($events);
            event(new DeletedContentEvent(EVENTS_MODULE_SCREEN_NAME, $request, $events));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function postChangeStatus(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $events = $this->eventsRepository->findById($id);
            $events->status = $request->input('status');
            $this->eventsRepository->createOrUpdate($events);

            event(new UpdatedContentEvent(EVENTS_MODULE_SCREEN_NAME, $request, $events));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
