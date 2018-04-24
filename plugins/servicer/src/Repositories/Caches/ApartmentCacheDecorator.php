<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;

class ApartmentCacheDecorator extends CacheAbstractDecorator implements ApartmentInterface
{
    /**
     * @var ApartmentInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ApartmentCacheDecorator constructor.
     * @param ApartmentInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(ApartmentInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }

    /**
     * @param array $select
     * @return mixed
     * @author Anh Ngo
     */
    public function getApartments(array $select)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
