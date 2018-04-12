<?php

namespace Botble\Analytics\Exceptions;

use Exception;

class InvalidConfiguration extends Exception
{
    /**
     * @return static
     * @author Freek Van der Herten <freek@spatie.be>
     * @modified Sang Nguyen
     */
    public static function viewIdNotSpecified()
    {
        return new static(trans('plugins.analytics::analytics.view_id_not_specified', ['version' => config('core.base.general.version')]));
    }

    /**
     * @param $path
     * @return static
     * @author Sang Nguyen
     */
    public static function credentialsIsNotValid()
    {
        return new static(trans('plugins.analytics::analytics.credential_is_not_valid', ['version' => config('core.base.general.version')]));
    }
}
