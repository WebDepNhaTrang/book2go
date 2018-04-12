<?php

namespace Botble\Events\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Events\Repositories\Interfaces\EventsInterface;

class EventsCacheDecorator extends CacheAbstractDecorator implements EventsInterface
{
    /**
     * @var EventsInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * EventsCacheDecorator constructor.
     * @param EventsInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(EventsInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }

    /**
     * @param int $limit
     * @return mixed
     * @author Anh Ngo
     */
    public function getUpcomingEvents($limit = 3){
        $this->flushCacheAndUpdateData(__FUNCTION__, func_get_args());
    }
}
