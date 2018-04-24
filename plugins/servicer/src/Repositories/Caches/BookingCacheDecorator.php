<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;

class BookingCacheDecorator extends CacheAbstractDecorator implements BookingInterface
{
    /**
     * @var BookingInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * BookingCacheDecorator constructor.
     * @param BookingInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(BookingInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
