<?php

Route::group(['namespace' => 'Botble\BotonAddon\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('core.base.general.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'botonAddon'], function () {

            Route::get('/', [
                'as' => 'botonAddon.list',
                'uses' => 'BotonAddonController@getList',
            ]);

            Route::get('/create', [
                'as' => 'botonAddon.create',
                'uses' => 'BotonAddonController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'botonAddon.create',
                'uses' => 'BotonAddonController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'botonAddon.edit',
                'uses' => 'BotonAddonController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'botonAddon.edit',
                'uses' => 'BotonAddonController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'botonAddon.delete',
                'uses' => 'BotonAddonController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'botonAddon.delete.many',
                'uses' => 'BotonAddonController@postDeleteMany',
                'permission' => 'botonAddon.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'botonAddon.change.status',
                'uses' => 'BotonAddonController@postChangeStatus',
                'permission' => 'botonAddon.edit',
            ]);
        });
    });
    
});