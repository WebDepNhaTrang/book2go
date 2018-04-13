<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\RoomTypeRequest;
use Botble\Servicer\Repositories\Interfaces\RoomTypeInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\RoomTypeTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\RoomTypeForm;
use Botble\Base\Forms\FormBuilder;
use Auth;

class RoomTypeController extends BaseController
{
    /**
     * @var RoomTypeInterface
     */
    protected $servicerRepository;

    /**
     * ServiceController constructor.
     * @param RoomTypeInterface $servicerRepository
     * @author Anh Ngo
     */
    public function __construct(RoomTypeInterface $servicerRepository)
    {
        $this->servicerRepository = $servicerRepository;
    }

    /**
     * Display all service
     * @param ServiceTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(RoomTypeTable $dataTable)
    {

        page_title()->setTitle(trans('servicer::room_type.list'));

        return $dataTable->renderTable(['title' => trans('servicer::room_type.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::room_type.create'));

        return $formBuilder->create(RoomTypeForm::class)->renderForm();
    }

    /**
     * Insert new Service into database
     *
     * @param RoomTypeRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(RoomTypeRequest $request)
    {
        $room_type = $this->servicerRepository->createOrUpdate(array_merge($request->input(),[
            'format_type' => ROOM_TYPE_MODULE_SCREEN_NAME,
            'user_id' => Auth::user()->getKey(),
        ]));

        event(new CreatedContentEvent(ROOM_TYPE_MODULE_SCREEN_NAME, $request, $room_type));

        if ($request->input('submit') === 'save') {
            return redirect()->route('room_type.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('room_type.edit', $room_type->id)->with('success_msg', trans('core.base::notices.create_success_message'));
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
        $room_type = $this->servicerRepository->findById($id);
        if (empty($room_type)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::room_type.edit') . ' #' . $id);

        return $formBuilder->create(RoomTypeForm::class)->setModel($room_type)->renderForm();
    }

    /**
     * @param $id
     * @param RoomTypeRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, RoomTypeRequest $request)
    {
        $room_type = $this->servicerRepository->findById($id);
        if (empty($room_type)) {
            abort(404);
        }
        $room_type->fill($request->input());

        $this->servicerRepository->createOrUpdate($room_type);

        event(new UpdatedContentEvent(ROOM_TYPE_MODULE_SCREEN_NAME, $request, $room_type));

        if ($request->input('submit') === 'save') {
            return redirect()->route('room_type.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('room_type.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $room_type = $this->servicerRepository->findById($id);
            if (empty($room_type)) {
                abort(404);
            }
            $this->servicerRepository->delete($room_type);

            event(new DeletedContentEvent(ROOM_TYPE_MODULE_SCREEN_NAME, $request, $room_type));

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
            $room_type = $this->servicerRepository->findById($id);
            $this->servicerRepository->delete($room_type);
            event(new DeletedContentEvent(ROOM_TYPE_MODULE_SCREEN_NAME, $request, $room_type));
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
            $room_type = $this->servicerRepository->findById($id);
            $room_type->status = $request->input('status');
            $this->servicerRepository->createOrUpdate($room_type);

            event(new UpdatedContentEvent(ROOM_TYPE_MODULE_SCREEN_NAME, $request, $room_type));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
