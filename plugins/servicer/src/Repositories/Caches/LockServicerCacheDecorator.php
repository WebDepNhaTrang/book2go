<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\LockServicerInterface;

class LockServicerCacheDecorator extends CacheAbstractDecorator implements LockServicerInterface
{
    /**
     * @var LockServicerInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * TourCacheDecorator constructor.
     * @param LockServicerInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(LockServicerInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }

}
