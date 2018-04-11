<?php

namespace Botble\Events\Providers;

use Botble\Events\Models\Events;
use Illuminate\Support\ServiceProvider;
use Botble\Events\Repositories\Caches\EventsCacheDecorator;
use Botble\Events\Repositories\Eloquent\EventsRepository;
use Botble\Events\Repositories\Interfaces\EventsInterface;
use Botble\Support\Services\Cache\Cache;
use Botble\Base\Supports\Helper;
use Botble\Base\Events\SessionStarted;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;

class EventsServiceProvider extends ServiceProvider
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
        if (setting('enable_cache', false)) {
            $this->app->singleton(EventsInterface::class, function () {
                return new EventsCacheDecorator(new EventsRepository(new Events()), new Cache($this->app['cache'], EventsRepository::class));
            });
        } else {
            $this->app->singleton(EventsInterface::class, function () {
                return new EventsRepository(new Events());
            });
        }

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->loadTranslationsFrom(__DIR__ . '/../../resources/lang', 'events');
        $this->loadRoutesFrom(__DIR__ . '/../../routes/web.php');
        $this->loadViewsFrom(__DIR__ . '/../../resources/views', 'events');
        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/events')
            ->loadAndPublishConfigurations(['permissions']);

        if ($this->app->runningInConsole()) {
            $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');

            $this->publishes([__DIR__ . '/../../resources/views' => resource_path('views/vendor/events')], 'views');
            $this->publishes([__DIR__ . '/../../resources/lang' => resource_path('lang/vendor/events')], 'lang');
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-events',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'Events',
                'icon' => 'fa fa-calendar',
                'url' => route('events.list'),
                'permissions' => ['events.list'],
            ]);
        });

        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            config(['plugins.language.general.supported' => array_merge(config('plugins.language.general.supported'), [EVENTS_MODULE_SCREEN_NAME])]);
        }
    }
}
