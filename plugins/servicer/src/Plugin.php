<?php

namespace Botble\Servicer;

use Artisan;
use Schema;
use Botble\Base\Interfaces\PluginInterface;

class Plugin implements PluginInterface
{

    /**
     * @author Anh Ngo
     */
    public static function activate()
    {
        Artisan::call('migrate', [
            '--force' => true,
            '--path' => 'plugins/servicer/database/migrations',
        ]);
    }

    /**
     * @author Anh Ngo
     */
    public static function deactivate()
    {
    }

    /**
     * @author Anh Ngo
     */
    public static function remove()
    {
        Schema::dropIfExists('servicer');
    }
}