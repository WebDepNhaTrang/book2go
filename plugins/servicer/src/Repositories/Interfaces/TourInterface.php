<?php

namespace Botble\Servicer\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface TourInterface extends RepositoryInterface
{
	/**
     * @param array $select
     * @return mixed
     * @author Anh Ngo
     */
    public function getTours(array $select = ['*']);

    /**
	 * @param array $select
	 * @return Collection
	 */
	public function getToursFront(array $select = ['*'], $page = null, $numberOfOnPage = 3);
}
