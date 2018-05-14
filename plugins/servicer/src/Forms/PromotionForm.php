<?php

namespace Botble\Servicer\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Servicer\Http\Requests\PromotionRequest;
use Botble\Servicer\Forms\Fields\ChooseMultiField;

class PromotionForm extends FormAbstract
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
        if ($this->getModel() && $this->getModel()->hotels->first() != null) {
            $selected_hotels = $this->getModel()->hotels->first()->id;
        }

        $tours[0]  = "None";
        if($tours = get_all_tours(['id', 'name'])){
            $tours = $tours->pluck('name', 'id')->toArray();
            $tours[0]  = "None";
            $tours = array_sort_recursive($tours);
        }

        $selected_tours = 0;
        if ($this->getModel() && $this->getModel()->tours->first() != null) {
            $selected_tours = $this->getModel()->tours->first()->id;
        }

        $apartments[0]  = "None";
        if($apartments = get_all_apartments(['id', 'name'])){
            $apartments = $apartments->pluck('name', 'id')->toArray();
            $apartments[0]  = "None";
            $apartments = array_sort_recursive($apartments);
        }

        $selected_apartments = 0;
        if ($this->getModel() && $this->getModel()->apartments->first() != null) {
            $selected_apartments = $this->getModel()->apartments->first()->id;
        }

        $this->addCustomField('chooseMulti', ChooseMultiField::class);

        $this
            ->setModuleName(PROMOTION_MODULE_SCREEN_NAME)
            ->setValidatorClass(PromotionRequest::class)
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
            // ->add('code', 'text', [
            //     'label' => trans('servicer::forms.code'),
            //     'label_attr' => ['class' => 'control-label required'],
            //     'attr' => [
            //         'placeholder' => trans('servicer::forms.code'),
            //         'data-counter' => 100,
            //     ],
            // ])
            ->add('cost', 'number', [
                'label' => trans('servicer::forms.cost'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('servicer::forms.cost_placeholder'),
                    'data-counter' => 20,
                    'step' => 'any'
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
            ->add('description', 'editor', [
                'label' => trans('core.base::forms.description'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'rows' => 4,
                    'placeholder' => trans('core.base::forms.description_placeholder'),
                    'data-counter' => 500,
                ],
            ])
            ->add('hotels[]', 'select', [
                'label' => trans('servicer::hotel.name'),
                'label_attr' => ['class' => 'control-label'],
                'choices' => $hotels,
                'value' => old('hotels', $selected_hotels),
                'attr' => [
                    'class' => 'select-search-full',
                ],
                'name_field' => 'hotels'
            ])
            ->add('tours[]', 'select', [
                'label' => trans('servicer::tour.name'),
                'label_attr' => ['class' => 'control-label'],
                'choices' => $tours,
                'value' => old('tours', $selected_tours),
                'attr' => [
                    'class' => 'select-search-full',
                ],
                'name_field' => 'tours'
            ])
            ->add('apartments[]', 'select', [
                'label' => trans('servicer::apartment.name'),
                'label_attr' => ['class' => 'control-label'],
                'choices' => $apartments,
                'value' => old('apartments', $selected_apartments),
                'attr' => [
                    'class' => 'select-search-full',
                ],
                'name_field' => 'apartments'
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
            // ->add('quantity', 'number', [
            //     'label' => trans('servicer::forms.quantity'),
            //     'label_attr' => ['class' => 'control-label'],
            //     'attr' => [
            //         'placeholder' => trans('servicer::forms.quantity_placeholder'),
            //     ]
            // ])
            
            ->add('image', 'mediaImage', [
                'label' => trans('core.base::forms.image'),
                'label_attr' => ['class' => 'control-label'],
            ])
            
            ->setBreakFieldPoint('status');
    }
}