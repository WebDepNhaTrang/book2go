<?php

namespace Botble\Page\Http\Controllers;

use Auth;
use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Page\Forms\PageForm;
use Botble\Page\Tables\PageTable;
use Botble\Page\Http\Requests\PageRequest;
use Botble\Page\Repositories\Interfaces\PageInterface;
use Exception;
use Illuminate\Http\Request;
use Botble\Base\Forms\FormBuilder;

class PageController extends BaseController
{

    /**
     * @var PageInterface
     */
    protected $pageRepository;

    /**
     * PageController constructor.
     * @param PageInterface $pageRepository
     * @author Sang Nguyen
     */
    public function __construct(PageInterface $pageRepository)
    {
        $this->pageRepository = $pageRepository;
    }

    /**
     * @param PageTable $dataTable
     * @return \Illuminate\Http\JsonResponse|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(PageTable $dataTable)
    {
        page_title()->setTitle(trans('core.page::pages.list'));

        return $dataTable->renderTable(['title' => trans('core.page::pages.list'), 'icon' => 'fa fa-book']);
    }

    /**
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('core.page::pages.create'));

        return $formBuilder->create(PageForm::class)->renderForm();
    }

    /**
     * @param PageRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(PageRequest $request)
    {
        $page = $this->pageRepository->createOrUpdate(array_merge($request->input(), [
            'user_id' => Auth::user()->getKey(),
            'featured' => $request->input('featured', false),
        ]));

        event(new CreatedContentEvent(PAGE_MODULE_SCREEN_NAME, $request, $page));

        if ($request->input('submit') === 'save') {
            return redirect()->route('pages.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('pages.edit', $page->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * @param $id
     * @return string
     * @author Sang Nguyen
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        $page = $this->pageRepository->findById($id);

        if (empty($page)) {
            abort(404);
        }

        event(new BeforeEditContentEvent(PAGE_MODULE_SCREEN_NAME, request(), $page));

        page_title()->setTitle(trans('core.page::pages.edit') . ' #' . $id);

        return $formBuilder->create(PageForm::class)->setModel($page)->renderForm();
    }

    /**
     * @param $id
     * @param PageRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, PageRequest $request)
    {
        $page = $this->pageRepository->findById($id);
        if (empty($page)) {
            abort(404);
        }
        $page->fill($request->input());
        $page->featured = $request->input('featured', false);

        $page = $this->pageRepository->createOrUpdate($page);

        event(new UpdatedContentEvent(PAGE_MODULE_SCREEN_NAME, $request, $page));

        if ($request->input('submit') === 'save') {
            return redirect()->route('pages.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('pages.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $page = $this->pageRepository->findById($id);
            if (empty($page)) {
                abort(404);
            }
            $this->pageRepository->delete($page);

            event(new DeletedContentEvent(PAGE_MODULE_SCREEN_NAME, $request, $page));

            return $response->setMessage(trans('core.page::pages.deleted'));
        } catch (Exception $ex) {
            return $response->setError(true)->setMessage($ex->getMessage());
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
            $page = $this->pageRepository->findById($id);
            $this->pageRepository->delete($page);

            event(new DeletedContentEvent(PAGE_MODULE_SCREEN_NAME, $request, $page));
        }

        return $response->setMessage(trans('core.page::pages.deleted'));
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
            $page = $this->pageRepository->findById($id);
            $page->status = $request->input('status');
            $this->pageRepository->createOrUpdate($page);
            event(new UpdatedContentEvent(PAGE_MODULE_SCREEN_NAME, $request, $page));
        }

        return $response->setData($request->input('status'))->setMessage(trans('core.page::pages.notices.update_success_message'));
    }
}
