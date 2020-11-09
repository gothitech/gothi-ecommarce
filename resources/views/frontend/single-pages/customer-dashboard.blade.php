@extends('frontend.layouts.master')
@section('content')

<style type="text/css">
	.prof li{
		background: #1781BF;
		padding: 7px;
		margin: 3px;
		border-radius: 15px;
	}
	.prof li a{
		color: #fff;
		padding-Left: 15px;
	}

</style>
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url({{asset('frontend/images/bg-01.jpg')}});">
	<h2 class="ltext-105 cl0 txt-center">
		Customer Dashboard
	</h2>
</section>	

<div class="container">
	<div class="row" style="padding: 15px 0px 15px 0px;">
	   <div class="col-md-2">
		   <ul class="prof">
		   <li><a href="{{route('dashboard')}}">My Profile</a></li>
		   <li><a href="{{route('customer.password.change')}}">password Change</a></li>
			   <li><a href="">My Orders</a></li>
		   </ul>
   
	   </div>
	   <div class="col-md-10">
		   <div class="row">
			   <div class="col-md-2"></div>
				   <div class="col-md-8">
					   <div class="card">
						   <div class="card">
							   <div class="card-body">
								   <div class="card-body">
									   <div class="img-circle txt-center" >
										<img src="{{(!empty($user->image))?url('upload/user_images/'.$user->image):url('upload/no-image.png')}}"
										alt="User profile picture" style="width: 130px; height: 140px;border-radius: 5px;">
									   </div>
									   <h3 class="txt-center">{{$user->name}}</h3>
										<p class="txt-center">{{$user->address}}</p>
									   <table class="table table-bordered">
										   <tbody>
											   <tr>
												   <td>Mobile No</td>
												   <td>{{$user->mobile}}</td>
											   </tr>
											   <tr>
												   <td>Email</td>
												   <td>{{$user->email}}</td>
											   </tr>
											   <tr>
												   <td>Gender</td>
												   <td>{{$user->gender}}</td>
											   </tr>
										   </tbody>
										   
									   </table>
									<a class="btn btn-primary btn-block" href="{{route('customer.edit.profile')}}">Edit Profile</a>
							   </div>
						   </div>
					   </div>
				   </div>
			   </div>
		   </div>
	   </div>
	</div>
</div>
@endsection