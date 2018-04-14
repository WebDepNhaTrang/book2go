<?php

namespace Botble\Servicer\Tables;

use Botble\Base\Tables\TableAbstract;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;

class apartmentTable extends TableAbstract
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
            ->editColumn('name', function ($item) {
                return anchor_link(route('apartment.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('core.base.general.date_format.date'));
            })
            ->editColumn('status', function ($item) {
                return table_status($item->status);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, APARTMENT_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('apartment.edit', 'apartment.delete', $item);
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
        $model = app(ServicerInterface::class)->getModel();
        /**
        * @var \Eloquent $model
        */
        $query = $model->select(['servicers.id', 'servicers.name', 'servicers.created_at', 'servicers.status'])
        	->where('servicers.format_type', '=', APARTMENT_MODULE_SCREEN_NAME);
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, APARTMENT_MODULE_SCREEN_NAME));
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
                'name' => 'servicers.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'name' => [
                'name' => 'servicers.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'text-left searchable',
            ],
            'created_at' => [
                'name' => 'servicers.created_at',
                'title' => trans('core.base::tables.created_at'),
                'width' => '100px',
                'class' => 'searchable',
            ],
            'status' => [
                'name' => 'servicers.status',
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
            'create' => [
                'link' => route('apartment.create'),
                'text' => view('core.base::elements.tables.actions.create')->render(),
            ],
        ];
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, APARTMENT_MODULE_SCREEN_NAME);
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
                'link' => route('apartment.delete.many'),
                'text' => view('core.base::elements.tables.actions.delete')->render(),
            ],
            'activate' => [
                'link' => route('apartment.change.status', ['status' => 1]),
                'text' => view('core.base::elements.tables.actions.activate')->render(),
            ],
            'deactivate' => [
                'link' => route('apartment.change.status', ['status' => 0]),
                'text' => view('core.base::elements.tables.actions.deactivate')->render(),
            ]
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
        return APARTMENT_MODULE_SCREEN_NAME;
    }
}
