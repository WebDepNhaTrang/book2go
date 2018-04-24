<?php

namespace Botble\Servicer\Forms\Fields;

use Kris\LaravelFormBuilder\Fields\FormField;

class ChooseMultiField extends FormField
{

    /**
     * @return string
     */
    protected function getTemplate()
    {
        return 'servicer::partials.choose-multi';
    }
}