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
           <h3>Edit Profile</h3>
       <form method="POST" action="{{route('customer.update.profile')}}" enctype="multipart/form-data">
        @csrf
         <div class="row">
             <div class="col-md-4">
               <label>Full Name</label>
                <input type="text" name="name" value="{{$editdata->name}}" class="form-control">
                <font color="red">{{($errors->has('name'))?($errors->first('name')):''}}</font>
             </div>
             <div class="col-md-4">
                <label>Email</label>
                 <input type="email" name="email" value="{{$editdata->email}}" class="form-control">
                 <font color="red">{{($errors->has('email'))?($errors->first('email')):''}}</font>
             </div>
             <div class="col-md-4">
                <label>Mobile No:</label>
                 <input type="text" name="mobile" value="{{$editdata->mobile}}" class="form-control">
                 <font color="red">{{($errors->has('mobile'))?($errors->first('mobile')):''}}</font>
             </div>
             <div class="col-md-4">
                <label>Address</label>
                 <input type="text" name="address" value="{{$editdata->address}}" class="form-control">
             </div>
             <div class="col-md-4">
                <label>Gender</label>
                  <select name="gender" class="form-control">
                      <option value="">Select Gender</option>
                      <option value="Male" {{($editdata->gender=="Male")?"selected":""}}>Male</option>
                      <option value="Female" {{($editdata->gender=="female")?"selected":""}}>Female</option>
                  </select>
             </div>
             <div class="col-md-4">
                <label>Image</label>
                 <input type="file" name="image" id="image" class="form-control">
             </div>

             <div class="col-md-2">
                <img id="showImage" src="{{(!empty($editdata->image))?url('/upload/user_images/'.$editdata->image):url('/upload/no-image.png')}}" 
                style="width: 80px; height: 90px;border: 1px solid #000">
             </div>

             <div class="col-md-4" style="padding: 30px">
                <button type="submit" class="btn btn-primary">Profile Update</button>
             </div>
         </div>
           </form>
	   </div>
	</div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
     $('#image').change(function(e){
       var reader = new FileReader();
     reader.onload = function(e){
       $('#showImage').attr('src', e.target.result);
     }
     reader.readAsDataURL(e.target.files['0']);
    });
 
     });
     
  </script>
@endsection