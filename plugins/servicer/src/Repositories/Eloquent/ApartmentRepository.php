<?php

namespace Botble\Servicer\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;

class ApartmentRepository extends RepositoriesAbstract implements ApartmentInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getApartments(array $select = ['*'])
	{
	    $data = $this->model->where(['status' => 1, 'format_type' => APARTMENT_MODULE_SCREEN_NAME])
					    ->select($select)
					    ->orderBy('servicers.order', 'desc');

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_ADMIN_LIST_ITEM, $data, $this->model, APARTMENT_MODULE_SCREEN_NAME)->get();

	    $this->resetModel();
	    return $data;
	}

	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getApartmentsFront(array $select = ['*'])
	{
	    $data = $this->model->where(['status' => 1, 'format_type' => APARTMENT_MODULE_SCREEN_NAME])
					    ->select($select)
					    ->orderBy('servicers.order', 'desc');

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, APARTMENT_MODULE_SCREEN_NAME)->get();

	    $this->resetModel();
	    return $data;
	}
}
