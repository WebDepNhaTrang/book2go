<?php

namespace Botble\Servicer\Services\Abstracts;

use Botble\Servicer\Models\Promotion;
use Botble\Servicer\Repositories\Interfaces\PromotionInterface;
use Illuminate\Http\Request;

abstract class StorePromotionServiceAbstract
{
    /**
     * @var PromotionInterface
     */
    protected $promotionRepository;

    /**
     * StoreCategoryServiceAbstract constructor.
     * @param PromotionInterface $promotionRepository
     * @author Anh Ngo
     */
    public function __construct(PromotionInterface $promotionRepository)
    {
        $this->promotionRepository = $promotionRepository;
    }

    /**
     * @param Request $request
     * @param Promotion $promotion
     * @return mixed
     * @author Anh Ngo
     */
    abstract public function execute(Request $request, Promotion $promotion);
}
