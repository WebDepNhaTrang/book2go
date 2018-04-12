<?php

namespace Botble\Gallery\Tables;

use Botble\Base\Tables\TableAbstract;
use Botble\Gallery\Repositories\Interfaces\GalleryInterface;

class GalleryTable extends TableAbstract
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
                return anchor_link(route('galleries.edit', $item->id), $item->name);
            })
            ->editColumn('image', function ($item) {
                return '<img src="' . get_object_image($item->image, 'thumb') . '" width="70" alt="thumbnail" />';
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('featured', function ($item) {
                return $item->featured ? "Featured" : null;
            })
            ->editColumn('status', function ($item) {
                return table_status($item->status);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, GALLERY_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('galleries.edit', 'galleries.delete', $item);
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
        $model = app(GalleryInterface::class)->getModel();
        /**
         * @var \Eloquent $model
         */
        $query = $model->select([
            'galleries.id',
            'galleries.name',
            'galleries.order',
            'galleries.created_at',
            'galleries.status',
            'galleries.image',
            'galleries.featured'
        ]);
        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, GALLERY_MODULE_SCREEN_NAME));
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
                'name' => 'galleries.id',
                'title' => trans('core.base::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'image' => [
                'name' => 'galleries.image',
                'title' => 'Image',
            ],
            'name' => [
                'name' => 'galleries.name',
                'title' => trans('core.base::tables.name'),
                'class' => 'text-left searchable',
            ],
            'order' => [
                'name' => 'galleries.order',
                'title' => trans('core.base::tables.order'),
                'width' => '100px',
            ],
            'featured' => [
                'name' => 'galleries.featured',
                'title' => 'Featured',
                'width' => '100px',
            ],
            'status' => [
                'name' => 'galleries.status',
                'title' => trans('core.base::tables.status'),
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
                'link' => route('galleries.create'),
                'text' => view('core.base::elements.tables.actions.create')->render(),
            ],
        ];
        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, GALLERY_MODULE_SCREEN_NAME);
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
                'link' => route('galleries.delete.many'),
                'text' => view('core.base::elements.tables.actions.delete')->render(),
            ],
            'activate' => [
                'link' => route('galleries.change.status', ['status' => 1]),
                'text' => view('core.base::elements.tables.actions.activate')->render(),
            ],
            'deactivate' => [
                'link' => route('galleries.change.status', ['status' => 0]),
                'text' => view('core.base::elements.tables.actions.deactivate')->render(),
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
        return GALLERY_MODULE_SCREEN_NAME;
    }
}
