<?php

namespace Botble\Blog\Tables;

use Botble\Base\Tables\TableAbstract;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Illuminate\Support\Facades\Input;
use Route;

class PostTable extends TableAbstract
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
        $template = get_post_templates();
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function ($item) {
                return anchor_link(route('posts.edit', $item->id), $item->name);
            })
            ->editColumn('image', function ($item) {
                return '<a class="text-left" href="'.route('posts.edit', $item->id).'"><img src="' . get_object_image($item->image, 'thumb') . '" width="70" alt="' . __('thumbnail') . '" /></a>';
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('categories', function ($item) {
                if($item->categories->first()){
                    return anchor_link(route('categories.edit', $item->categories->first()->id), $item->categories->first()->name);
                }
                return null;
            })

            ->editColumn('status', function ($item) {
                return table_status($item->status);
            })
            ->editColumn('template', function ($item) use ($template) {
                if(isset($template[$item->template])){
                    return $template[$item->template];
                }
                return $item->template;
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, POST_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('posts.edit', 'posts.delete', $item);
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
        $model = app(PostInterface::class)->getModel();
        /**
         * @var \Eloquent $model
         */
        $query = $model->with('categories')->select([
            'posts.id', 
            'posts.name', 
            'posts.image', 
            'posts.created_at', 
            'posts.status',
            'posts.template'
        ]);
        
        
        if(Route::getCurrentRoute()->hasParameter('category_id')){
            $category_id = Route::getCurrentRoute()->parameter('category_id');
            $query = $query->whereHas('categories', function ($q) use ($category_id) {
                        $q->where('post_category.category_id', '=', $category_id);
                    });
        }

        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, POST_MODULE_SCREEN_NAME));
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
                'name' => 'posts.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'image' => [
                'name' => 'posts.image',
                'title' => 'Image',
            ],
            'name' => [
                'name' => 'posts.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'text-left searchable',
                'width' => '100px',
                'filter' => [
                    'enable' => true,
                    'type' => 'text',
                    'placeholder' => 'Search',
                ],
            ],
            'categories' => [
                'name' => 'posts.created_at',
                'title' => 'Categories',
                'class' => '',
            ],

            'status' => [
                'name' => 'posts.status',
                'title' => trans('core.base::tables.status'),
                'class' => 'column-select-search',
                'filter' => [
                    'enable' => true,
                    'type' => 'select',
                    'data' => [
                        1 => 'Activated',
                        0 => 'Deactivated',
                    ],
                    'placeholder' => 'Type to filter',
                ],
            ],
            'template' => [
                'name' => 'posts.template',
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
                'link' => route('posts.create'),
                'text' => view('core.base::elements.tables.actions.create')->render(),
            ],
        ];

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, POST_MODULE_SCREEN_NAME);
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
                'link' => route('posts.delete.many'),
                'text' => view('core.base::elements.tables.actions.delete')->render(),
            ],
            'activate' => [
                'link' => route('posts.change.status', ['status' => 1]),
                'text' => view('core.base::elements.tables.actions.activate')->render(),
            ],
            'deactivate' => [
                'link' => route('posts.change.status', ['status' => 0]),
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
        return POST_MODULE_SCREEN_NAME;
    }
}
