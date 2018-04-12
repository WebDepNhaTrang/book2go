<?php

namespace Botble\Setting\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Setting;

class SettingController extends BaseController
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getOptions()
    {
        page_title()->setTitle(trans('core.setting::setting.title'));

        $settings = $this->getAvailableSettings('setting', true);
        return view('core.setting::index', compact('settings'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit(Request $request)
    {
        $settings = $this->getAvailableSettings('setting', true);

        foreach ($settings as $tab) {
            foreach ($tab['settings'] as $setting) {
                $key = $setting['attributes']['name'];
                Setting::set($key, $request->input($key, 0));
            }
        }

        Setting::save();
        if ($request->input('submit') === 'save') {
            return redirect()->route('settings.options')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->back()->with('success_msg', trans('core.base::notices.update_success_message'));
        }
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getEmailConfig()
    {
        if (!config('core.base.general.allow_config_mail_server_from_admin')) {
            abort(404);
        }
        $email_config = $this->getAvailableSettings('email');
       
        return view('core.setting::email', compact('email_config'));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postEditEmailConfig(Request $request)
    {
        if (!config('core.base.general.allow_config_mail_server_from_admin')) {
            abort(404);
        }

        $email_config = $this->getAvailableSettings('email');

        foreach ($email_config as $tab) {
            foreach ($tab['settings'] as $setting) {
                $key = $setting['attributes']['name'];
                Setting::set($key, $request->input($key, 0));
            }
        }

        Setting::save();
        
        if ($request->input('submit') === 'save') {
            return redirect()->route('settings.email')->with('success_msg', trans('core.base::notices.update_success_message'));
        } else {
            return redirect()->back()->with('success_msg', trans('core.base::notices.update_success_message'));
        }
    }

    /**
     * @return array
     * @author Sang Nguyen
     */
    protected function getAvailableSettings($key, $merge = false) : array
    {
        $settings = [];

        foreach (scan_folder(base_path() . '/core') as $module) {
            $configuration = config(strtolower('core.' . $module . '.' . $key));
            if (!empty($configuration)) {
                if ($merge) {
                    $settings += $configuration;
                } else {
                    $settings[] = $configuration;
                }
            }
        }

        foreach (get_active_plugins() as $plugin) {
            $configuration = config(strtolower('plugins.' . $plugin . '.' . $key));
            if ($configuration) {
                if ($merge) {
                    $settings += $configuration;
                } else {
                    $settings[] = $configuration;
                }
            }
        }

        return $settings;
    }
}
