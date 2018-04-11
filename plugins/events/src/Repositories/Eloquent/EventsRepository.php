<?php

namespace Botble\Events\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Events\Repositories\Interfaces\EventsInterface;
use Carbon;

class EventsRepository extends RepositoriesAbstract implements EventsInterface
{
	/**
	 * @param int $limit
	 * @return mixed
	 * @author Anh Ngo
	 */
	public function getUpcomingEvents($limit = 3)
	{
		$date_now = Carbon::now();
	    $data = $this->model->where('events.status', '=', 1)
	    	->whereDate('start_date', '<=', $date_now)
	    	->whereDate('end_date', '>=', $date_now)
	        ->limit($limit)
	        ->orderBy('events.order', 'desc')
	        ->orderBy('events.start_date', 'desc');
	    $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, EVENTS_MODULE_SCREEN_NAME)->get();
	    $this->resetModel();
	    return $data;
	}
}
