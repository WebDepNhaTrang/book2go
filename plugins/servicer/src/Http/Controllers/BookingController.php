<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\BookingRequest;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\BookingTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\BookingForm;
use Botble\Base\Forms\FormBuilder;
use Auth;

class BookingController extends BaseController
{
    /**
     * @var BookingInterface
     */
    protected $bookingRepository;

    /**
     * BookingController constructor.
     * @param BookingInterface $bookingRepository
     * @author Anh Ngo
     */
    public function __construct(BookingInterface $bookingRepository)
    {
        $this->bookingRepository = $bookingRepository;
    }

    /**
     * Display all service
     * @param BookingTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(BookingTable $dataTable)
    {
        page_title()->setTitle(trans('servicer::booking.list'));

        return $dataTable->renderTable(['title' => trans('servicer::booking.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::booking.create'));

        return $formBuilder->create(BookingForm::class)->renderForm();
    }

    /**
     * Insert new Service into database
     *
     * @param BookingRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(BookingRequest $request)
    {
        abort(404);
        $booking = $this->bookingRepository->createOrUpdate(array_merge($request->input(),[
            'user_id' => Auth::user()->getKey(),
        ]));

        event(new CreatedContentEvent(BOOKING_MODULE_SCREEN_NAME, $request, $booking));

        if ($request->input('submit') === 'save') {
            return redirect()->route('booking.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('booking.edit', $booking->id)->with('success_msg', trans('core.base::notices.create_success_message'));
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
        $booking = $this->bookingRepository->findById($id);
        if (empty($booking)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::booking.edit') . ' #' . $id);

        return view('servicer::booking.view', compact('booking'));
    }

    /**
     * @param $id
     * @param BookingRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, BookingRequest $request)
    {
        $booking = $this->bookingRepository->findById($id);
        if (empty($booking)) {
            abort(404);
        }
        $booking->fill($request->input());

        $this->bookingRepository->createOrUpdate($booking);

        event(new UpdatedContentEvent(BOOKING_MODULE_SCREEN_NAME, $request, $booking));

        if ($request->input('submit') === 'save') {
            return redirect()->route('booking.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('booking.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $booking = $this->bookingRepository->findById($id);
            if (empty($booking)) {
                abort(404);
            }
            $this->bookingRepository->delete($booking);

            event(new DeletedContentEvent(BOOKING_MODULE_SCREEN_NAME, $request, $booking));

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
            $booking = $this->bookingRepository->findById($id);
            $this->bookingRepository->delete($booking);
            event(new DeletedContentEvent(BOOKING_MODULE_SCREEN_NAME, $request, $booking));
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
            $booking = $this->bookingRepository->findById($id);
            $booking->status = $request->input('status');
            $this->bookingRepository->createOrUpdate($booking);

            event(new UpdatedContentEvent(BOOKING_MODULE_SCREEN_NAME, $request, $booking));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
