<?php

namespace Botble\Events\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface EventsInterface extends RepositoryInterface
{
	/**
	 * @param int $limit
	 * @return mixed
	 * @author Anh Ngo
	 */
	public function getUpcomingEvents($limit = 3);
}
