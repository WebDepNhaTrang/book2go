<?php

namespace Botble\Block\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Block\Forms\BlockForm;
use Botble\Block\Http\Requests\BlockRequest;
use Botble\Block\Repositories\Interfaces\BlockInterface;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Block\Tables\BlockTable;
use Auth;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;

class BlockController extends BaseController
{
    /**
     * @var BlockInterface
     */
    protected $blockRepository;

    /**
     * BlockController constructor.
     * @param BlockInterface $blockRepository
     * @author Sang Nguyen
     */
    public function __construct(BlockInterface $blockRepository)
    {
        $this->blockRepository = $blockRepository;
    }

    /**
     * Display all block
     * @param BlockTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(BlockTable $dataTable)
    {
        page_title()->setTitle(trans('plugins.block::block.list'));

        return $dataTable->renderTable(['title' => trans('plugins.block::block.list')]);
    }

    /**
     * Show create form
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.block::block.create'));

        return $formBuilder->create(BlockForm::class)->renderForm();
    }

    /**
     * Insert new Block into database
     *
     * @param BlockRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(BlockRequest $request)
    {
        $block = $this->blockRepository->getModel();
        $block->fill($request->input());
        $block->user_id = Auth::user()->getKey();
        $block->alias = $this->blockRepository->createSlug($request->input('alias'), null);

        $this->blockRepository->createOrUpdate($block);

        event(new CreatedContentEvent(BLOCK_MODULE_SCREEN_NAME, $request, $block));

        if ($request->input('submit') === 'save') {
            return redirect()->route('block.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('block.edit', $block->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @return string
     * @author Sang Nguyen
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        $block = $this->blockRepository->findById($id);
        if (empty($block)) {
            abort(404);
        }

        event(new BeforeEditContentEvent(BLOCK_MODULE_SCREEN_NAME, request(), $block));

        page_title()->setTitle(trans('plugins.block::block.edit') . ' # ' . $id);

        return $formBuilder->create(BlockForm::class)->setModel($block)->renderForm();
    }

    /**
     * @param $id
     * @param BlockRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, BlockRequest $request)
    {
        $block = $this->blockRepository->findById($id);
        if (empty($block)) {
            abort(404);
        }
        $block->fill($request->input());
        $block->alias = $this->blockRepository->createSlug($request->input('alias'), $id);

        $this->blockRepository->createOrUpdate($block);

        event(new UpdatedContentEvent(BLOCK_MODULE_SCREEN_NAME, $request, $block));

        if ($request->input('submit') === 'save') {
            return redirect()->route('block.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('block.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
        }
    }

    /**
     * @param Request $request
     * @param $id
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function getDelete(Request $request, $id, AjaxResponse $response)
    {
        try {
            $block = $this->blockRepository->findById($id);
            if (empty($block)) {
                abort(404);
            }
            $this->blockRepository->delete($block);
            event(new DeletedContentEvent(BLOCK_MODULE_SCREEN_NAME, $request, $block));

            return $response->setMessage(trans('core.base::notices.delete_success_message'));
        } catch (Exception $e) {
            return $response->setError(true)->setMessage(trans('core.base::notices.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function postDeleteMany(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $block = $this->blockRepository->findById($id);
            $this->blockRepository->delete($block);
            event(new DeletedContentEvent(BLOCK_MODULE_SCREEN_NAME, $request, $block));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function postChangeStatus(Request $request, AjaxResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $block = $this->blockRepository->findById($id);
            $block->status = $request->input('status');
            $this->blockRepository->createOrUpdate($block);
            event(new UpdatedContentEvent(BLOCK_MODULE_SCREEN_NAME, $request, $block));
        }

        return $response->setData($request->input('status'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }
}
