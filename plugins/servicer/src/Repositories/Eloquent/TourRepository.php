<?php

namespace Botble\Servicer\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Servicer\Repositories\Interfaces\TourInterface;

class TourRepository extends RepositoriesAbstract implements TourInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getTours(array $select = ['*'])
	{
	    $data = $this->model->where(['status' => 1, 'format_type'=> TOUR_MODULE_SCREEN_NAME])
	    		->select($select)
	    		->orderBy('servicers.order', 'desc');

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_ADMIN_LIST_ITEM, $data, $this->model, TOUR_MODULE_SCREEN_NAME)->get();

	    $this->resetModel();
	    return $data;
	}

	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getToursFront(array $select = ['*'], $page = null, $numberOfOnPage = 3)
	{
	    $data = $this->model->where(['status' => 1, 'format_type'=> TOUR_MODULE_SCREEN_NAME])
	    		->select($select)
	    		->orderBy('servicers.order', 'desc')
	    		->orderBy('servicers.created_at', 'desc');
	   	$data = apply_filters(BASE_FILTER_BEFORE_GET_ADMIN_LIST_ITEM, $data, $this->model, TOUR_MODULE_SCREEN_NAME);
	   	if($page){
	   		$data = $data->paginate($numberOfOnPage);
	   	}else{
	   		$data = $data->get();
	   	}
	    
	    $this->resetModel();
	    return $data;
	}
}
