<?php

namespace Botble\BotonAddon\Http\Controllers;

use Botble\BotonAddon\Http\Requests\BotonAddonRequest;
use Botble\BotonAddon\Repositories\Interfaces\BotonAddonInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\BotonAddon\Tables\BotonAddonTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\BotonAddon\Forms\BotonAddonForm;
use Botble\Base\Forms\FormBuilder;

class BotonAddonController extends BaseController
{
    /**
     * @var BotonAddonInterface
     */
    protected $botonAddonRepository;

    /**
     * BotonAddonController constructor.
     * @param BotonAddonInterface $botonAddonRepository
     * @author Sang Nguyen
     */
    public function __construct(BotonAddonInterface $botonAddonRepository)
    {
        $this->botonAddonRepository = $botonAddonRepository;
    }

    /**
     * Display all botonAddon
     * @param BotonAddonTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(BotonAddonTable $dataTable)
    {

        page_title()->setTitle(trans('botonAddon::botonAddon.list'));

        return $dataTable->renderTable(['title' => trans('botonAddon::botonAddon.list')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('botonAddon::botonAddon.create'));

        return $formBuilder->create(BotonAddonForm::class)->renderForm();
    }

    /**
     * Insert new BotonAddon into database
     *
     * @param BotonAddonRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(BotonAddonRequest $request)
    {
        $botonAddon = $this->botonAddonRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(BOTONADDON_MODULE_SCREEN_NAME, $request, $botonAddon));

        if ($request->input('submit') === 'save') {
            return redirect()->route('botonAddon.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('botonAddon.edit', $botonAddon->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        $botonAddon = $this->botonAddonRepository->findById($id);
        if (empty($botonAddon)) {
            abort(404);
        }

        page_title()->setTitle(trans('botonAddon::botonAddon.edit') . ' #' . $id);

        return $formBuilder->create(BotonAddonForm::class)->setModel($botonAddon)->renderForm();
    }

    /**
     * @param $id
     * @param BotonAddonRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, BotonAddonRequest $request)
    {
        $botonAddon = $this->botonAddonRepository->findById($id);
        if (empty($botonAddon)) {
            abort(404);
        }
        $botonAddon->fill($request->input());

        $this->botonAddonRepository->createOrUpdate($botonAddon);

        event(new UpdatedContentEvent(BOTONADDON_MODULE_SCREEN_NAME, $request, $botonAddon));

        if ($request->input('submit') === 'save') {
            return redirect()->route('botonAddon.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('botonAddon.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
        }
    }

    /**
     * @param $id
     * @param Request $request
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function getDelete(Request $request, $id, AjaxResponse $response)
    {
        try {
            $botonAddon = $this->botonAddonRepository->findById($id);
            if (empty($botonAddon)) {
                abort(404);
            }
            $this->botonAddonRepository->delete($botonAddon);

            event(new DeletedContentEvent(BOTONADDON_MODULE_SCREEN_NAME, $request, $botonAddon));

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
            $botonAddon = $this->botonAddonRepository->findById($id);
            $this->botonAddonRepository->delete($botonAddon);
            event(new DeletedContentEvent(BOTONADDON_MODULE_SCREEN_NAME, $request, $botonAddon));
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
            $botonAddon = $this->botonAddonRepository->findById($id);
            $botonAddon->status = $request->input('status');
            $this->botonAddonRepository->createOrUpdate($botonAddon);

            event(new UpdatedContentEvent(BOTONADDON_MODULE_SCREEN_NAME, $request, $botonAddon));
        }

        return $response->setMessage(trans('core.base::notices.update_success_message'))->setData($request->input('status'));
    }
}
