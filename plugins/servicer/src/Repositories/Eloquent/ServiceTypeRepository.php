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
	public function getHotels(array $select)
	{
	    $data = $this->model->select($select);

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_ADMIN_LIST_ITEM, $data, $this->model, HOTEL_MODULE_SCREEN_NAME)->get();

	    $this->resetModel();
	    return $data;
	}
}
