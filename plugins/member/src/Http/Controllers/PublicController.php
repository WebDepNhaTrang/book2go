<?php

namespace Botble\Member\Http\Controllers;

use Auth;
use Botble\Member\Http\Requests\EditAccountRequest;
use Botble\Member\Http\Requests\UpdatePasswordRequest;
use Botble\Member\Http\Requests\MemberChangeAvatarRequest;
use Botble\Member\Repositories\Interfaces\MemberInterface;
use Hash;
use Illuminate\Routing\Controller;
use Theme;

class PublicController extends Controller
{
    /**
     * @var MemberInterface
     */
    protected $memberRepository;

    /**
     * PublicController constructor.
     * @param MemberInterface $memberRepository
     */
    public function __construct(MemberInterface $memberRepository)
    {
        $this->memberRepository = $memberRepository;
    }

    /**
     * @return \Response
     * @author Sang Nguyen
     */
    public function getOverview()
    {
        return Theme::of('plugins.member::overview')->render();
    }

    /**
     * @return \Response
     * @author Sang Nguyen
     */
    public function getEditAccount()
    {
        return Theme::of('plugins.member::edit-account')->render();
    }

    /**
     * @param EditAccountRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEditAccount(EditAccountRequest $request)
    {
        $this->memberRepository->createOrUpdate($request->input(), ['id' => Auth::guard('member')->user()->getKey()]);
        return redirect()->route('public.member.edit')->with('success_msg', __('Update profile successfully!'));
    }

    /**
     * @return \Response
     * @author Sang Nguyen
     */
    public function getChangePassword()
    {
        return Theme::of('plugins.member::change-password')->render();
    }

    /**
     * @param UpdatePasswordRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postChangePassword(UpdatePasswordRequest $request)
    {
        $currentUser = Auth::guard('member')->user();

        if (!Hash::check($request->input('old_password'), $currentUser->getAuthPassword())) {
            return redirect()->back()
                ->with('error_msg', trans('acl::users.current_password_not_valid'));
        }

        $this->memberRepository->update(['id' => $currentUser->getKey()], [
            'password' => bcrypt($request->input('password')),
        ]);

        return redirect()->back()->with('success_msg', trans('acl::users.password_update_success'));
    }

    /**
     * @return \Response
     * @author Sang Nguyen
     */
    public function getChangeProfileImage()
    {
        return Theme::of('plugins.member::change-profile-image')->render();
    }

    /**
     * @author Sang Nguyen
     * @param MemberChangeAvatarRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postChangeProfileImage(MemberChangeAvatarRequest $request)
    {
        $file = rv_media_handle_upload($request->file('avatar'), 0, 'members');
        if (array_get($file, 'error') == true) {
            return redirect()->back()->with('error_msg', array_get($file, 'message'));
        }
        $this->memberRepository->createOrUpdate(['avatar' => $file['data']->url], ['id' => Auth::guard('member')->user()->getKey()]);
        return redirect()->back()->with('success_msg', __('Update avatar successfully!'));
    }
}
