<?php

namespace Botble\ACL\Providers;

use Botble\ACL\Commands\RebuildPermissionsCommand;
use Botble\ACL\Commands\UserCreateCommand;
use Illuminate\Support\ServiceProvider;

class CommandServiceProvider extends ServiceProvider
{
    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author Sang Nguyen
     */
    public function boot()
    {
        if ($this->app->runningInConsole()) {
            $this->commands([
                UserCreateCommand::class,
            ]);
        }

        $this->commands([
            RebuildPermissionsCommand::class,
        ]);
    }
}
