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
use App\Model\Payment;
use App\Model\Order;
use App\Model\orderDetail;

use Mail;
use Cart;
use App\User;
use Auth;
use DB;
use Session;

class DashboardController extends Controller
{
    public function dashboard(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['user'] = Auth::user();
        return view('frontend.single-pages.customer-dashboard', $data);
    }

    public function editprofile(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['editdata'] =User::find(Auth::user()->id);
        return view('frontend.single-pages.customer-edit-profile', $data);
    }

    public function UpdateProfile(Request $request){
        $user = User::find(Auth::user()->id);

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|unique:users,email,'.$user->id,
            'mobile' => 'required', 'unique:users,mobile'.$user->id,
            'password' => ['min:6|required_with:confirmation_password|same:confirmation_password','
            confirmation_password' => 'min:6']
        ]);
        
        $user->name = $request->name;
        $user->email = $request->email;
        $user->mobile = $request->mobile;
        $user->address = $request->address;
        $user->gender = $request->gender;
        if ($request->file('image')) {
            $file = $request->file('image');
            @unlink(public_path('upload/user_images/'.$user->image));
            $filename =date('YmdHi').$file->getClientORiginalName();
            $file->move(public_path('upload/user_images'), $filename);
            $user['image'] = $filename;
        }
        $user->save();
        return \redirect()->route('/')->with('success', 'Profile updated successfully');
    }

    public function customerpasswordchange(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        return view('frontend.single-pages.customer-change-password', $data);
    }

    public function updatepassword(Request $request){
        if (Auth::attempt(['id'=>Auth::user()->id, 'password'=>$request->current_password])){
  
            $user = User::find(Auth::user()->id);
            $user->password = bcrypt($request->new_password);
            $user->save();
            return redirect()->route('dashboard')->with('success' , 'Password changed successfully');
        }else{
            return redirect()->back()->with('error', 'Sorry! your current password dost not match');
        }
    }

    public function payment(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        return view('frontend.single-pages.customer-payment', $data);
    }

    public function PaymentStore(Request $request){
       $this->validate($request,[
           'payment_method' => 'required'
       ]);
       DB::transaction(function() use($request){
           $payment = new Payment();
           $payment->payment_method = $request->payment_method;
           $payment->transaction_no = $request->transaction_no;
           $payment->save();
           $order = new Order();
           $order->user_id = Auth::user()->id;
           $order->shipping_id = Session::get('shipping_id');
           $order->payment_id = $payment->id;
           $order_data = Order::orderBy('id','desc')->first();
           if($order_data == null){
               $firstReg ='0';
               $order_no = $firstReg+1;
           }else{
               $order_data = Order::orderBy('id','desc')->first()->order_no;
               $order_no = $order_data+1;
           }
           $order->order_no = $order_no;
           $order->order_total = $request->order_total;
           $order->status = '0';
           $order->save();
           $contents = Cart::content();
           foreach ($contents as $content){
               $order_details = new orderDetail();
               $order_detaits->order_id =$order->id;
               $order_detaits->product_id = $content->id;
               $order_detaits->color_id = $content->options->color_id;
               $order_detaits->size_id = $content->options->size_id;
               $order_details->quantity = $content->qty;
               $order_details->save();
           }
       });
       Cart::destroy();
       return \redirect()->route('customer.order.list')->with('success','Data saved successfully');
    }

    public function OrderList(){
        dd('ok');
    }

}
