let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.sass('./core/base/resources/assets/sass/core.scss', 'public/vendor/core/css')
    .sass('./core/base/resources/assets/sass/custom/admin-bar.scss', 'public/vendor/core/css')
    .sass('./core/base/resources/assets/sass/base/themes/black.scss', 'public/vendor/core/css/themes')
    .sass('./core/base/resources/assets/sass/base/themes/default.scss', 'public/vendor/core/css/themes')
    .copy('./public/vendor/core/css', 'core/base/public/css')
    .scripts(
        [
            './core/base/resources/assets/js/base/app.js',
            './core/base/resources/assets/js/base/layout.js',
            './core/base/resources/assets/js/script.js',
            './core/base/resources/assets/js/csrf.js'
        ], 'public/vendor/core/js/core.js')
    .copy('./public/vendor/core/js/core.js', 'core/base/public/js/core.js');

// Modules Core
mix.js('./core/base/resources/assets/js/app_modules/editor.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/editor.js', 'core/base/public/js/app_modules')
    .js('./core/base/resources/assets/js/app_modules/datatables.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/datatables.js', 'core/base/public/js/app_modules')
    .js('./core/base/resources/assets/js/app_modules/plugin.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/plugin.js', 'core/base/public/js/app_modules')
    .js('./core/base/resources/assets/js/app_modules/cache.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/cache.js', 'core/base/public/js/app_modules')

    .scripts(['./core/dashboard/resources/assets/js/app_modules/dashboard.js'], 'public/vendor/core/js/app_modules/dashboard.js')
    .copy('./public/vendor/core/js/app_modules/dashboard.js', 'core/dashboard/public/js/app_modules')

    .scripts(['./core/acl/resources/assets/js/app_modules/profile.js'], 'public/vendor/core/js/app_modules/profile.js')
    .copy('./public/vendor/core/js/app_modules/profile.js', 'core/acl/public/js/app_modules')
    .js('./core/acl/resources/assets/js/app_modules/login.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/login.js', 'core/acl/public/js/app_modules')
    .js('./core/acl/resources/assets/js/app_modules/role.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/role.js', 'core/acl/public/js/app_modules')
    .sass('./core/acl/resources/assets/sass/my-account.scss', 'public/vendor/core/css')
    .copy('./public/vendor/core/css', 'core/acl/public/css')

    .js('./core/slug/resources/assets/js/app_modules/slug.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/slug.js', 'core/slug/public/js/app_modules')

    .js('./core/menu/resources/assets/js/app_modules/menu.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/menu.js', 'core/menu/public/js/app_modules')

    .js('./core/widget/resources/assets/js/app_modules/widget.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/widget.js', 'core/widget/public/js/app_modules');

// Media
mix
    .sass('./core/media/resources/assets/sass/media.scss', 'public/vendor/core/media/css/media.css')
    .js('./core/media/resources/assets/js/media.js', 'public/vendor/core/media/js/media.js')
    .js('./core/media/resources/assets/js/jquery.addMedia.js', 'public/vendor/core/media/js/jquery.addMedia.js')
    .js('./core/media/resources/assets/js/integrate.js', 'public/vendor/core/media/js/integrate.js')
    .copy('./public/vendor/core/media', 'core/media/public/assets');

// JS Validation
mix.scripts('./vendor/proengsoft/laravel-jsvalidation/public/js/jsvalidation.js', 'public/vendor/core/js/app_modules/form-validation.js');

// Blog
mix.js('./plugins/blog/resources/assets/js/app_modules/tags.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/tags.js', 'plugins/blog/public/js/app_modules')

// Translation
mix.js('./plugins/translation/resources/assets/js/translation.js', 'public/vendor/core/plugins/translation/js')
    .sass('./plugins/translation/resources/assets/sass/translation.scss', 'public/vendor/core/plugins/translation/css/translation.css')
    .copy('./public/vendor/core/plugins/translation', 'plugins/translation/public');

// Backup
mix.js('./plugins/backup/resources/assets/js/backup.js', 'public/vendor/core/plugins/backup/js')
    .sass('./plugins/backup/resources/assets/sass/backup.scss', 'public/vendor/core/plugins/backup/css/backup.css')
    .copy('./public/vendor/core/plugins/backup', 'plugins/backup/public');

// Language
mix
    .scripts(['./plugins/language/resources/assets/js/language.js'], 'public/vendor/core/plugins/language/js/language.js')
    .scripts(['./plugins/language/resources/assets/js/language-global.js'], 'public/vendor/core/plugins/language/js/language-global.js')
    .scripts(['./plugins/language/resources/assets/js/language-public.js'], 'public/vendor/core/plugins/language/js/language-public.js')
    .sass('./plugins/language/resources/assets/sass/language.scss', 'public/vendor/core/plugins/language/css/language.css')
    .sass('./plugins/language/resources/assets/sass/language-public.scss', 'public/vendor/core/plugins/language/css/language-public.css')
    .copy('./public/vendor/core/plugins/language', 'plugins/language/public');

// Custom fields
mix
    .sass('./plugins/custom-field/resources/assets/sass/edit-field-group.scss', 'public/vendor/core/plugins/custom-field/css')
    .sass('./plugins/custom-field/resources/assets/sass/custom-field.scss', 'public/vendor/core/plugins/custom-field/css')
    .js('./plugins/custom-field/resources/assets/js/edit-field-group.js', 'public/vendor/core/plugins/custom-field/js')
    .js('./plugins/custom-field/resources/assets/js/use-custom-fields.js', 'public/vendor/core/plugins/custom-field/js')
    .js('./plugins/custom-field/resources/assets/js/import-field-group.js', 'public/vendor/core/plugins/custom-field/js')
    .copy('./public/vendor/core/plugins/custom-field', 'plugins/custom-field/public');

// Gallery
mix
    .sass('./plugins/gallery/resources/assets/sass/gallery.scss', 'public/vendor/core/plugins/gallery/css/gallery.css')
    .sass('./plugins/gallery/resources/assets/sass/object-gallery.scss', 'public/vendor/core/plugins/gallery/css/object-gallery.css')
    .sass('./plugins/gallery/resources/assets/sass/admin-gallery.scss', 'public/vendor/core/plugins/gallery/css/admin-gallery.css')
    .scripts('./plugins/gallery/resources/assets/js/gallery.js', 'public/vendor/core/plugins/gallery/js/gallery.js')
    .scripts('./plugins/gallery/resources/assets/js/object-gallery.js', 'public/vendor/core/plugins/gallery/js/object-gallery.js')
    .copy('./public/vendor/core/plugins/gallery', 'plugins/gallery/public');

// Log Viewer
mix
    .sass('./plugins/log-viewer/resources/assets/sass/log-viewer.scss', 'public/vendor/core/plugins/log-viewer/css/log-viewer.css')
    .copy('./public/vendor/core/plugins/log-viewer', 'plugins/log-viewer/public');

mix
    .js('./plugins/member/resources/assets/js/member-admin.js', 'public/vendor/core/plugins/member/js')
    .copy('./public/vendor/core/plugins/member', 'plugins/member/public');

mix
    .js('./core/acl/resources/assets/js/app_modules/animated-svg-avatar.js', 'public/vendor/core/js/app_modules')
    .copy('./public/vendor/core/js/app_modules/animated-svg-avatar.js', 'core/acl/public/js/app_modules')
    .sass('./core/acl/resources/assets/sass/animated-svg-avatar.scss', 'public/vendor/core/css')
    .copy('./public/vendor/core/css', 'core/acl/public/css');

mix
    .js('./plugins/events/resources/assets/js/events.js', 'public/vendor/core/plugins/events/js')
    .copy('./public/vendor/core/plugins/events', 'plugins/events/public');