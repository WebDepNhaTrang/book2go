<?php

namespace Botble\Servicer\Models;

use Botble\ACL\Models\User;
use Botble\Slug\Traits\SlugTrait;
use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Venturecraft\Revisionable\RevisionableTrait;

/**
 * Botble\Servicer\Models\Tour
 *
 * @mixin \Servicer
 */
class Tour extends Servicer
{
    /**
     * @var string
     */
    protected $screen = TOUR_MODULE_SCREEN_NAME;
}
