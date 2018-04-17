<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\PromotionRequest;
use Botble\Servicer\Repositories\Interfaces\PromotionInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\PromotionTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\PromotionForm;
use Botble\Base\Forms\FormBuilder;
use Auth;
use Botble\Servicer\Services\StorePromotionService;
use Assets;

class PromotionController extends BaseController
{
    /**
     * @var PromotionInterface
     */
    protected $apartmentRepository;

    /**
     * ApartmentController constructor.
     * @param PromotionInterface $promotionRepository
     * @author Anh Ngo
     */
    public function __construct(PromotionInterface $promotionRepository)
    {
        $this->promotionRepository = $promotionRepository;
    }

    /**
     * Display all service
     * @param PromotionTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Anh Ngo
     */
    public function getList(PromotionTable $dataTable)
    {

        page_title()->setTitle(trans('servicer::promotion.list'));

        return $dataTable->renderTable(['title' => trans('servicer::promotion.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('servicer::promotion.create'));

        Assets::addStylesheetsDirectly('vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css');
        Assets::addJavascriptDirectly(['vendor/core/packages/bootstrap-datetimepicker/moment.min.js', 'vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js', '/vendor/core/plugins/events/js/events.js']);

        return $formBuilder->create(PromotionForm::class)->renderForm();
    }

    /**
     * Insert new Service into database
     *
     * @param PromotionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postCreate(PromotionRequest $request, StorePromotionService $service)
    {
        $promotion = $this->promotionRepository->createOrUpdate(array_merge($request->input(),[
            'user_id' => Auth::user()->getKey(),
        ]));

        event(new CreatedContentEvent(PROMOTION_MODULE_SCREEN_NAME, $request, $promotion));

        $service->execute($request, $promotion);

        if ($request->input('submit') === 'save') {
            return redirect()->route('promotion.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('promotion.edit', $promotion->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author Anh Ngo
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        $promotion = $this->promotionRepository->findById($id);
        if (empty($promotion)) {
            abort(404);
        }

        page_title()->setTitle(trans('servicer::promotion.edit') . ' #' . $id);

        Assets::addStylesheetsDirectly('vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css');
        Assets::addJavascriptDirectly(['vendor/core/packages/bootstrap-datetimepicker/moment.min.js', 'vendor/core/packages/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js', '/vendor/core/plugins/events/js/events.js']);

        return $formBuilder->create(PromotionForm::class)->setModel($promotion)->renderForm();
    }

    /**
     * @param $id
     * @param PromotionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Anh Ngo
     */
    public function postEdit($id, PromotionRequest $request, StorePromotionService $service)
    {
        $promotion = $this->promotionRepository->findById($id);
        if (empty($promotion)) {
            abort(404);
        }
        $promotion->fill($request->input());

        $this->promotionRepository->createOrUpdate($promotion);

        event(new UpdatedContentEvent(PROMOTION_MODULE_SCREEN_NAME, $request, $promotion));

        $service->execute($request, $promotion);

        if ($request->input('submit') === 'save') {
            return redirect()->route('promotion.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('promotion.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
        }
    }

    /**
     * @param $id
     * @param Request $request
     * @return AjaxResponse
     * @author Anh Ngo
     */
    public function getDelete(Request $request, $id, AjaxResponse $response)
    {
        try {
            $promotion = $this->promotionRepository->getFirstBy(['id' => $id]);
            if (empty($promotion)) {
                abort(404);
            }
            $this->promotionRepository->delete($promotion);

            event(new DeletedContentEvent(PROMOTION_MODULE_SCREEN_NAME, $request, $promotion));

            return $response->setMessage(trans('core.base::notices.delete_success_message'));
        } catch (Exception $e) {
            return $response->setError(true)->setMessage(trans('core.base::notices.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Anh Ngo
     */
    public function postDeleteMany(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $promotion = $this->promotionRepository->findById($id);
            $this->promotionRepository->delete($promotion);
            event(new DeletedContentEvent(PROMOTION_MODULE_SCREEN_NAME, $request, $promotion));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Anh Ngo
     */
    public function postChangeStatus(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $promotion = $this->promotionRepository->findById($id);
            $promotion->status = $request->input('status');
            $this->promotionRepository->createOrUpdate($promotion);

            event(new UpdatedContentEvent(PROMOTION_MODULE_SCREEN_NAME, $request, $promotion));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
