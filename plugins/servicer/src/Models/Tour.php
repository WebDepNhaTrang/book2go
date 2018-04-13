<?php

namespace Botble\Servicer\Models;

use Botble\ACL\Models\User;
use Botble\Slug\Traits\SlugTrait;
use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Venturecraft\Revisionable\RevisionableTrait;

/**
 * Botble\Servicer\Models\Servicer
 *
 * @mixin \Eloquent
 */
class Tour extends Eloquent
{
    use RevisionableTrait;
    use SoftDeletes;
    use SlugTrait;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'servicers';

    /**
     * @var mixed
     */
    protected $revisionEnabled = true;

    /**
     * @var mixed
     */
    protected $revisionCleanup = true;

    /**
     * @var int
     */
    protected $historyLimit = 20;

    /**
     * @var array
     */
    protected $dontKeepRevisionOf = [
        'content',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = ['deleted_at'];

    /**
     * The date fields for the model.clear
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'content',
        'image',
        'status',
        'user_id',
        'order',
        'price',
        'price_children',
        'adults',
        'children',
        'format_type',
        'service_type_id',
        'number_of_servicer'
    ];

    /**
     * @var string
     */
    protected $screen = TOUR_MODULE_SCREEN_NAME;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * @author Anh Ngo
     */
    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }
}
