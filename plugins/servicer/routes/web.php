<?php

Route::group(['namespace' => 'Botble\Servicer\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => 'available'], function () {

        Route::get('/', [
            'as' => 'available.list',
            'uses' => 'PublicController@getAvailable',
        ]);
        Route::get('/booking', [
            'as' => 'public.booking',
            'uses' => 'PublicController@getBooking',
        ]);
        Route::post('/booking', [
            'as' => 'public.booking.post',
            'uses' => 'PublicController@postBooking',
        ]);
    });

    Route::group(['prefix' => config('core.base.general.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'servicer'], function () {

            Route::get('/', [
                'as' => 'servicer.list',
                'uses' => 'ServicerController@getList',
            ]);

            Route::get('/create', [
                'as' => 'servicer.create',
                'uses' => 'ServicerController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'servicer.create',
                'uses' => 'ServicerController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'servicer.edit',
                'uses' => 'ServicerController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'servicer.edit',
                'uses' => 'ServicerController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'servicer.delete',
                'uses' => 'ServicerController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'servicer.delete.many',
                'uses' => 'ServicerController@postDeleteMany',
                'permission' => 'servicer.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'servicer.change.status',
                'uses' => 'ServicerController@postChangeStatus',
                'permission' => 'servicer.edit',
            ]);
        });

        Route::group(['prefix' => 'hotel'], function () {

            Route::get('/', [
                'as' => 'hotel.list',
                'uses' => 'HotelController@getList',
            ]);

            Route::get('/create', [
                'as' => 'hotel.create',
                'uses' => 'HotelController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'hotel.create',
                'uses' => 'HotelController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'hotel.edit',
                'uses' => 'HotelController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'hotel.edit',
                'uses' => 'HotelController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'hotel.delete',
                'uses' => 'HotelController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'hotel.delete.many',
                'uses' => 'HotelController@postDeleteMany',
                'permission' => 'hotel.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'hotel.change.status',
                'uses' => 'HotelController@postChangeStatus',
                'permission' => 'hotel.edit',
            ]);
        }); 

        Route::group(['prefix' => 'room-type'], function () {

            Route::get('/', [
                'as' => 'room_type.list',
                'uses' => 'RoomTypeController@getList',
            ]);

            Route::get('/create', [
                'as' => 'room_type.create',
                'uses' => 'RoomTypeController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'room_type.create',
                'uses' => 'RoomTypeController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'room_type.edit',
                'uses' => 'RoomTypeController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'room_type.edit',
                'uses' => 'RoomTypeController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'room_type.delete',
                'uses' => 'RoomTypeController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'room_type.delete.many',
                'uses' => 'RoomTypeController@postDeleteMany',
                'permission' => 'room_type.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'room_type.change.status',
                'uses' => 'RoomTypeController@postChangeStatus',
                'permission' => 'room_type.edit',
            ]);
        }); 

        Route::group(['prefix' => 'apartment'], function () {

            Route::get('/', [
                'as' => 'apartment.list',
                'uses' => 'ApartmentController@getList',
            ]);

            Route::get('/create', [
                'as' => 'apartment.create',
                'uses' => 'ApartmentController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'apartment.create',
                'uses' => 'ApartmentController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'apartment.edit',
                'uses' => 'ApartmentController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'apartment.edit',
                'uses' => 'ApartmentController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'apartment.delete',
                'uses' => 'ApartmentController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'apartment.delete.many',
                'uses' => 'ApartmentController@postDeleteMany',
                'permission' => 'apartment.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'apartment.change.status',
                'uses' => 'ApartmentController@postChangeStatus',
                'permission' => 'apartment.edit',
            ]);
        }); 

        Route::group(['prefix' => 'tour'], function () {

            Route::get('/', [
                'as' => 'tour.list',
                'uses' => 'TourController@getList',
            ]);

            Route::get('/create', [
                'as' => 'tour.create',
                'uses' => 'TourController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'tour.create',
                'uses' => 'TourController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'tour.edit',
                'uses' => 'TourController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'tour.edit',
                'uses' => 'TourController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'tour.delete',
                'uses' => 'TourController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'tour.delete.many',
                'uses' => 'TourController@postDeleteMany',
                'permission' => 'tour.delete',
            ]);

            Route::post('/change-status', [
                'as' => 'tour.change.status',
                'uses' => 'TourController@postChangeStatus',
                'permission' => 'tour.edit',
            ]);
        }); 

        Route::group(['prefix' => 'promotion'], function () {

            Route::get('/', [
                'as' => 'promotion.list',
                'uses' => 'PromotionController@getList',
            ]);

            Route::get('/create', [
                'as' => 'promotion.create',
                'uses' => 'PromotionController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'promotion.create',
                'uses' => 'PromotionController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'promotion.edit',
                'uses' => 'PromotionController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'promotion.edit',
                'uses' => 'PromotionController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'promotion.delete',
                'uses' => 'PromotionController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'promotion.delete.many',
                'uses' => 'PromotionController@postDeleteMany',
            ]);

            Route::post('/change-status', [
                'as' => 'promotion.change.status',
                'uses' => 'PromotionController@postChangeStatus',
            ]);
        }); 

        Route::group(['prefix' => 'booking'], function () {

            Route::get('/', [
                'as' => 'booking.list',
                'uses' => 'BookingController@getList',
            ]);

            Route::get('/create', [
                'as' => 'booking.create',
                'uses' => 'BookingController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'booking.create',
                'uses' => 'BookingController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'booking.edit',
                'uses' => 'BookingController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'booking.edit',
                'uses' => 'BookingController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'booking.delete',
                'uses' => 'BookingController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'booking.delete.many',
                'uses' => 'BookingController@postDeleteMany',
            ]);

            Route::post('/change-status', [
                'as' => 'booking.change.status',
                'uses' => 'BookingController@postChangeStatus',
            ]);
        }); 
    });
    

});