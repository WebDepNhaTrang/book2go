<?php

use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Blog\Repositories\Interfaces\CategoryInterface;
use Botble\Page\Repositories\Interfaces\PageInterface;
use Botble\Gallery\Repositories\Interfaces\GalleryInterface;


if (!function_exists('get_rooms_by_category')) {
    /**
     * @param $category_id
     * @param $paginate
     * @param $limit
     * @return mixed
     * @author Anh Ngo
     */
    function get_rooms_by_category($category_id, $paginate = 12, $limit = 0)
    {
        return app(PostInterface::class)->getRoomsByCategory($category_id, $paginate, $limit);
    }
}
if (!function_exists('get_category_by_id_category')) {
    /**
     * @param $id
     * @param $type
     * @param array $select
     * @return mixed
     * @author Anh Ngo
     */
    function get_category_by_id_category($id)
    {
        $category = app(CategoryInterface::class)->findById($id);
        $category = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $category, app(CategoryInterface::class)->getModel(), CATEGORY_MODULE_SCREEN_NAME);
        if($category){
            return $category;
        }
        return [];
    }
}

if (!function_exists('get_page_by_id_page')) {
    /**
     * @param $id
     * @param $type
     * @param array $select
     * @return mixed
     * @author Anh Ngo
     */
    function get_page_by_id_page($id)
    {
        $page = app(PageInterface::class)->findById($id);
        $page = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $page, app(PageInterface::class)->getModel(), PAGE_MODULE_SCREEN_NAME);
        if($page){
            return $page;
        }
        return [];
    }
}

if (!function_exists('get_gallery_by_id_gallery')) {
    /**
     * @param $limit
     * @return mixed
     * @author Anh Ngo
     */
    function get_gallery_by_id_gallery($id)
    {
        $gallery = app(GalleryInterface::class)->findById($id);
        $gallery = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $gallery, app(GalleryInterface::class)->getModel(), GALLERY_MODULE_SCREEN_NAME);
        if($gallery){
            return $gallery;
        }
        return [];
    }
}

if (!function_exists('price_room')) {
    /**
     * @param $limit
     * @return mixed
     * @author Anh Ngo
     */
    function price_room($price)
    {
        return number_format($price, 0, ',', '.') . '₫';
    }
}