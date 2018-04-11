<?php

namespace Botble\Gallery\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Gallery\Forms\GalleryForm;
use Botble\Gallery\Tables\GalleryTable;
use Botble\Gallery\Http\Requests\GalleryRequest;
use Assets;
use Botble\Gallery\Repositories\Interfaces\GalleryInterface;
use Exception;
use Illuminate\Http\Request;
use Auth;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;

class GalleryController extends BaseController
{

    /**
     * @var GalleryInterface
     */
    protected $galleryRepository;

    /**
     * @param GalleryInterface $galleryRepository
     * @author Sang Nguyen
     */
    public function __construct(GalleryInterface $galleryRepository)
    {
        $this->galleryRepository = $galleryRepository;
    }

    /**
     * Display all galleries
     * @param GalleryTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(GalleryTable $dataTable)
    {
        page_title()->setTitle(trans('plugins.gallery::gallery.list'));

        return $dataTable->renderTable([
            'title' => trans('plugins.gallery::gallery.list'),
            'icon' => 'fa fa-photo',
        ]);
    }

    /**
     * Show create form
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.gallery::gallery.create'));

        return $formBuilder->create(GalleryForm::class)->renderForm();
    }

    /**
     * Insert new Gallery into database
     *
     * @param GalleryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(GalleryRequest $request)
    {
        $gallery = $this->galleryRepository->getModel();
        $gallery->fill($request->input());
        $gallery->user_id = Auth::user()->getKey();
        $gallery->featured = $request->input('featured', false);

        $gallery = $this->galleryRepository->createOrUpdate($gallery);

        event(new CreatedContentEvent(GALLERY_MODULE_SCREEN_NAME, $request, $gallery));

        if ($request->input('submit') === 'save') {
            return redirect()->route('galleries.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('galleries.edit', $gallery->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getEdit($id, Request $request, FormBuilder $formBuilder)
    {
        $gallery = $this->galleryRepository->findById($id);
        if (empty($gallery)) {
            abort(404);
        }

        event(new BeforeEditContentEvent(GALLERY_MODULE_SCREEN_NAME, $request, $gallery));

        page_title()->setTitle(trans('plugins.gallery::gallery.edit') . ' #' . $id);

        return $formBuilder->create(GalleryForm::class)->setModel($gallery)->renderForm();
    }

    /**
     * @param $id
     * @param GalleryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, GalleryRequest $request)
    {
        $gallery = $this->galleryRepository->findById($id);
        if (empty($gallery)) {
            abort(404);
        }
        $gallery->fill($request->input());
        $gallery->featured = $request->input('featured', false);

        $this->galleryRepository->createOrUpdate($gallery);

        event(new UpdatedContentEvent(GALLERY_MODULE_SCREEN_NAME, $request, $gallery));

        if ($request->input('submit') === 'save') {
            return redirect()->route('galleries.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('galleries.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $gallery = $this->galleryRepository->findById($id);
            if (empty($gallery)) {
                abort(404);
            }
            $this->galleryRepository->delete($gallery);
            event(new DeletedContentEvent(GALLERY_MODULE_SCREEN_NAME, $request, $gallery));

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
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $gallery = $this->galleryRepository->findById($id);
            $this->galleryRepository->delete($gallery);
            event(new DeletedContentEvent(GALLERY_MODULE_SCREEN_NAME, $request, $gallery));
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
            $gallery = $this->galleryRepository->findById($id);
            $gallery->status = $request->input('status');
            $this->galleryRepository->createOrUpdate($gallery);
            event(new UpdatedContentEvent(GALLERY_MODULE_SCREEN_NAME, $request, $gallery));
        }

        return $response->setData($request->input('status'))->setMessage(trans('core.base::notices.update_success_message'));
    }
}
