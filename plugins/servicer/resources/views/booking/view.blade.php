@extends('core.base::layouts.master')
@section('content')
    
	<div class="row">
	<div class="col-md-9">
	    <div class="main-form">
	        <div class="form-body">

	            <div class="row">
	                <div class="col-md-6">
	                    <div class="form-group">
	                        <label for="" class="control-label">Fullname: {{$booking->fullname}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Phone: {{$booking->phone}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Email: {{$booking->email}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Address: {{$booking->address}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Checkin: {{$booking->checkin}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Checkout: {{$booking->checkout}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Service: {{$booking->servicer->name}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Total of Servicer: {{$booking->total_of_servicer}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Adults: {{$booking->adults}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Children: {{$booking->children}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Subtotal: {{number_format_price_nohtml($booking->subtotal)}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Discount: {{number_format_price_nohtml($booking->discount)}}</label>
	                        
	                    </div>
	                    <div class="form-group">
	                        <label for="" class="control-label">Total: {{number_format_price_nohtml($booking->total)}}</label>
	                        
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </div>
@stop
