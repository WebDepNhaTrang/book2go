<?php

Route::group(['namespace' => 'Botble\Setting\Http\Controllers', 'middleware' => 'web'], function () {
    Route::group(['prefix' => env('ADMIN_DIR'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'settings/general'], function () {
            Route::get('/', [
                'as' => 'settings.options',
                'uses' => 'SettingController@getOptions',
                'permission' => 'settings.options',
            ]);

            Route::post('/edit', [
                'as' => 'settings.edit',
                'uses' => 'SettingController@postEdit',
                'permission' => 'settings.options',
            ]);
        });

        Route::group(['prefix' => 'settings/email'], function () {
            Route::get('/', [
                'as' => 'settings.email',
                'uses' => 'SettingController@getEmailConfig',
                'permission' => 'settings.options',
            ]);

            Route::post('/edit', [
                'as' => 'settings.email.edit',
                'uses' => 'SettingController@postEditEmailConfig',
                'permission' => 'settings.options',
            ]);
        });
    });
});
