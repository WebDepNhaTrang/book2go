<?php

namespace Botble\Servicer\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Servicer\Http\Requests\LockServicerRequest;
use Botble\Servicer\Forms\Fields\ChooseMultiField;

class LockServicerForm extends FormAbstract
{

    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $hotels[0]  = "None";
        if($hotels = get_all_hotels(['id', 'name'])){
            $hotels = $hotels->pluck('name', 'id')->toArray();
            $hotels[0]  = "None";
            $hotels = array_sort_recursive($hotels);
        }

        $selected_hotels = 0;
        if ($this->getModel() && $this->getModel()->hotel != null) {
            $selected_hotels = $this->getModel()->hotel->id;
        }

        $apartments[0]  = "None";
        if($apartments = get_all_apartments(['id', 'name'])){
            $apartments = $apartments->pluck('name', 'id')->toArray();
            $apartments[0]  = "None";
            $apartments = array_sort_recursive($apartments);
        }

        $selected_apartments = 0;
        if ($this->getModel() && $this->getModel()->servicer != null) {
            $selected_apartments = $this->getModel()->servicer->id;
        }

        $this->addCustomField('chooseMulti', ChooseMultiField::class);

        $this
            ->setModuleName(PROMOTION_MODULE_SCREEN_NAME)
            ->setValidatorClass(LockServicerRequest::class)
            ->withCustomFields()
            ->hasTabs()
            ->add('name', 'text', [
                'label' => trans('core.base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('core.base::forms.name_placeholder'),
                    'data-counter' => 200,
                ],
            ])
            ->add('description', 'textarea', [
                'label' => trans('core.base::forms.description'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'rows' => 4,
                    'placeholder' => trans('core.base::forms.description_placeholder'),
                    'data-counter' => 500,
                ],
            ])
            ->add('start_date', 'text', [
                'label' => trans('servicer::forms.start_date'),
                'label_attr' => ['class' => 'control-label '],
                'attr' => [
                    'class' => 'form-control datetimepicker',
                    'placeholder' => trans('servicer::forms.start_date'),
                ],
            ])
            ->add('end_date', 'text', [
                'label' => trans('servicer::forms.end_date'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'class' => 'form-control datetimepicker',
                    'placeholder' => trans('servicer::forms.end_date'),
                ],
            ])
            ->add('is_hotel', 'onOff', [
                'label' => 'Is Hotel',
                'label_attr' => ['class' => 'control-label ' . $selected_hotels],
                'default_value' => false,
                'value' => $selected_hotels?true:false,
            ])
            ->add('service_type_id', 'select', [
                'label' => trans('servicer::hotel.name'),
                'label_attr' => ['class' => 'control-label'],
                'choices' => $hotels,
                'value' => old('service_type_id', $selected_hotels),
                'attr' => [
                    'class' => 'select-search-full',
                ]
            ])

            ->add('servicer_id', 'select', [
                'label' => trans('servicer::apartment.name'),
                'label_attr' => ['class' => 'control-label'],
                'choices' => $apartments,
                'value' => old('servicer_id', $selected_apartments),
                'attr' => [
                    'class' => 'select-search-full',
                ]
            ])

            ->add('status', 'select', [
                'label' => trans('core.base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'class' => 'form-control select-full',
                ],
                'choices' => [
                    1 => trans('core.base::system.activated'),
                    0 => trans('core.base::system.deactivated'),
                ],
            ])
            ->setBreakFieldPoint('status');
    }
}