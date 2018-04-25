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
class Booking extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'bookings';

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
        'member_id',
        'status',
        'checkin',
        'checkout',
        'payment',
        'subtotal',
        'discount',
        'tax',
        'total',
        'servicer_id',
        'servicer_name',
        'amount_adults',
        'amount_children',
        'total_of_servicer',
        'fullname',
        'email',
        'phone',
        'address',
        'requirements',
        'notes',
        'user_id',
        'user_agent',
        'ip_address'
    ];

    /**
     * @var string
     */
    protected $screen = BOOKING_MODULE_SCREEN_NAME;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * @author Anh Ngo
     */
    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * @author Anh Ngo
     */
    public function servicer()
    {
        return $this->belongsTo(Servicer::class);
    }
}
