<?php

namespace Botble\Servicer\Models;

use Botble\ACL\Models\User;
use Botble\Slug\Traits\SlugTrait;
use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Venturecraft\Revisionable\RevisionableTrait;

/**
 * Botble\Servicer\Models\Apartment
 *
 * @mixin \Servicer
 */
class Apartment extends Servicer
{
	use SlugTrait;
    /**
     * @var string
     */
    protected $screen = APARTMENT_MODULE_SCREEN_NAME;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsToMany
     * @author Anh Ngo
     */
    public function promotions()
    {
        return $this->belongsToMany(Promotion::class, 'promotion_servicer', 'reference_id', 'promotion_id')->where('reference', '=', APARTMENT_MODULE_SCREEN_NAME)->orderBy('cost', 'asc');
    }
}
