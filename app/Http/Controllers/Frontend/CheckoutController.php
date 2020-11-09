<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Logo;
use App\Model\Slider;
use App\Model\Contact;
use App\Model\About;
use App\Model\Communicate;
use App\Model\Product;
use App\Model\ProductSubImage;
use App\Model\ProductColor;
use App\Model\ProductSize;
use App\Model\Size;
use App\Model\Color;
use Mail;
use Cart;
use App\User;
use DB;
use App\Model\Shipping;
use App\Model\Payment;
use App\Model\Order;
use App\Model\OrderDetail;
use Session;
use Auth;

class CheckoutController extends Controller
{
    public function SingIn(){
            $data['logo'] = Logo::first();
            $data['contact'] = Contact::first();
            return view('frontend.single-pages.customer-signin', $data);
    }

    public function SingUp(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        return view('frontend.single-pages.customer-signup', $data);
}
 public function SingUpStore(Request $request){
     DB::transaction(function() use ($request){
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|unique:users,email',
            'mobile' => 'required', 'unique:users,mobile',
            'password' => 'min:6|required_with:confirmation_password|same:confirmation_password','
            confirmation_password' => 'min:6'
        
          
        ]);
        $code = rand(0000, 9999);
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->mobile = $request->mobile;
        $user->password =\bcrypt($request->address) ;
        $user->code = $code;
        $user->status = '0';
        $user->usertype = 'customer';
        $user->save();

        $data = array(
            'email'=>$request->email,
            'code'=> $code,
            
        );

        Mail::send('frontend.emails.verify-email', $data, function($message) use($data){
            $message->from('abdulgoni.me@gmail.com', 'Abdul Goni');
            $message->to($data['email']);
            $message->subject('Please verify your email address');

        });
       
    });
    return redirect()->route('email.verify')->with('success', 'Your message successfully sent');

}

public function EmailVerify(){
    $data['logo'] = Logo::first();
    $data['contact'] = Contact::first();
    return view('frontend.single-pages.email-verify', $data);
}

public function EmailVerifyStore(Request $request){
        $this->validate($request, [
            'email' => 'required',
            'code' => 'required' 
        ]);
        $checkData = User::where('email', $request->email)->where('code',$request->code)->first();
        if($checkData){
            $checkData->status ='1';
            $checkData->save();
            return redirect()->route('customer.singin')->with('success', 'Your  successfully email verified, please login');
        }else{
            return redirect()->route('email.verify')->with('error', 'Sorry! eamil or verification code does not match!');
        }
}

public function CheckOut(){
    $data['logo'] = Logo::first();
    $data['contact'] = Contact::first();
    return view('frontend.single-pages.customer-checkout', $data);
 }

 public function CheckOutStore(Request $request){
    $this->validate($request, [
        'name' => 'required',
        'email' => 'required|unique:users,email',
        'mobile_no' => 'required',
    ]);

    $checkout = new Shipping();
    $checkout->user_id = Auth::user()->id;
    $checkout->name = $request->name;
    $checkout->email = $request->email;
    $checkout->mobile_no = $request->mobile_no;
    $checkout->address = $request->address;
    $checkout->save();
    Session::put('shipping_id',$checkout->id);
    return redirect()->route('customer.payment')->with('success','Data saved successfully');
 }

}
