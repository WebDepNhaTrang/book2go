<?php

namespace Botble\Servicer\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface PromotionInterface extends RepositoryInterface
{
	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getPromotionById($id, $type, $checkin, $checkout);

	/**
	 * @param array $select
	 * @return Collection
	 */
	public function getPromotionsFront(array $select = ['*'], $numberOfPage = null);
}
