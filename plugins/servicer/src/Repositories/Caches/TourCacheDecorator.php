<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\TourInterface;

class TourCacheDecorator extends CacheAbstractDecorator implements TourInterface
{
    /**
     * @var TourInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * TourCacheDecorator constructor.
     * @param TourInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(TourInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }

    /**
     * @param array $select
     * @return mixed
     * @author Anh Ngo
     */
    public function getTours(array $select)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
