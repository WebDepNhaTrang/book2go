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
	public function getApartments(array $select)
	{
	    $data = $this->model->where('format_type', '=', APARTMENT_MODULE_SCREEN_NAME)->select($select);

	    $data = apply_filters(BASE_FILTER_BEFORE_GET_ADMIN_LIST_ITEM, $data, $this->model, APARTMENT_MODULE_SCREEN_NAME)->get();

	    $this->resetModel();
	    return $data;
	}
}
