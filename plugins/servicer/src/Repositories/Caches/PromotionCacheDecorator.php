<?php

namespace Botble\Servicer\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Servicer\Repositories\Interfaces\PromotionInterface;

class PromotionCacheDecorator extends CacheAbstractDecorator implements PromotionInterface
{
    /**
     * @var PromotionInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * PromotionCacheDecorator constructor.
     * @param PromotionInterface $repository
     * @param CacheInterface $cache
     * @author Anh Ngo
     */
    public function __construct(PromotionInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
