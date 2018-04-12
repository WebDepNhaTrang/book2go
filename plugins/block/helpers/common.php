<?php

use Botble\Block\Repositories\Interfaces\BlockInterface;

if (!function_exists('get_list_blocks')) {
    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    function get_list_blocks(array $condition)
    {
        return app(BlockInterface::class)->allBy($condition);
    }
}

if (!function_exists('get_all_blocks')) {
    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    function get_all_blocks(array $condition = [])
    {
        return app(BlockInterface::class)->getAllBlocks($condition);
    }
}

if (!function_exists('get_block_by_id')) {
    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    function get_block_by_id($id)
    {
        return app(BlockInterface::class)->getBlockById($id);
    }
}
