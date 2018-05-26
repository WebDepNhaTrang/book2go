<?php

namespace Botble\Servicer\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Servicer\Repositories\Interfaces\LockServicerInterface;

class LockServicerRepository extends RepositoriesAbstract implements LockServicerInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getLockerServiceById($id, $type, $checkin, $checkout)
	{
		if($type == HOTEL_MODULE_SCREEN_NAME){
			
	 	    $data = $this->model
						->where('lock_servicers.status', '=', 1)
						->where('lock_servicers.service_type_id', '=', $id)
						->where(function ($query) use ($checkin, $checkout) {
						     $query->where(function ($query) use ($checkin) {
						                     $query->whereDate('lock_servicers.start_date', '<=' ,$checkin)
						                           ->whereDate('lock_servicers.end_date', '>=' ,$checkin);
						         })->orWhere(function ($query)  use ($checkin, $checkout) {
						                     $query->whereDate('lock_servicers.start_date', '>' ,$checkin)
						                           ->whereDate('lock_servicers.start_date', '<' ,$checkout);
						         });
						 });
			
		}elseif($type == APARTMENT_MODULE_SCREEN_NAME){
			$data = $this->model
						->where('lock_servicers.status', '=', 1)
						->where('lock_servicers.servicer_id', '=', $id)
						->where(function ($query) use ($checkin, $checkout) {
						     $query->where(function ($query) use ($checkin) {
						                     $query->whereDate('lock_servicers.start_date', '<=' ,$checkin)
						                           ->whereDate('lock_servicers.end_date', '>=' ,$checkin);
						         })->orWhere(function ($query)  use ($checkin, $checkout) {
						                     $query->whereDate('lock_servicers.start_date', '>' ,$checkin)
						                           ->whereDate('lock_servicers.start_date', '<' ,$checkout);
						         });
						 });
		}else{
			return false;
		}
 	    
		$data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, PROMOTION_MODULE_SCREEN_NAME)->first();

	    $this->resetModel();
	    return $data;
	}
}
