<?php

namespace Botble\Servicer\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface ServicerInterface extends RepositoryInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getRoomTypesApartments(array $select = ['*']);
}
