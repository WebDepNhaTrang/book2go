<?php

namespace Botble\AuditLog\Providers;

use Botble\AuditLog\Facades\AuditLogFacade;
use Botble\AuditLog\Models\AuditHistory;
use Botble\AuditLog\Repositories\Caches\AuditLogCacheDecorator;
use Botble\AuditLog\Repositories\Eloquent\AuditLogRepository;
use Botble\AuditLog\Repositories\Interfaces\AuditLogInterface;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Support\Services\Cache\Cache;
use Illuminate\Foundation\AliasLoader;
use Illuminate\Support\ServiceProvider;

/**
 * Class AuditLogServiceProvider
 * @package Botble\AuditLog
 * @author Sang Nguyen
 * @since 02/07/2016 09:05 AM
 */
class AuditLogServiceProvider extends ServiceProvider
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
            $this->app->singleton(AuditLogInterface::class, function () {
                return new AuditLogCacheDecorator(new AuditLogRepository(new AuditHistory()), new Cache($this->app['cache'], AuditLogRepository::class));
            });
        } else {
            $this->app->singleton(AuditLogInterface::class, function () {
                return new AuditLogRepository(new AuditHistory());
            });
        }

        AliasLoader::getInstance()->alias('AuditLog', AuditLogFacade::class);
    }

    /**
     * Boot the service provider.
     * @author Sang Nguyen
     */
    public function boot()
    {
        $this->app->register(EventServiceProvider::class);

        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/audit-log')
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadMigrations();

        $this->app->register(HookServiceProvider::class);
    }
}
