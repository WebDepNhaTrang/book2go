<?php

namespace Botble\Theme\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Theme\Http\Requests\CustomCssRequest;
use File;

class CustomCSSForm extends FormAbstract
{
    /**
     * @return mixed|void
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function buildForm()
    {
        $css = null;
        $file = public_path('themes/' . setting('theme') . '/assets/css/style.integration.css');
        if (File::exists($file)) {
            $css = get_file_data($file, false);
        }

        $this
            ->setUrl(route('theme.custom-css.post'))
            ->setValidatorClass(CustomCssRequest::class)
            ->add('custom_css', 'textarea', [
                'label' => 'Custom CSS',
                'label_attr' => ['class' => 'control-label'],
                'value' => $css,
                'help_block' => [
                    'text' => 'Using Ctrl + Space to auto complete.',
                ],
            ])
            ->add('submit', 'submit', [
                'label' => 'Save',
                'attr' => ['class' => 'btn btn-primary'],
            ])
            ->add('clear', 'reset', [
                'label' => 'Clear',
                'attr' => ['class' => 'btn btn-default'],
            ]);
    }
}