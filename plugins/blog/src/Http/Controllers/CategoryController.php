<?php

namespace Botble\Blog\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Blog\Forms\CategoryForm;
use Botble\Blog\Tables\CategoryTable;
use Botble\Blog\Http\Requests\CategoryRequest;
use Botble\Blog\Repositories\Interfaces\CategoryInterface;
use Exception;
use Illuminate\Http\Request;
use Auth;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;

class CategoryController extends BaseController
{

    /**
     * @var CategoryInterface
     */
    protected $categoryRepository;

    /**
     * @param CategoryInterface $categoryRepository
     * @author Sang Nguyen
     */
    public function __construct(CategoryInterface $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    /**
     * Display all categories
     * @param CategoryTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(CategoryTable $dataTable)
    {
        page_title()->setTitle(trans('plugins.blog::categories.list'));

        return $dataTable->renderTable(['title' => trans('plugins.blog::categories.list')]);
    }

    /**
     * Show create form
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.blog::categories.create'));

        return $formBuilder->create(CategoryForm::class)->renderForm();
    }

    /**
     * Insert new Category into database
     *
     * @param CategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(CategoryRequest $request)
    {
        $category = $this->categoryRepository->createOrUpdate(array_merge($request->input(), [
            'user_id' => Auth::user()->getKey(),
            'featured' => $request->input('featured', false),
            'is_default' => $request->input('is_default', false),
        ]));

        event(new CreatedContentEvent(CATEGORY_MODULE_SCREEN_NAME, $request, $category));

        if ($request->input('submit') === 'save') {
            return redirect()->route('categories.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('categories.edit', $category->id)->with('success_msg', trans('core.base::notices.create_success_message'));
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
        $category = $this->categoryRepository->findById($id);

        if (empty($category)) {
            abort(404);
        }

        event(new BeforeEditContentEvent(CATEGORY_MODULE_SCREEN_NAME, request(), $category));

        page_title()->setTitle(trans('plugins.blog::categories.edit') . ' #' . $id);

        return $formBuilder->create(CategoryForm::class)->setModel($category)->renderForm();
    }

    /**
     * @param $id
     * @param CategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, CategoryRequest $request)
    {
        $category = $this->categoryRepository->findById($id);
        if (empty($category)) {
            abort(404);
        }

        $category->fill($request->input());
        $category->featured = $request->input('featured', false);
        $category->is_default = $request->input('is_default', false);

        $this->categoryRepository->createOrUpdate($category);

        event(new UpdatedContentEvent(CATEGORY_MODULE_SCREEN_NAME, $request, $category));

        if ($request->input('submit') === 'save') {
            return redirect()->route('categories.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        }
        return redirect()->route('categories.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $category = $this->categoryRepository->findById($id);
            if (empty($category)) {
                abort(404);
            }

            if (!$category->is_default) {
                $this->categoryRepository->delete($category);
                event(new DeletedContentEvent(CATEGORY_MODULE_SCREEN_NAME, $request, $category));
            }

            return $response->setMessage(trans('core.base::notices.delete_success_message'));
        } catch (Exception $ex) {
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
            return $response->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $category = $this->categoryRepository->findById($id);
            if (!$category->is_default) {
                $this->categoryRepository->delete($category);

                event(new DeletedContentEvent(CATEGORY_MODULE_SCREEN_NAME, $request, $category));
            }
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
            $category = $this->categoryRepository->findById($id);
            $category->status = $request->input('status');
            $this->categoryRepository->createOrUpdate($category);
            event(new UpdatedContentEvent(CATEGORY_MODULE_SCREEN_NAME, $request, $category));
        }

        return $response->setData($request->input('status'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }
}
