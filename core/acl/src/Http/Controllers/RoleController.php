<?php

namespace Botble\ACL\Http\Controllers;

use Botble\ACL\Forms\RoleForm;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Responses\AjaxResponse;
use Assets;
use Auth;
use Botble\ACL\Events\RoleAssignmentEvent;
use Botble\ACL\Events\RoleUpdateEvent;
use Botble\ACL\Tables\RoleTable;
use Botble\ACL\Http\Requests\RoleCreateRequest;
use Botble\ACL\Repositories\Interfaces\RoleInterface;
use Botble\ACL\Repositories\Interfaces\RoleUserInterface;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;

class RoleController extends BaseController
{
    /**
     * @var RoleInterface
     */
    protected $roleRepository;

    /**
     * @var UserInterface
     */
    protected $userRepository;

    /**
     * @var RoleUserInterface
     */
    protected $roleUserRepository;

    /**
     * RoleController constructor.
     * @param RoleInterface $roleRepository
     * @param UserInterface $userRepository
     * @param RoleUserInterface $roleUserRepository
     */
    public function __construct(
        RoleInterface $roleRepository,
        UserInterface $userRepository,
        RoleUserInterface $roleUserRepository
    ) {
        $this->roleRepository = $roleRepository;
        $this->userRepository = $userRepository;
        $this->roleUserRepository = $roleUserRepository;
    }


    /**
     * Show list roles
     *
     * @param RoleTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(RoleTable $dataTable)
    {
        page_title()->setTitle(trans('core.acl::permissions.list_role'));

        return $dataTable->renderTable(['title' => trans('core.acl::permissions.list_role')]);
    }

    /**
     * Delete a role
     *
     * @param $id
     * @return AjaxResponse
     * @author Sang Nguyen
     */
    public function getDelete($id, AjaxResponse $response)
    {
        $role = $this->roleRepository->findById($id);

        if (!$role) {
            abort(404);
        }

        if ($role->reference !== 'global') {
            $role->delete();
            return $response->setMessage(trans('core.acl::permissions.delete_success'));
        } else {
            return $response->setError(true)->setMessage(trans('core.acl::permissions.delete_global_role'));
        }
    }

    /**
     * Delete many roles
     *
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
            $role = $this->roleRepository->findById($id);
            if ($role->reference !== 'global') {
                $role->delete();
            }
        }
        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }

    /**
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author Sang Nguyen
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        $role = $this->roleRepository->findById($id);
        if (!$role) {
            abort(404);
        }

        Assets::addStylesheets(['jquery-ui', 'jqueryTree']);
        Assets::addJavascript(['jquery-ui', 'jqueryTree']);
        Assets::addAppModule(['role']);

        page_title()->setTitle(trans('core.acl::permissions.details') . ' - ' . e($role->name));

        return $formBuilder->create(RoleForm::class)->setModel($role)->renderForm();
    }

    /**
     * @param $id
     * @param RoleCreateRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, RoleCreateRequest $request)
    {
        $role = $this->roleRepository->findById($id);
        if (!$role) {
            abort(404);
        }

        $role->name = $request->input('name');
        $role->permissions = $this->cleanPermission($request->input('flags'));
        $role->description = $request->input('description');
        $role->updated_by = Auth::user()->getKey();
        $role->is_default = $request->input('is_default', 0);
        $this->roleRepository->createOrUpdate($role);

        event(new RoleUpdateEvent($role));

        return redirect()->route('roles.edit', $id)
            ->with('success_msg', trans('core.acl::permissions.modified_success'));
    }

    /**
     * @return string
     * @author Sang Nguyen
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('core.acl::permissions.create_role'));

        Assets::addStylesheets(['jquery-ui', 'jqueryTree']);
        Assets::addJavascript(['jquery-ui', 'jqueryTree']);
        Assets::addAppModule(['role']);

        return $formBuilder->create(RoleForm::class)->renderForm();
    }

    /**
     * @param RoleCreateRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(RoleCreateRequest $request)
    {
        $this->roleRepository->create([
            'name' => $request->input('name'),
            'slug' => str_slug($request->input('name')),
            'permissions' => $this->cleanPermission($request->input('flags')),
            'description' => $request->input('description'),
            'is_default' => $request->input('is_default') !== null ? 1 : 0,
            'created_by' => Auth::user()->getKey(),
            'updated_by' => Auth::user()->getKey(),
        ]);

        return redirect()->route('roles.list')
            ->with('success_msg', trans('core.acl::permissions.create_success'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function getDuplicate($id)
    {
        $baseRole = $this->roleRepository->findById($id);

        if (!$baseRole) {
            abort(404);
        }

        $this->roleRepository->createOrUpdate([
            'name' => $baseRole->name . ' (Duplicate)',
            'slug' => $this->roleRepository->createSlug($baseRole->slug, 0),
            'permissions' => $baseRole->permissions,
            'description' => $baseRole->description,
            'created_by' => $baseRole->created_by,
            'updated_by' => $baseRole->updated_by,
        ]);

        return redirect()->route('roles.list')
            ->with('success_msg', trans('core.acl::permissions.duplicated_success'));
    }

    /**
     * @return array
     * @author Sang Nguyen
     */
    public function getJson()
    {
        $pl = [];
        foreach ($this->roleRepository->all() as $role) {
            $pl[] = [
                'value' => $role->id,
                'text' => $role->name,
            ];
        }

        return $pl;
    }

    /**
     * @param Request $request
     * @author Sang Nguyen
     */
    public function postAssignMember(Request $request)
    {
        $user = $this->userRepository->findById($request->input('pk'));
        $role = $this->roleRepository->findById($request->input('value'));
        $this->roleUserRepository->deleteBy(['user_id' => $user->id]);

        $this->roleUserRepository->createOrUpdate([
            'user_id' => $user->id,
            'role_id' => $role->id,
        ]);

        event(new RoleAssignmentEvent($role, $user));
    }

    /**
     * Return a correctly type casted permissions array
     * @param $permissions
     * @return array
     * @author Sang Nguyen
     */
    protected function cleanPermission($permissions)
    {
        if (!$permissions) {
            return [];
        }
        $cleanedPermissions = [];
        foreach ($permissions as $permissionName) {
            $cleanedPermissions[$permissionName] = true;
        }

        return $cleanedPermissions;
    }
}
