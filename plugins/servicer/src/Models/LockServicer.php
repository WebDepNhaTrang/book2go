<?php

namespace Botble\Servicer\Models;

use Botble\ACL\Models\User;
use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Botble\Servicer\Models\Servicer
 *
 * @mixin \Eloquent
 */
class LockServicer extends Eloquent
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'lock_servicers';

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
        'status',
        'user_id',
        'servicer_id',
        'service_type_id',
        'start_date',
        'end_date'
    ];

    /**
     * @var string
     */
    protected $screen = LOCK_SERVICER_MODULE_SCREEN_NAME;

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
    public function hotel()
    {
        return $this->belongsTo(ServiceType::class, 'service_type_id')->withDefault();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * @author Anh Ngo
     */
    public function servicer()
    {
        return $this->belongsTo(Servicer::class, 'servicer_id')->withDefault();
    }
}
