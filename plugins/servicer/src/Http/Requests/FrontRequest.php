<?php

namespace Botble\Servicer\Http\Requests;

use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;

class FrontRequest extends Request
{
    protected $redirectRoute = 'public.index';

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     * @author Anh Ngo
     */
    public function rules()
    {
        $checkin = request()->get('checkin');
        $checkout = request()->get('checkout');
        $number_of_servicer = request()->get('number_of_servicer');
        $id = request()->get('id', 0);
        $max_servicer = 0;
        $adults = 0;
        $children = 0;
        $format_type = null;
    	$servicer = app(ServicerInterface::class)->findById($id);
    	if($servicer && $checkin && $checkout){
    		$bookings = app(BookingInterface::class)->getTotalOfServicer($servicer->id, $checkin, $checkout)->pluck('total', 'servicer_id')->toArray();
    		if(array_key_exists($servicer->id, $bookings)){
    		    $max_servicer = $servicer->number_of_servicer - $bookings[$servicer->id];
    		}else{
    		    $max_servicer = $servicer->number_of_servicer;
    		}
            $children = $servicer->children;
            $adults = $servicer->adults;
            $format_type = $servicer->format_type;
    	}
        

    	$rule = [
    		'id' => [
			        'required',
			        Rule::exists(app(ServicerInterface::class)->getTable())->where(function ($query) use ($id) {
			                $query->where('id', $id)->where('status', 1);
			        }),
			 ],
			'checkin' => 'required|date|date_format:Y-m-d|after:yesterday|before:checkout',
            'checkout' => 'required|date|date_format:Y-m-d|after:checkin'
    	];
        switch ($format_type) {
            case TOUR_MODULE_SCREEN_NAME:
                $rule = array_merge($rule, [
                    'number_of_servicer' => '',
                    'adults' => 'required|numeric',
                    'children' => 'required|numeric'
                ]);
                break;
            
            default:
                $rule = array_merge($rule, [
                    'number_of_servicer' => 'required|numeric|between:1,'.$max_servicer
                ]); 
                break;
        }
        switch ($this->method()) {
            case 'POST':
                $rule = array_merge($rule, [
                    'fullname' => 'required',
                    'email' => 'required|email',
                    'phone' => 'required',
                    'address' => 'required'
                ]); 
            break;
        }
        return $rule;
    }
}
