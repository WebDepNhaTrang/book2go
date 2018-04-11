<?php

namespace Botble\BotonAddon\Providers;

use Botble\BotonAddon\Models\BotonAddon;
use Illuminate\Support\ServiceProvider;
use Botble\BotonAddon\Repositories\Caches\BotonAddonCacheDecorator;
use Botble\BotonAddon\Repositories\Eloquent\BotonAddonRepository;
use Botble\BotonAddon\Repositories\Interfaces\BotonAddonInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;

class BotonAddonServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author Sang Nguyen
     */
    public function register()
    {
        // if (setting('enable_cache', false)) {
        //     $this->app->singleton(BotonAddonInterface::class, function () {
        //         return new BotonAddonCacheDecorator(new BotonAddonRepository(new BotonAddon()), new Cache($this->app['cache'], BotonAddonRepository::class));
        //     });
        // } else {
        //     $this->app->singleton(BotonAddonInterface::class, function () {
        //         return new BotonAddonRepository(new BotonAddon());
        //     });
        // }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'botonAddon');
        $this->loadRoutesFrom(__DIR__ . '/../../routes/web.php');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'botonAddon');
        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/botonAddon');

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/botonAddon')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/botonAddon')], 'lang');
        }

        // Event::listen(SessionStarted::class, function () {
        //     dashboard_menu()->registerItem([
        //         'id' => 'cms-plugins-botonAddon',
        //         'priority' => 5,
        //         'parent_id' => null,
        //         'name' => 'BotonAddon',
        //         'icon' => 'fa fa-list',
        //         'url' => route('botonAddon.list'),
        //         'permissions' => ['botonAddon.list'],
        //     ]);
        // });
    }
}
