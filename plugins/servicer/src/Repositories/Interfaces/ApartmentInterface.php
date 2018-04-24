<?php

namespace Botble\Servicer\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface ApartmentInterface extends RepositoryInterface
{
	/**
     * @param array $select
     * @return mixed
     * @author Anh Ngo
     */
    public function getApartments(array $select = ['*']);

    /**
	 * @param array $select
	 * @return Collection
	 */
	public function getApartmentsFront(array $select = ['*']);
}
