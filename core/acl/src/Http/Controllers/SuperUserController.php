<?php

namespace Botble\ACL\Http\Controllers;

use Auth;
use Botble\ACL\Forms\SuperUserForm;
use Botble\ACL\Tables\SuperUserTable;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\AjaxResponse;
use Exception;
use Illuminate\Http\Request;

class SuperUserController extends BaseController
{
    /**
     * @var UserInterface
     */
    protected $userRepository;

    /**
     * SuperUserController constructor.
     * @param UserInterface $userRepository
     */
    public function __construct(UserInterface $userRepository)
    {
        $this->userRepository = $userRepository;
    }


    /**
     * @param SuperUserTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(SuperUserTable $dataTable)
    {
        page_title()->setTitle(trans('core.base::system.user.list_super'));

        return $dataTable->renderTable(['title' => trans('core.base::system.user.list_super'), 'dataTable' => $dataTable]);
    }

    /**
     * @param $id
     * @param AjaxResponse $response
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function getDelete($id, AjaxResponse $response)
    {
        if (Auth::user()->getKey() == $id) {
            return $response->setError(true)->setMessage(trans('core.base::system.cannot_revoke_yourself'));
        }

        try {
            $user = $this->userRepository->findById($id);
        } catch (Exception $e) {
            return $response->setError(true)->setMessage(trans('core.base::system.cannot_find_user'));
        }
        $user->updatePermission('superuser', false);
        $user->updatePermission('manage_supers', false);
        $user->super_user = 0;
        $user->manage_supers = 0;
        $this->userRepository->createOrUpdate($user);
        return $response->setMessage(trans('core.base::system.supper_revoked'));
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
            return $response->setError(true)->setMessage(trans('core.base::system.no_select'));
        }

        foreach ($ids as $id) {
            if (Auth::user()->getKey() == $id) {
                return $response->setError(true)->setMessage(trans('core.base::system.cannot_revoke_yourself'));
            }
            try {
                $user = $this->userRepository->findById($id);
            } catch (Exception $exception) {
                return $response->setError(true)->setMessage(trans('core.base::system.cannot_find_user'));
            }
            $user->updatePermission('superuser', false);
            $user->updatePermission('manage_supers', false);
            $user->super_user = 0;
            $user->manage_supers = 0;
            $this->userRepository->createOrUpdate($user);
        }
        return $response->setMessage(trans('core.base::system.supper_revoked'));
    }

    /**
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        return $formBuilder->create(SuperUserForm::class)->renderForm();
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(Request $request)
    {
        try {
            $user = $this->userRepository->getFirstBy(['email' => $request->input('email')]);
            if (!empty($user)) {
                $user->updatePermission('superuser', true);
                $user->super_user = 1;
                $this->userRepository->createOrUpdate($user);
                return redirect()->route('users-supers.list')->with('success_msg', trans('core.base::system.supper_granted'));
            }
            return redirect()->route('users-supers.list')->with('error_msg', trans('core.base::system.cant_find_user_with_email'))->withInput();
        } catch (Exception $exception) {
            return redirect()->route('users-supers.list')->with('error_msg', trans('core.base::system.cant_find_user_with_email'))->withInput();
        }
    }
}
