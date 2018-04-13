<?php

namespace Botble\Base\Providers;

use Composer\Autoload\ClassLoader;
use Illuminate\Support\ServiceProvider;
use Schema;

class PluginServiceProvider extends ServiceProvider
{
    /**
     * @author Sang Nguyen
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function boot()
    {
        if (check_database_connection() && Schema::hasTable('settings')) {
            $plugins = get_active_plugins();
            $loader = new ClassLoader();
            $providers = [];
            foreach ($plugins as $plugin) {
                $content = get_file_data(config('core.base.general.plugin_path') . '/' . $plugin . '/plugin.json');
                if (array_has($content, 'namespace') && !class_exists($content['provider'])) {
                    $loader->setPsr4($content['namespace'], base_path('plugins/' .  $plugin . '/src'));
                }

                $providers[] = $content['provider'];
            }

            $loader->register(true);

            foreach ($providers as $provider) {
                if (class_exists($provider)) {
                    $this->app->register($provider);
                }
            }
        }
    }
}
