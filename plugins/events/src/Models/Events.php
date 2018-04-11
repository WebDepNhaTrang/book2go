<?php

namespace Botble\Events\Models;

use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Venturecraft\Revisionable\RevisionableTrait;

/**
 * Botble\Events\Models\Events
 *
 * @mixin \Eloquent
 */
class Events extends Eloquent
{
    use SoftDeletes;
    use RevisionableTrait;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'events';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'status',
        'start_date',
        'end_date',
        'content',
        'description',
        'image',
        'order'
    ];
}
