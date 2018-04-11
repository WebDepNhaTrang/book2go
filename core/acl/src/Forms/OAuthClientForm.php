<?php

namespace Botble\ACL\Forms;

use Botble\ACL\Http\Requests\OAuthClientRequest;
use Botble\Base\Forms\FormAbstract;

class OAuthClientForm extends FormAbstract
{
    /**
     * @return mixed|void
     */
    public function buildForm()
    {
        $this
            ->setFormOption('template', 'core.base::forms.form-modal')
            ->setFormOption('class', 'form-xs')
            ->setValidatorClass(OAuthClientRequest::class)
            ->add('name', 'text', [
                'label_attr' => [
                    'class' => 'control-label required',
                ],
            ])
            ->add('close', 'button', [
                'label' => 'Cancel',
                'attr' => [
                    'class' => 'btn btn-warning',
                    'data-fancybox-close' => true,
                ],
            ])
            ->add('submit', 'submit', [
                'label' => 'Save',
                'attr' => [
                    'class' => 'btn btn-info pull-right',
                ],
            ]);
    }
}