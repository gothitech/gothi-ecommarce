<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;

class CustomerController extends Controller
{
    public function view(){
        $alldata = User::where('usertype', 'customer')->where('status', '1')->get();
        return view('backend.customer.view-customer', \compact('alldata'));
    }

    public function Drafview(){
        $alldata = User::where('usertype', 'customer')->where('status', '0')->get();
        return view('backend.customer.draf-customer', \compact('alldata'));
    }

    public function delete(Request $request){
        $customer = User::find($request->id);
        if (file_exists('upload/user_images/' .$customer->image) AND ! empty($customer->image)) {
            unlink('public/upload/user_images/' . $customer->image);
        }
       $customer->delete();
       return redirect()->route('drafs.view')->with('success', 'Data deleted success');
    }
}
