<?php

namespace Botble\Servicer\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface LockServicerInterface extends RepositoryInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getLockerServiceById($id, $type, $checkin, $checkout);
}
