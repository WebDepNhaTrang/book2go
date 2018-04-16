<?php

namespace Botble\Servicer\Models;

use Botble\ACL\Models\User;
use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Venturecraft\Revisionable\RevisionableTrait;

/**
 * Botble\Servicer\Models\Servicer
 *
 * @mixin \Eloquent
 */
class Promotion extends Eloquent
{
    use RevisionableTrait;
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'promotions';

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
        'code',
        'start_date',
        'end_date',
        'cost',
        'quantity',
        'quantity_used'
    ];

    /**
     * @var string
     */
    protected $screen = PROMOTION_MODULE_SCREEN_NAME;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * @author Anh Ngo
     */
    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsToMany
     * @author Anh Ngo
     */
    public function servicers()
    {
        return $this->belongsToMany(Servicer::class, 'promotion_servicer', 'promotion_id', 'reference_id')->whereIn('reference', [ROOM_TYPE_MODULE_SCREEN_NAME, APARTMENT_MODULE_SCREEN_NAME, TOUR_MODULE_SCREEN_NAME]);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsToMany
     * @author Anh Ngo
     */
    public function apartments()
    {
        return $this->belongsToMany(Servicer::class, 'promotion_servicer', 'promotion_id', 'reference_id')->where('reference', '=', APARTMENT_MODULE_SCREEN_NAME);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsToMany
     * @author Anh Ngo
     */
    public function roomTypes()
    {
        return $this->belongsToMany(Servicer::class, 'promotion_servicer', 'promotion_id', 'reference_id')->where('reference', '=', ROOM_TYPE_MODULE_SCREEN_NAME);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsToMany
     * @author Anh Ngo
     */
    public function tours()
    {
        return $this->belongsToMany(Servicer::class, 'promotion_servicer', 'promotion_id', 'reference_id')->where('reference', '=', TOUR_MODULE_SCREEN_NAME);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsToMany
     * @author Anh Ngo
     */
    public function hotels()
    {
        return $this->belongsToMany(ServiceType::class, 'promotion_servicer', 'promotion_id', 'reference_id')->where('reference', '=', HOTEL_MODULE_SCREEN_NAME);
    }

}
