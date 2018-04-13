<?php

namespace Botble\Theme\Http\Controllers;

use Artisan;
use Assets;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Theme\Forms\CustomCSSForm;
use Botble\Theme\Http\Requests\CustomCssRequest;
use File;
use Illuminate\Http\Request;
use Setting;
use ThemeOption;

class ThemeController extends BaseController
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList()
    {
        page_title()->setTitle(trans('core.theme::theme.theme'));

        if (File::exists(public_path('themes/.DS_Store'))) {
            File::delete(public_path('themes/.DS_Store'));
        }

        return view('core.theme::list');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getOptions()
    {
        page_title()->setTitle(trans('core.theme::theme.theme_options'));

        Assets::addJavascript(['bootstrap-tagsinput', 'typeahead', 'are-you-sure', 'colorpicker']);
        Assets::addStylesheets(['bootstrap-tagsinput', 'colorpicker']);
        return view('core.theme::options');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postUpdate(Request $request)
    {
        $sections = ThemeOption::constructSections();
        foreach ($sections as $section) {
            foreach ($section['fields'] as $field) {
                $key = $field['attributes']['name'];
                ThemeOption::setOption($key, $request->input($key, 0));
            }
        }
        Setting::save();
        return redirect()->back()->with('success_msg', trans('core.base::notices.update_success_message'));
    }

    /**
     * @param $theme
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function getActiveTheme($theme)
    {
        Setting::set('theme', $theme);
        Setting::save();
        Artisan::call('cache:clear');
        return redirect()->route('theme.list')->with('success_msg', trans('core.theme::theme.active_success'));
    }

    /**
     * @param FormBuilder $formBuilder
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCustomCss(FormBuilder $formBuilder)
    {
        page_title()->setTitle(__('Custom CSS for theme'));

        Assets::addAppModule(['custom-css'])
            ->addStylesheetsDirectly([
                'vendor/core/packages/codemirror/lib/codemirror.css',
                'vendor/core/packages/codemirror/addon/hint/show-hint.css',
                'vendor/core/css/custom-css.css',
            ])
            ->addJavascriptDirectly([
                'vendor/core/packages/codemirror/lib/codemirror.js',
                'vendor/core/packages/codemirror/lib/css.js',
                'vendor/core/packages/codemirror/addon/hint/show-hint.js',
                'vendor/core/packages/codemirror/addon/hint/anyword-hint.js',
                'vendor/core/packages/codemirror/addon/hint/css-hint.js',
            ]);

        $form = $formBuilder->create(CustomCSSForm::class);

        return view('core.theme::custom-css', compact('form'));
    }

    /**
     * @param CustomCssRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCustomCss(CustomCssRequest $request)
    {
        $file = public_path('themes/' . setting('theme') . '/assets/css/style.integration.css');
        save_file_data($file, $request->input('custom_css'), false);
        return redirect()->back()->with('success_msg', __('Update custom CSS successfully!'));
    }
}
