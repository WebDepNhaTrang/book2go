<?php

namespace Botble\Servicer\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Servicer\Repositories\Interfaces\PromotionInterface;

class PromotionRepository extends RepositoriesAbstract implements PromotionInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getPromotionById($id, $type, $checkin, $checkout)
	{
		if($type == HOTEL_MODULE_SCREEN_NAME){
	 	    $data = $this->model
	 	    			->join('promotion_servicer', 'promotion_servicer.promotion_id', '=', 'promotions.id')
	 	    			->join('service_types', 'promotion_servicer.reference_id', '=', 'service_types.id')
	 	    			->where('promotion_servicer.reference_id', $id)
						->where('promotion_servicer.reference', $type)
						->where('promotions.status', '=', 1)
						->where(function ($query) use ($checkin, $checkout) {
						     $query->where(function ($query) use ($checkin) {
						                     $query->whereDate('promotions.start_date', '<=' ,$checkin)
						                           ->whereDate('promotions.end_date', '>=' ,$checkin);
						         })->orWhere(function ($query)  use ($checkin, $checkout) {
						                     $query->whereDate('promotions.start_date', '>=' ,$checkin)
						                           ->whereDate('promotions.start_date', '<=' ,$checkout);
						         });
						 })
						->select(['*', 'promotions.name as promotion_name'])
						->distinct()
		                ->orderBy('promotions.cost', 'desc');
	 	    
		}elseif($type == TOUR_MODULE_SCREEN_NAME){
			if($checkin && $checkout){
		 	    $data = $this->model
		 	    			->join('promotion_servicer', 'promotion_servicer.promotion_id', '=', 'promotions.id')
		 	    			->join('servicers', 'promotion_servicer.reference_id', '=', 'servicers.id')
		 	    			->where('promotion_servicer.reference_id', $id)
							->where('promotion_servicer.reference', $type)
							->where('promotions.status', '=', 1)
							->where(function ($query) use ($checkin, $checkout) {
							     $query->where(function ($query) use ($checkin) {
							                     $query->whereDate('promotions.start_date', '<=' ,$checkin)
							                           ->whereDate('promotions.end_date', '>=' ,$checkin);
							         })->orWhere(function ($query)  use ($checkin, $checkout) {
							                     $query->whereDate('promotions.start_date', '>=' ,$checkin)
							                           ->whereDate('promotions.start_date', '<=' ,$checkout);
							         });
							 })
							->select(['*', 'promotions.name as promotion_name'])
							->distinct()
			                ->orderBy('promotions.cost', 'desc');
            }else{
		 	    $data = $this->model
	     	    			->join('promotion_servicer', 'promotion_servicer.promotion_id', '=', 'promotions.id')
	     	    			->join('servicers', 'promotion_servicer.reference_id', '=', 'servicers.id')
	     	    			->where('promotion_servicer.reference_id', $id)
	    					->where('promotion_servicer.reference', $type)
	    					->where('promotions.status', '=', 1)
	    					->select(['*', 'promotions.name as promotion_name'])
	    					->distinct()
	    	                ->orderBy('promotions.cost', 'desc');
            }
		}else{
     	    $data = $this->model
     	    			->join('promotion_servicer', 'promotion_servicer.promotion_id', '=', 'promotions.id')
     	    			->join('servicers', 'promotion_servicer.reference_id', '=', 'servicers.id')
     	    			->where('promotion_servicer.reference_id', $id)
    					->where('promotion_servicer.reference', $type)
    					->where('promotions.status', '=', 1)
    					->where(function ($query) use ($checkin, $checkout) {
    					     $query->where(function ($query) use ($checkin) {
    					                     $query->whereDate('promotions.start_date', '<=' ,$checkin)
    					                           ->whereDate('promotions.end_date', '>=' ,$checkin);
    					         })->orWhere(function ($query)  use ($checkin, $checkout) {
    					                     $query->whereDate('promotions.start_date', '>=' ,$checkin)
    					                           ->whereDate('promotions.start_date', '<=' ,$checkout);
    					         });
    					 })
    					->select(['*', 'promotions.name as promotion_name'])
    					->distinct()
    	                ->orderBy('promotions.cost', 'desc');
		}
 	    
		$data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, PROMOTION_MODULE_SCREEN_NAME)->first();

	    $this->resetModel();
	    return $data;
	}

	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getPromotionsFront(array $select = ['*'], $numberOfPage = null)
	{
	    $data = $this->model->where(['status' => 1])
					    ->select($select)
					    ->orderBy('promotions.updated_at', 'desc');

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, PROMOTION_MODULE_SCREEN_NAME);
	    
	    if($numberOfPage){
	    	$data = $data->paginate($numberOfPage);
	    }else{
	    	$data = $data->get();
	    }
	    $this->resetModel();
	    return $data;
	}
}
