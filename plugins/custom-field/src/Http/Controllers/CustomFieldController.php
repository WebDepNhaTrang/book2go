<?php

namespace Botble\CustomField\Http\Controllers;

use Assets;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\CustomField\Actions\CreateCustomFieldAction;
use Botble\CustomField\Actions\DeleteCustomFieldAction;
use Botble\CustomField\Actions\ExportCustomFieldsAction;
use Botble\CustomField\Actions\ImportCustomFieldsAction;
use Botble\CustomField\Actions\UpdateCustomFieldAction;
use Botble\CustomField\Forms\CustomFieldForm;
use Botble\CustomField\Tables\CustomFieldTable;
use Botble\CustomField\Http\Requests\CreateFieldGroupRequest;
use Botble\CustomField\Http\Requests\UpdateFieldGroupRequest;
use Botble\CustomField\Repositories\Interfaces\FieldItemInterface;
use Botble\CustomField\Repositories\Interfaces\FieldGroupInterface;
use CustomField;
use Exception;
use Illuminate\Http\Request;
use Botble\Base\Events\UpdatedContentEvent;

class CustomFieldController extends BaseController
{

    /**
     * @var FieldGroupInterface
     */
    protected $fieldGroupRepository;

    /**
     * @var FieldItemInterface
     */
    protected $fieldItemRepository;

    /**
     * @param FieldGroupInterface $fieldGroupRepository
     * @param FieldItemInterface $fieldItemRepository
     * @author Sang Nguyen
     */
    public function __construct(FieldGroupInterface $fieldGroupRepository, FieldItemInterface $fieldItemRepository)
    {
        $this->fieldGroupRepository = $fieldGroupRepository;
        $this->fieldItemRepository = $fieldItemRepository;
    }

    /**
     * @param CustomFieldTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(CustomFieldTable $dataTable)
    {
        page_title()->setTitle(trans('plugins.custom-field::base.page_title'));

        Assets::addJavascriptDirectly('vendor/core/plugins/custom-field/js/import-field-group.js');
        Assets::addJavascript(['blockui']);

        return $dataTable->renderTable(['title' => trans('plugins.custom-field::base.page_title')]);
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     * @throws \Throwable
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.custom-field::base.form.create_field_group'));

        Assets::addStylesheetsDirectly(['vendor/core/plugins/custom-field/css/custom-field.css']);
        Assets::addStylesheetsDirectly(['vendor/core/plugins/custom-field/css/edit-field-group.css']);
        Assets::addJavascriptDirectly('vendor/core/plugins/custom-field/js/edit-field-group.js');
        Assets::addJavascript(['jquery-ui']);

        $object = $this->fieldGroupRepository->getModel();
        $object->rules_template = CustomField::renderRules();

        return $formBuilder->create(CustomFieldForm::class)->setModel($object)->renderForm();

    }

    /**
     * @param CreateFieldGroupRequest $request
     * @param CreateCustomFieldAction $action
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(CreateFieldGroupRequest $request, CreateCustomFieldAction $action)
    {
        $result = $action->run($request->input());

        $type = 'success_msg';
        $message = trans('core.base::notices.create_success_message');
        if ($result['error']) {
            $type = 'error_msg';
            $message = $result['message'];
        }

        if ($request->input('submit') === 'save') {
            return redirect()->route('custom-fields.list')->with($type, $message);
        } else {
            return redirect()->route('custom-fields.edit', $result['data']['id'])->with($type, $message);
        }
    }

    /**
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen, Tedozi Manson
     * @throws \Throwable
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.custom-field::base.form.edit_field_group') . ' #' . $id);

        Assets::addStylesheetsDirectly(['vendor/core/plugins/custom-field/css/custom-field.css']);
        Assets::addStylesheetsDirectly(['vendor/core/plugins/custom-field/css/edit-field-group.css']);
        Assets::addJavascriptDirectly('vendor/core/plugins/custom-field/js/edit-field-group.js');
        Assets::addJavascript(['jquery-ui']);

        $object = $this->fieldGroupRepository->findById($id);

        if (!$object) {
            return redirect()->route('custom-fields.edit')->with('error_msg', 'This field group not exists');
        }

        $object->rules_template = CustomField::renderRules();

        return $formBuilder->create(CustomFieldForm::class)->setModel($object)->renderForm();
    }

    /**
     * @param $id
     * @param UpdateFieldGroupRequest $request
     * @param UpdateCustomFieldAction $action
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen, Tedozi Manson
     */
    public function postEdit($id, UpdateFieldGroupRequest $request, UpdateCustomFieldAction $action)
    {
        $result = $action->run($id, $request->input());

        $type = 'success_msg';
        $message = trans('core.base::notices.update_success_message');
        if ($result['error']) {
            $type = 'error_msg';
            $message = $result['message'];
        }

        if ($request->input('submit') === 'save') {
            return redirect()->route('custom-fields.list')->with($type, $message);
        } else {
            return redirect()->route('custom-fields.edit', $result['data']['id'])->with($type, $message);
        }
    }

    /**
     * @param $id
     * @param Request $request
     * @param AjaxResponse $response
     * @param DeleteCustomFieldAction $action
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function getDelete($id, AjaxResponse $response, DeleteCustomFieldAction $action)
    {
        try {
            $action->run($id);
            return $response->setMessage(trans('plugins.custom-field::field-groups.deleted'));
        } catch (Exception $ex) {
            return $response->setError(true)->setMessage(trans('plugins.custom-field::field-groups.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param AjaxResponse $response
     * @param DeleteCustomFieldAction $action
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function postDeleteMany(Request $request, AjaxResponse $response, DeleteCustomFieldAction $action)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('plugins.custom-field::field-groups.notices.no_select'));
        }

        foreach ($ids as $id) {
            $action->run($id);
        }

        return $response->setMessage(trans('plugins.custom-field::field-groups.field_group_deleted'));
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
            return $response->setError(true)->setMessage(trans('plugins.custom-field::field-groups.notices.no_select'));
        }

        foreach ($ids as $id) {
            $field_group = $this->fieldGroupRepository->findById($id);
            $field_group->status = $request->input('status');
            $this->fieldGroupRepository->createOrUpdate($field_group);
            event(new UpdatedContentEvent(CUSTOM_FIELD_MODULE_SCREEN_NAME, $request, $field_group));
        }

        return $response->setData($request->input('status'))->setMessage(trans('plugins.custom-field::field-groups.notices.update_success_message'));
    }

    /**
     * @param ExportCustomFieldsAction $action
     * @param null $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function getExport(ExportCustomFieldsAction $action, $id = null)
    {
        $ids = [];

        if (!$id) {
            foreach ($this->fieldGroupRepository->all() as $item) {
                $ids[] = $item->id;
            }
        } else {
            $ids[] = $id;
        }

        $json = $action->run($ids)['data'];

        return response()->json($json, 200, [], JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
    }

    /**
     * @param ImportCustomFieldsAction $action
     * @param Request $request
     * @return array
     * @throws Exception
     * @throws Exception
     */
    public function postImport(ImportCustomFieldsAction $action, Request $request)
    {
        $json = $request->input('json_data');

        return $action->run($json);
    }
}
