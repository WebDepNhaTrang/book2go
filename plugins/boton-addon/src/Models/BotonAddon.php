<?php

namespace Botble\BotonAddon\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\BotonAddon\Models\BotonAddon
 *
 * @mixin \Eloquent
 */
class BotonAddon extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'botonAddon';

    /**
     * @var array
     */
    protected $fillable = ['name', 'status'];
}
