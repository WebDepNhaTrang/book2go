<?php

namespace Botble\Servicer\Models;

use Botble\ACL\Models\User;
use Botble\Slug\Traits\SlugTrait;
use Eloquent;
use Illuminate\Database\Eloquent\SoftDeletes;
use Venturecraft\Revisionable\RevisionableTrait;

/**
 * Botble\Servicer\Models\RoomType
 *
 * @mixin \Servicer
 */
class RoomType extends Servicer
{
    /**
     * @var string
     */
    protected $screen = ROOM_TYPE_MODULE_SCREEN_NAME;
}
