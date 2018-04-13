<?php

namespace Botble\Block\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface BlockInterface extends RepositoryInterface
{
    /**
     * @param $name
     * @param $id
     * @return mixed
     * @author Sang Nguyen
     */
    public function createSlug($name, $id);

    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    public function getAllBlocks(array $condition = []);

    /**
     * @param array $condition
     * @return mixed
     * @author Anh Ngo
     */
    public function getBlockById($id);
}
