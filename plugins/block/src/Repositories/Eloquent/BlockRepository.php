<?php

namespace Botble\Block\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Block\Repositories\Interfaces\BlockInterface;

class BlockRepository extends RepositoriesAbstract implements BlockInterface
{
    /**
     * @param $name
     * @param $id
     * @return mixed
     * @author Sang Nguyen
     */
    public function createSlug($name, $id)
    {
        $slug = str_slug($name);
        $index = 1;
        $baseSlug = $slug;
        while ($this->model->where('alias', $slug)->where('id', '!=', $id)->count() > 0) {
            $slug = $baseSlug . '-' . $index++;
        }

        if (empty($slug)) {
            $slug = time();
        }

        $this->resetModel();

        return $slug;
    }

    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    public function getAllBlocks(array $condition = [])
    {
        $data = $this->model->select('blocks.*');
        if (!empty($condition)) {
            $data = $data->where($condition);
        }

        $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BLOCK_MODULE_SCREEN_NAME)
            ->get();
        $this->resetModel();
        return $data;
    }

    /**
     * @param array $condition
     * @return mixed
     * @author Anh Ngo
     */
    public function getBlockById($id)
    {
        $data = $this->model->where(['blocks.id' => $id, 'blocks.status' => 1]);

        $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BLOCK_MODULE_SCREEN_NAME)
            ->first();
        $this->resetModel();
        return $data;
    }
}
