<?php

namespace Botble\Servicer\Providers;

use Botble\Servicer\Models\Servicer;
use Illuminate\Support\ServiceProvider;
use Botble\Servicer\Repositories\Caches\ServicerCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\ServicerRepository;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Servicer\Models\ServiceType;
use Botble\Servicer\Repositories\Caches\ServiceTypeCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\ServiceTypeRepository;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;

use Botble\Servicer\Models\Tour;
use Botble\Servicer\Repositories\Caches\TourCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\TourRepository;
use Botble\Servicer\Repositories\Interfaces\TourInterface;

use Botble\Servicer\Models\RoomType;
use Botble\Servicer\Repositories\Caches\RoomTypeCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\RoomTypeRepository;
use Botble\Servicer\Repositories\Interfaces\RoomTypeInterface;

use Botble\Servicer\Models\Apartment;
use Botble\Servicer\Repositories\Caches\ApartmentCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\ApartmentRepository;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;

use Botble\Servicer\Models\Promotion;
use Botble\Servicer\Repositories\Caches\PromotionCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\PromotionRepository;
use Botble\Servicer\Repositories\Interfaces\PromotionInterface;

use Botble\Servicer\Models\Booking;
use Botble\Servicer\Repositories\Caches\BookingCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\BookingRepository;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;

use Botble\Servicer\Models\LockServicer;
use Botble\Servicer\Repositories\Caches\LockServicerCacheDecorator;
use Botble\Servicer\Repositories\Eloquent\LockServicerRepository;
use Botble\Servicer\Repositories\Interfaces\LockServicerInterface;

class ServicerServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author Anh Ngo
     */
    public function register()
    {
        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/servicer')
            ->loadAndPublishConfigurations(['servicer']);

        $this->app->singleton(ServicerInterface::class, function () {
            return new ServicerRepository(new Servicer());
        });
        $this->app->singleton(ServiceTypeInterface::class, function () {
            return new ServiceTypeRepository(new ServiceType());
        });
        $this->app->singleton(TourInterface::class, function () {
            return new TourRepository(new Tour());
        });
        $this->app->singleton(RoomTypeInterface::class, function () {
            return new RoomTypeRepository(new RoomType());
        });
        $this->app->singleton(ApartmentInterface::class, function () {
            return new ApartmentRepository(new Apartment());
        });
        $this->app->singleton(PromotionInterface::class, function () {
            return new PromotionRepository(new Promotion());
        });

        $this->app->singleton(BookingInterface::class, function () {
            return new BookingRepository(new Booking());
        });

        $this->app->singleton(LockServicerInterface::class, function () {
            return new LockServicerRepository(new LockServicer());
        });
        
        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Anh Ngo
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'servicer');
        $this->loadRoutesFrom(__DIR__ . '/../../routes/web.php');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'servicer');
        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/servicer')
            ->loadAndPublishConfigurations(['permissions']);

        $this->app->register(HookServiceProvider::class);

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/servicer')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/servicer')], 'lang');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-servicer',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'Servicers',
                'icon' => 'fa fa-list',
                'url' => route('servicer.list'),
                'permissions' => ['servicer.list'],
            ])
                ->registerItem([
                    'id' => 'cms-plugins-servicer-room_type',
                    'priority' => 1,
                    'parent_id' => 'cms-plugins-servicer',
                    'name' => trans('servicer::room_type.name'),
                    'icon' => null,
                    'url' => route('room_type.list'),
                    'permissions' => ['room_type.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-servicer-hotel',
                    'priority' => 2,
                    'parent_id' => 'cms-plugins-servicer',
                    'name' => trans('servicer::hotel.name'),
                    'icon' => null,
                    'url' => route('hotel.list'),
                    'permissions' => ['hotel.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-servicer-tour',
                    'priority' => 3,
                    'parent_id' => 'cms-plugins-servicer',
                    'name' => trans('servicer::tour.name'),
                    'icon' => null,
                    'url' => route('tour.list'),
                    'permissions' => ['tour.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-servicer-apartment',
                    'priority' => 3,
                    'parent_id' => 'cms-plugins-servicer',
                    'name' => trans('servicer::apartment.name'),
                    'icon' => null,
                    'url' => route('apartment.list'),
                    'permissions' => ['apartment.list'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-servicer-promotion',
                    'priority' => 4,
                    'parent_id' => 'cms-plugins-servicer',
                    'name' => trans('servicer::promotion.name'),
                    'icon' => null,
                    'url' => route('promotion.list'),
                    'permissions' => [],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-servicer-booking',
                    'priority' => 5,
                    'parent_id' => 'cms-plugins-servicer',
                    'name' => trans('servicer::booking.name'),
                    'icon' => null,
                    'url' => route('booking.list'),
                    'permissions' => [],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-lock-servicer',
                    'priority' => 5,
                    'parent_id' => 'cms-plugins-servicer',
                    'name' => trans('servicer::lock.name'),
                    'icon' => null,
                    'url' => route('lock-servicer.list'),
                    'permissions' => [],
                ]);
        });

        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            config(['plugins.language.general.supported' => array_merge(config('plugins.language.general.supported'), [ROOM_TYPE_MODULE_SCREEN_NAME, HOTEL_MODULE_SCREEN_NAME, TOUR_MODULE_SCREEN_NAME, APARTMENT_MODULE_SCREEN_NAME])]);
        }

        $this->app->booted(function () {
            config(['core.slug.general.supported' => array_merge(config('core.slug.general.supported'), [ HOTEL_MODULE_SCREEN_NAME, TOUR_MODULE_SCREEN_NAME, APARTMENT_MODULE_SCREEN_NAME])]);
            config(['core.seo-helper.general.supported' => array_merge(config('core.seo-helper.general.supported'), [ROOM_TYPE_MODULE_SCREEN_NAME, HOTEL_MODULE_SCREEN_NAME, TOUR_MODULE_SCREEN_NAME, APARTMENT_MODULE_SCREEN_NAME])]);
        });
    }
}
