<?php

namespace Botble\Servicer\Providers;

use Botble\Base\Supports\Helper;
use Eloquent;
use Illuminate\Support\ServiceProvider;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;
use Menu;
use Botble\Dashboard\Repositories\Interfaces\DashboardWidgetInterface;
use Botble\Dashboard\Repositories\Interfaces\DashboardWidgetSettingInterface;
use Auth;
use SeoHelper;
use Theme;

class HookServiceProvider extends ServiceProvider
{

    /**
     * Boot the service provider.
     * @author Anh Ngo
     */
    public function boot()
    {
        add_filter(BASE_FILTER_PUBLIC_SINGLE_DATA, [$this, 'handleSingleView'], 4, 1);
    }

    /**
     * @param $slug
     * @return array|Eloquent
     * @author Anh Ngo
     */
    public function handleSingleView($slug)
    {
        if ($slug instanceof Eloquent) {
            $data = [];
            switch ($slug->reference) {

                case TOUR_MODULE_SCREEN_NAME:
                    $post = app(ServicerInterface::class)->findById($slug->reference_id);
                    $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(ServicerInterface::class)->getModel(), TOUR_MODULE_SCREEN_NAME);
                    if (!empty($post)) {
                        Helper::handleViewCount($post, 'viewed_post');

                        SeoHelper::setTitle($post->name)->setDescription($post->description);

                        admin_bar()->registerLink(trans('plugins.blog::posts.edit_this_post'), route('posts.edit', $post->id));

                        Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                        do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, TOUR_MODULE_SCREEN_NAME, $post);

                        $data = [
                            'template' => config('plugins.servicer.servicer.tour-template'),
                            'view' => config('plugins.servicer.servicer.tour-view'),
                            'data' => compact('post'),
                        ];
                    }
                    break;
                case APARTMENT_MODULE_SCREEN_NAME:
                    $post = app(ServicerInterface::class)->findById($slug->reference_id);
                    $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(ServicerInterface::class)->getModel(), APARTMENT_MODULE_SCREEN_NAME);
                    if (!empty($post)) {
                        Helper::handleViewCount($post, 'viewed_post');

                        SeoHelper::setTitle($post->name)->setDescription($post->description);

                        admin_bar()->registerLink(trans('plugins.blog::posts.edit_this_post'), route('posts.edit', $post->id));

                        Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                        do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, APARTMENT_MODULE_SCREEN_NAME, $post);

                        $data = [
                            'template' => config('plugins.servicer.servicer.apartment-template'),
                            'view' => config('plugins.servicer.servicer.apartment-view'),
                            'data' => compact('post'),
                        ];
                    }
                    break;
                case ROOM_TYPE_MODULE_SCREEN_NAME:
                     $post = app(ServicerInterface::class)->findById($slug->reference_id);
                     $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(ServicerInterface::class)->getModel(), ROOM_TYPE_MODULE_SCREEN_NAME);
                     if (!empty($post)) {
                         Helper::handleViewCount($post, 'viewed_post');

                         SeoHelper::setTitle($post->name)->setDescription($post->description);

                         admin_bar()->registerLink(trans('plugins.blog::posts.edit_this_post'), route('posts.edit', $post->id));

                         Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                         do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, ROOM_TYPE_MODULE_SCREEN_NAME, $post);

                         $data = [
                             'template' => config('plugins.servicer.servicer.room_type-template'),
                             'view' => config('plugins.servicer.servicer.room_type-view'),
                             'data' => compact('post'),
                         ];
                     }
                     break;
                case HOTEL_MODULE_SCREEN_NAME:
                     $post = app(ServicerInterface::class)->findById($slug->reference_id);
                     $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(ServiceTypeInterface::class)->getModel(), HOTEL_MODULE_SCREEN_NAME);
                     if (!empty($post)) {
                         Helper::handleViewCount($post, 'viewed_post');

                         SeoHelper::setTitle($post->name)->setDescription($post->description);

                         admin_bar()->registerLink(trans('plugins.blog::posts.edit_this_post'), route('posts.edit', $post->id));

                         Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                         do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, HOTEL_MODULE_SCREEN_NAME, $post);

                         $data = [
                             'template' => config('plugins.servicer.servicer.hotel-template'),
                             'view' => config('plugins.servicer.servicer.hotel-view'),
                             'data' => compact('post'),
                         ];
                     }
                     break;
            }
            if (!empty($data)) {
                return $data;
            }
        }

        return $slug;
    }
}
