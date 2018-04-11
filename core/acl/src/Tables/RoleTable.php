<?php

namespace Botble\ACL\Tables;

use Botble\ACL\Models\User;
use Botble\ACL\Repositories\Interfaces\RoleInterface;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\Base\Tables\TableAbstract;

class RoleTable extends TableAbstract
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
                return anchor_link(route('roles.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('core.base.general.date_format.date'));
            })
            ->editColumn('created_by', function ($item) {
                /**
                 * @var User $user
                 */
                $user = app(UserInterface::class)->findById($item->created_by);
                if (!empty($user)) {
                    return $user->getFullName();
                }

                return null;
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, ROLE_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('roles.edit', 'roles.delete', $item);
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
        $model = app(RoleInterface::class)->getModel();
        /**
         * @var \Eloquent $model
         */
        $query = $model->select([
            'roles.id',
            'roles.name',
            'roles.description',
            'roles.created_at',
            'roles.created_by',
        ]);
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, ROLE_MODULE_SCREEN_NAME));
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
                'name' => 'roles.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
                'searchable' => false,
                'class' => 'text-center',
            ],
            'name' => [
                'name' => 'roles.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'searchable',
            ],
            'description' => [
                'name' => 'roles.description',
                'title' => trans('core.base::tables.description'),
                'class' => 'searchable',
            ],
            'created_at' => [
                'name' => 'roles.created_at',
                'title' => trans('core.base::tables.created_at'),
                'width' => '100px',
                'class' => 'searchable',
            ],
            'created_by' => [
                'name' => 'roles.created_by',
                'title' => trans('core.acl::permissions.created_by'),
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
        $buttons = [
            'create' => [
                'link' => route('roles.create'),
                'text' => view('core.base::elements.tables.actions.create')->render(),
            ],
        ];
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, ROLE_MODULE_SCREEN_NAME);
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function actions()
    {
        return [
            'delete' => [
                'link' => route('roles.delete.many'),
                'text' => view('core.base::elements.tables.actions.delete')->render(),
            ],
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
        return ROLE_MODULE_SCREEN_NAME;
    }
}
