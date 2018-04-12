<?php

namespace Botble\Contact\Tables;

use Botble\Base\Tables\TableAbstract;
use Botble\Contact\Repositories\Interfaces\ContactInterface;

class ContactTable extends TableAbstract
{
    /**
     * Display ajax response.
     *
     * @return \Illuminate\Http\JsonResponse
     * @author Sang Nguyen
     * @since 2.1
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function ($item) {
                return anchor_link(route('contacts.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('core.base.general.date_format.date'));
            })
            ->editColumn('is_read', function ($item) {
                return table_status($item->is_read, [
                    1 => [
                        'class' => 'label-success',
                        'text' => trans('plugins.contact::contact.read'),
                    ],
                    0 => [
                        'class' => 'label-warning',
                        'text' => trans('plugins.contact::contact.unread'),
                    ],
                ]);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, CONTACT_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('contacts.edit', 'contacts.delete', $item);
            })
            ->escapeColumns([])
            ->make(true);
    }

    /**
     * Get the query object to be processed by datatables.
     *
     * @return \Illuminate\Database\Query\Builder|\Illuminate\Database\Eloquent\Builder
     * @author Sang Nguyen
     * @since 2.1
     */
    public function query()
    {
        $model = app(ContactInterface::class)->getModel();
        /**
         * @var \Eloquent $model
         */
        $query = $model->select(['contacts.id', 'contacts.name', 'contacts.phone', 'contacts.email', 'contacts.created_at', 'contacts.is_read']);
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, CONTACT_MODULE_SCREEN_NAME));
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function columns()
    {
        return [
            'id' => [
                'name' => 'contacts.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'name' => [
                'name' => 'contacts.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'text-left searchable',
            ],
            'phone' => [
                'name' => 'contacts.phone',
                'title' => trans('plugins.contact::contact.tables.phone'),
                'class' => 'searchable',
            ],
            'email' => [
                'name' => 'contacts.email',
                'title' => trans('plugins.contact::contact.tables.email'),
                'class' => 'searchable',
            ],
            'created_at' => [
                'name' => 'contacts.created_at',
                'title' => trans('core.base::tables.created_at'),
                'width' => '100px',
                'class' => 'searchable',
            ],
            'is_read' => [
                'name' => 'contacts.is_read',
                'title' => trans('plugins.contact::contact.form.is_read'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function buttons()
    {
        $buttons = [];
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, CONTACT_MODULE_SCREEN_NAME);
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     * @throws \Throwable
     */
    public function actions()
    {
        return [
            'delete' => [
                'link' => route('contacts.delete.many'),
                'text' => view('core.base::elements.tables.actions.delete')->render(),
            ],
            'activate' => [
                'link' => route('contacts.change.status', ['status' => 1]),
                'text' => view('plugins.contact::partials.actions.mark-read')->render(),
            ],
            'deactivate' => [
                'link' => route('contacts.change.status', ['status' => 0]),
                'text' => view('plugins.contact::partials.actions.mark-unread')->render(),
            ]
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     * @author Sang Nguyen
     * @since 2.1
     */
    protected function filename()
    {
        return CONTACT_MODULE_SCREEN_NAME;
    }
}
