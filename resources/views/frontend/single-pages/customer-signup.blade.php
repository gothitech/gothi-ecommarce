@extends('frontend.layouts.master')
@section('content')
<style>
         
        #login .container #login-row #login-column #login-box {
        margin-top: 40px;
        margin-bottom: 60px;
        max-width: 600px;
        
        border: 1px solid #9C9C9C;
        background-color: #EAEAEA;
        
        }
        #login .container #login-row #login-column #login-box #login-form {
        padding: 20px;
        }
        #login .container #login-row #login-column #login-box #login-form #register-link {
        margin-top: -85px;
}
</style>
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url({{asset('frontend/images/bg-01.jpg')}});">
	<h2 class="ltext-105 cl0 txt-center">
	Customer SingUp
	</h2>
</section>	
<section>
    <div id="login">
       
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                    <form id="login-form" class="form" action="{{route('customer.signup.store')}}" method="post">
                        @csrf
                            <h3 class="text-center text-info">Sign Up</h3>
                            <div class="form-group">
                                <label for="name" class="text-info">Full Name:</label><br>
                                <input type="text" name="name" id="name" class="form-control">
                            <font color="red">{{($errors->has('name'))?($errors->first('name')):''}}</font>
                            </div>
                            <div class="form-group">
                                <label for="email" class="text-info">Email:</label><br>
                                <input type="text" name="email" id="email" class="form-control">
                                <font color="red">{{($errors->has('email'))?($errors->first('email')):''}}</font>
                            </div>
                            <div class="form-group">
                                <label for="mobile" class="text-info">Mobile:</label><br>
                                <input type="text" name="mobile" id="mobile" class="form-control">
                                <font color="red">{{($errors->has('mobile'))?($errors->first('mobile')):''}}</font>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                                <font color="red">{{($errors->has('password'))?($errors->first('password')):''}}</font>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Confirmation Password:</label><br>
                                <input type="text" name="confirmation_password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            <i class="fa fa-user">all ready your account ?</i>         <a href="{{route('customer.singin')}}"><span>Sign In</span></a>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
	    $(document).ready(function(){
			$('#login-form').validate({

			
			rules: {
				name: {
					required: true,
				},

				email: {
					required: true,
					email: true,
				},
                mobile: {
					required: true,
					
				},
				password: {
					required: true,
					minlength: 6,
				},
				confirmation_password: {
					required: true,
					equalTo: '#password',
				}
			},

			messages:{
				name: {
					required : 'please enter full name',
				},

				email: {
					required : 'please enter  email',
					email: 'Please enter a <em>valid</em> email address',

				},
                mobile: {
					required : 'please enter  mobile',
				},
				password: {
					required : 'please enter  password',
					minlength : 'Password will be minimum 6 charaters or numbers',
				},
			confirmation_password: {
					required : 'please enter confirm password',
					equalTo : 'Confirm password did not match',
				}
			},

			errorElement: 'span',
			errorPlacement: function (error, element){
				error.addClass('invalid-feedback');
				element.closest('.form-group').append(error);
			},
			highlight: function (element, errorClass, validClass){
				$(element).addClass('is-invalid');
			},

			unhighlight: function (element, errorClass, validClass){
				$(element).removeClass('is-invalid');
			}

		})
		});

	</script>

</section>

@endsection