<?php

namespace Botble\Servicer\Tables;

use Botble\Base\Tables\TableAbstract;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;

class bookingTable extends TableAbstract
{
    /**
     * Display ajax response.
     *
     * @return \Illuminate\Http\JsonResponse
     * @author Anh Ngo
     * @since 2.1
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('fullname', function ($item) {
                return anchor_link(route('booking.edit', $item->id), $item->fullname);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('servicer_name', function ($item) {
                return $item->servicer->name;
            })
            ->editColumn('checkin', function ($item) {
                return date_from_database($item->checkin, config('core.base.general.date_format.date'));
            })
            ->editColumn('checkout', function ($item) {
                return date_from_database($item->checkout, config('core.base.general.date_format.date'));
            })

            ->editColumn('status', function ($item) {
                return table_status_booking($item->status);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, BOOKING_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('booking.edit', 'booking.delete', $item);
            })
            ->escapeColumns([])
            ->make(true);
    }

    /**
     * Get the query object to be processed by table.
     *
     * @return \Illuminate\Database\Query\Builder|\Illuminate\Database\Eloquent\Builder
     * @author Anh Ngo
     * @since 2.1
     */
    public function query()
    {
        $model = app(BookingInterface::class)->getModel();
        /**
        * @var \Eloquent $model
        */
        $query = $model->with('servicer')->where('status', '=', 1)->select(['bookings.id', 'bookings.fullname', 'bookings.created_at', 'bookings.status', 'bookings.checkin', 'bookings.checkout', 'bookings.servicer_id'])->orderBy('updated_at', 'desc');
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, BOOKING_MODULE_SCREEN_NAME));
    }

    /**
     * @return array
     * @author Anh Ngo
     * @since 2.1
     */
    public function columns()
    {
        return [
            'id' => [
                'name' => 'bookings.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'fullname' => [
                'name' => 'bookings.fullname',
                'title' => 'Fullname',
                'class' => 'text-left searchable',
            ],
            'servicer_name' => [
                'name' => 'bookings.servicer_id',
                'title' => 'Service Name',
                'class' => 'text-left',
            ],
            'checkin' => [
                'name' => 'bookings.checkin',
                'title' => 'Checkin',
                'width' => '100px',
                'class' => 'searchable',
            ],
            'checkout' => [
                'name' => 'bookings.checkout',
                'title' => 'Checkout',
                'width' => '100px',
                'class' => 'searchable',
            ],
            'status' => [
                'name' => 'bookings.status',
                'title' => trans('core.base::tables.status'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * @return array
     * @author Anh Ngo
     * @since 2.1
     */
    public function buttons()
    {
        $buttons = [
            // 'create' => [
            //     'link' => route('booking.create'),
            //     'text' => view('core.base::elements.tables.actions.create')->render(),
            // ],
        ];
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, BOOKING_MODULE_SCREEN_NAME);
    }

    /**
     * @return array
     * @author Anh Ngo
     * @since 2.1
     */
    public function actions()
    {
        return [
            'delete' => [
                'link' => route('booking.delete.many'),
                'text' => view('core.base::elements.tables.actions.delete')->render(),
            ],
            // 'activate' => [
            //     'link' => route('booking.change.status', ['status' => 1]),
            //     'text' => view('core.base::elements.tables.actions.activate')->render(),
            // ],
            // 'deactivate' => [
            //     'link' => route('booking.change.status', ['status' => 0]),
            //     'text' => view('core.base::elements.tables.actions.deactivate')->render(),
            // ]
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     * @author Anh Ngo
     * @since 2.1
     */
    protected function filename()
    {
        return BOOKING_MODULE_SCREEN_NAME;
    }
}
