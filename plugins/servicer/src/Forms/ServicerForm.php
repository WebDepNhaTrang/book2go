<?php

namespace Botble\Servicer\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Servicer\Http\Requests\ServicerRequest;

class ServicerForm extends FormAbstract
{

    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $this
            ->setModuleName(SERVICER_MODULE_SCREEN_NAME)
            ->setValidatorClass(ServicerRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core.base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('core.base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ]);
    }
}