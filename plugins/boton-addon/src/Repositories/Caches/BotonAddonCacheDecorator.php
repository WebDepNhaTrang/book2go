<?php

namespace Botble\BotonAddon\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\BotonAddon\Repositories\Interfaces\BotonAddonInterface;

class BotonAddonCacheDecorator extends CacheAbstractDecorator implements BotonAddonInterface
{
    /**
     * @var BotonAddonInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * BotonAddonCacheDecorator constructor.
     * @param BotonAddonInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(BotonAddonInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
