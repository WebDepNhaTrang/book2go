<?php

namespace Botble\Servicer\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;
use DB;

class BookingRepository extends RepositoriesAbstract implements BookingInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getTotalOfServicer($servicer_id, $checkin, $checkout, array $select = ['*'])
	{
		if (!is_array($servicer_id)) {
		    $servicer_id = [$servicer_id];
		}
	    $data = $this->model->whereIn('servicer_id', $servicer_id)
	    					->where('status', '=', 1)
	    					->select('servicer_id', DB::raw('SUM(total_of_servicer) as total'))
                            ->where(function ($query) use ($checkin, $checkout) {
                                $query->where(function ($query) use ($checkin) {
                                                $query->whereDate('checkin', '<=' ,$checkin)
                                                      ->whereDate('checkout', '>=' ,$checkin);
                                    })->orWhere(function ($query)  use ($checkin, $checkout) {
                                                $query->whereDate('checkin', '>=' ,$checkin)
                                                      ->whereDate('checkin', '<=' ,$checkout);
                                    });
                            })->groupBy('servicer_id');
        $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, SERVICER_MODULE_SCREEN_NAME)->get();
	    $this->resetModel();
	    return $data;
	}
}
