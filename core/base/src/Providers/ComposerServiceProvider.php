<?php

namespace Botble\Base\Providers;

use Assets;
use Auth;
use Botble\ACL\Models\UserMeta;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Support\ServiceProvider;
use RvMedia;

class ComposerServiceProvider extends ServiceProvider
{

    /**
     * @author Sang Nguyen
     * @param Factory $view
     */
    public function boot(Factory $view)
    {
        $view->composer(['core.base::layouts.partials.top-header', 'core.base::layouts.base'], function (View $view) {
            $themes = Assets::getThemes();
            $locales = Assets::getAdminLocales();

            if (Auth::check()) {
                $active_theme = UserMeta::getMeta('admin-theme', config('core.base.general.default-theme'));
            } elseif (session()->has('admin-theme')) {
                $active_theme = session('admin-theme');
            } else {
                $active_theme = config('core.base.general.default-theme');
            }

            if (!array_key_exists($active_theme, $themes)) {
                $active_theme = config('core.base.general.default-theme');
            }

            $view->with(compact('themes', 'locales', 'active_theme'));
        });

        $view->composer(['media::config'], function () {
            $mediaPermissions = config('media.permissions');
            if (!Auth::user()->isSuperUser()) {
                $mediaPermissions = array_intersect(array_keys(Auth::user()->permissions), config('media.permissions'));
            }
            RvMedia::setPermissions($mediaPermissions);
        });
    }
}
