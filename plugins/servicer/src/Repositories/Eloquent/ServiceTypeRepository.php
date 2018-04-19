<?php

namespace Botble\Servicer\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;

class ServiceTypeRepository extends RepositoriesAbstract implements ServiceTypeInterface
{
	/**
	 * @param array $select
	 * @param array $orderBy
	 * @return Collection
	 */
	public function getHotels(array $select = ['*'])
	{
	    $data = $this->model->where(['status' => 1])->select($select);

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_ADMIN_LIST_ITEM, $data, $this->model, HOTEL_MODULE_SCREEN_NAME)->get();

	    $this->resetModel();
	    return $data;
	}

	/**
	 * @param array $ids
	 * @param array $select
	 * @return mixed
	 * @author Anh Ngo
	 */
	public function getHotelByIds(array $ids = [], $select = ['*'])
	{
	    $data = $this->model->select($select)->where('service_types.status', '=', 1)
	        ->whereIn('service_types.id', $ids)
	        ->orderBy('service_types.order', 'desc')
	        ->orderBy('service_types.created_at', 'desc');
	    $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, HOTEL_MODULE_SCREEN_NAME)->get();
	    $this->resetModel();
	    return $data;
	}

	/**
	 * @param $id
	 * @return mixed
	 */
	public function getHotelById($id)
	{
	    $data = $this->model->where(['service_types.id' => $id, 'service_types.status' => 1]);

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, HOTEL_MODULE_SCREEN_NAME)->first();

	    $this->resetModel();
	    return $data;
	}
}
