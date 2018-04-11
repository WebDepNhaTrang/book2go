<?php

namespace Botble\Gallery;

use Artisan;
use Botble\Base\Interfaces\PluginInterface;
use Botble\Gallery\Providers\GalleryServiceProvider;
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
            '--path' => 'plugins/gallery/database/migrations',
        ]);

        Artisan::call('vendor:publish', [
            '--force' => true,
            '--tag' => 'assets',
            '--provider' => GalleryServiceProvider::class,
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
        Schema::dropIfExists('galleries');
        Schema::dropIfExists('gallery_meta');
    }
}
