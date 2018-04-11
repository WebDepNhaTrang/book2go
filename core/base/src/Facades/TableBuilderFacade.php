<?php

namespace Botble\Base\Facades;

use Illuminate\Support\Facades\Facade;

class TableBuilderFacade extends Facade
{
    /**
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return 'table-builder';
    }
}
