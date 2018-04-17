<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;

class ServicerCacheDecorator extends CacheAbstractDecorator implements ServicerInterface
{
    /**
     * @var ServicerInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ServicerCacheDecorator constructor.
     * @param ServicerInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(ServicerInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
