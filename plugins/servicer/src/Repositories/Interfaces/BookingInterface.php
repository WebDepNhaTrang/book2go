<?php

namespace Botble\Servicer\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface BookingInterface extends RepositoryInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getTotalOfServicer($servicer_id, $checkin, $checkout, array $select = ['total_of_servicer']);
}
