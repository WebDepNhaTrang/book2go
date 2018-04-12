<?php

namespace Botble\Translation;

use Artisan;
use Botble\Base\Interfaces\PluginInterface;
use Botble\Translation\Providers\TranslationServiceProvider;
use Schema;

class Plugin implements PluginInterface
{
    /**
     * @author Sang Nguyen
     */
    public static function activate()
    {
        Artisan::call('migrate', [
            '--force' => true,
            '--path' => 'plugins/translation/database/migrations',
        ]);

        Artisan::call('vendor:publish', [
            '--force' => true,
            '--tag' => 'assets',
            '--provider' => TranslationServiceProvider::class,
        ]);
    }

    /**
     * @author Sang Nguyen
     */
    public static function deactivate()
    {
    }

    /**
     * @author Sang Nguyen
     */
    public static function remove()
    {
        Schema::dropIfExists('translations');
    }
}
