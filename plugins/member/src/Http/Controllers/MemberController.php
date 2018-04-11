<?php

namespace Botble\Member\Http\Controllers;

use Assets;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Member\Forms\MemberForm;
use Botble\Member\Tables\MemberTable;
use Botble\Member\Http\Requests\MemberCreateRequest;
use Botble\Member\Http\Requests\MemberEditRequest;
use Botble\Member\Repositories\Interfaces\MemberInterface;
use Exception;
use Illuminate\Http\Request;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;

class MemberController extends BaseController
{

    /**
     * @var MemberInterface
     */
    protected $memberRepository;

    /**
     * @param MemberInterface $memberRepository
     * @author Sang Nguyen
     */
    public function __construct(MemberInterface $memberRepository)
    {
        $this->memberRepository = $memberRepository;
    }

    /**
     * Display all members
     * @param MemberTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(MemberTable $dataTable)
    {
        page_title()->setTitle(__('Members'));

        return $dataTable->renderTable(['title' => __('Members'), 'icon' => 'fa fa-users']);
    }

    /**
     * Show create form
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(__('Create a member'));

        Assets::addJavascriptDirectly(['/vendor/core/plugins/member/js/member-admin.js']);

        return $formBuilder->create(MemberForm::class)->remove('is_change_password')->renderForm();
    }

    /**
     * Insert new Gallery into database
     *
     * @param MemberCreateRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(MemberCreateRequest $request)
    {
        $request->merge(['password' => bcrypt($request->input('password'))]);
        $member = $this->memberRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(MEMBER_MODULE_SCREEN_NAME, $request, $member));

        if ($request->input('submit') === 'save') {
            return redirect()->route('member.list')->with('success_msg', trans('core.base::notices.create_success_message'));
        } else {
            return redirect()->route('member.edit', $member->id)->with('success_msg', trans('core.base::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param FormBuilder $formBuilder
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View|string
     * @author Sang Nguyen
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        Assets::addJavascriptDirectly(['/vendor/core/plugins/member/js/member-admin.js']);
        
        $member = $this->memberRepository->findById($id);
        if (empty($member)) {
            abort(404);
        }
        page_title()->setTitle(__('Edit member #') . $id);

        $member->password = null;

        return $formBuilder->create(MemberForm::class)->setModel($member)->renderForm();
    }

    /**
     * @param $id
     * @param MemberEditRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, MemberEditRequest $request)
    {
        if ($request->input('is_change_password') == 1) {
            $request->merge(['password' => bcrypt($request->input('password'))]);
            $data = $request->input();
        } else {
            $data = $request->except('password');
        }
        $member = $this->memberRepository->createOrUpdate($data, ['id' => $id]);

        event(new UpdatedContentEvent(MEMBER_MODULE_SCREEN_NAME, $request, $member));

        if ($request->input('submit') === 'save') {
            return redirect()->route('member.list')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->route('member.edit', $id)->with('success_msg', trans('core.base::notices.update_success_message'));
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
            $member = $this->memberRepository->findById($id);
            if (empty($member)) {
                abort(404);
            }
            $this->memberRepository->delete($member);
            event(new DeletedContentEvent(MEMBER_MODULE_SCREEN_NAME, $request, $member));

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
            $member = $this->memberRepository->findById($id);
            $this->memberRepository->delete($member);
            event(new DeletedContentEvent(MEMBER_MODULE_SCREEN_NAME, $request, $member));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }
}
