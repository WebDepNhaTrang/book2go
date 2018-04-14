<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;

class ServiceTypeCacheDecorator extends CacheAbstractDecorator implements ServiceTypeInterface
{
    /**
     * @var ServiceTypeInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ServiceCacheDecorator constructor.
     * @param ServiceTypeInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(ServiceTypeInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }

    /**
     * @param array $condition
     * @return mixed
     * @author Anh Ngo
     */
    public function getHotels(array $select)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
