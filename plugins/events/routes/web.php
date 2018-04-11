<?php

Route::group(['namespace' => 'Botble\Events\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('core.base.general.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'events'], function () {

            Route::get('/', [
                'as' => 'events.list',
                'uses' => 'EventsController@getList',
            ]);

            Route::get('/create', [
                'as' => 'events.create',
                'uses' => 'EventsController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'events.create',
                'uses' => 'EventsController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'events.edit',
                'uses' => 'EventsController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'events.edit',
                'uses' => 'EventsController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'events.delete',
                'uses' => 'EventsController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'events.delete.many',
                'uses' => 'EventsController@postDeleteMany',
                'permission' => 'events.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'events.change.status',
                'uses' => 'EventsController@postChangeStatus',
                'permission' => 'events.edit',
            ]);
        });
    });
    
});