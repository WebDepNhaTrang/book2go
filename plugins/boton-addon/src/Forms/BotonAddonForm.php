<?php

namespace Botble\BotonAddon\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\BotonAddon\Http\Requests\BotonAddonRequest;

class BotonAddonForm extends FormAbstract
{

    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $this
            ->setModuleName(BOTONADDON_MODULE_SCREEN_NAME)
            ->setValidatorClass(BotonAddonRequest::class)
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