<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\RoomTypeInterface;

class RoomTypeCacheDecorator extends CacheAbstractDecorator implements RoomTypeInterface
{
    /**
     * @var RoomTypeInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * RoomTypeCacheDecorator constructor.
     * @param RoomTypeInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(RoomTypeInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
