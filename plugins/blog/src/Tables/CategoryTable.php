<?php

namespace Botble\Blog\Tables;

use Botble\Base\Tables\TableAbstract;
use Botble\Blog\Repositories\Interfaces\CategoryInterface;

class CategoryTable extends TableAbstract
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
        $template = get_category_templates();
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('image', function ($item) {
                return '<a class="text-left" href="'.route('categories.edit', $item->id).'"><img src="' . get_object_image($item->image, 'thumb') . '" width="70" alt="' . __('thumbnail') . '" /></a>';
            })
            ->editColumn('name', function ($item) {
                return anchor_link(route('categories.edit', $item->id), $item->name);
            })
            ->editColumn('posts_by_category', function ($item) {
                return anchor_link(route('posts.list', $item->id), 'View');
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })

            ->editColumn('status', function ($item) {
                return table_status($item->status);
            })
            ->editColumn('template', function ($item) use ($template) {
                if(isset($template[$item->template])){
                    return $template[$item->template];
                }
                return $item->template;
            })
            ->removeColumn('is_default');

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, CATEGORY_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return view('plugins.blog::categories.partials.actions', compact('item'))->render();
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
        $model = app(CategoryInterface::class)->getModel();
        /**
         * @var \Eloquent $model
         */
        $query = $model->orderBy('categories.parent_id', 'asc')
            ->orderBy('categories.order', 'asc')
            ->select([
                'categories.id', 
                'categories.name', 
                'categories.status', 
                'categories.order', 
                'categories.created_at', 
                'categories.is_default', 
                'categories.parent_id', 
                'categories.image',
                'categories.template'
            ]);
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, CATEGORY_MODULE_SCREEN_NAME));
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
                'name' => 'categories.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'image' => [
                'name' => 'categories.image',
                'title' => 'Image',
            ],
            'name' => [
                'name' => 'categories.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'searchable',
            ],
            'posts_by_category' => [
                'name' => 'categories.name',
                'title' => 'Posts <br/> by Category',
                'class' => '',
            ],

            'status' => [
                'name' => 'categories.status',
                'title' => trans('core.base::tables.status'),
            ],
            'template' => [
                'name' => 'categories.template',
                'title' => 'Template',
                'width' => '100px',
                'class' => '',
            ],
        ];
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     * @throws \Throwable
     */
    public function buttons()
    {
        $buttons = [
            'create' => [
                'link' => route('categories.create'),
                'text' => view('core.base::elements.tables.actions.create')->render(),
            ],
        ];
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, CATEGORY_MODULE_SCREEN_NAME);
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
                'link' => route('categories.delete.many'),
                'text' => view('core.base::elements.tables.actions.delete')->render(),
            ],
            'activate' => [
                'link' => route('categories.change.status', ['status' => 1]),
                'text' => view('core.base::elements.tables.actions.activate')->render(),
            ],
            'deactivate' => [
                'link' => route('categories.change.status', ['status' => 0]),
                'text' => view('core.base::elements.tables.actions.deactivate')->render(),
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
        return CATEGORY_MODULE_SCREEN_NAME;
    }
}
