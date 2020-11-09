<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

route::get('/', 'Frontend\FrontendController@index')->name('index');
route::get('about-us', 'Frontend\FrontendController@aboutUs')->name('about.us');
route::get('contact-us', 'Frontend\FrontendController@contactUs')->name('contact.us');
route::post('contact/store', 'Frontend\FrontendController@contactstore')->name('contact.store');
route::get('shoping/cart', 'Frontend\FrontendController@shoppingcart')->name('shopping.cart');
route::get('product-list', 'Frontend\FrontendController@productlist')->name('product.list');
route::get('product-category/{category_id}', 'Frontend\FrontendController@productWiseProduct')->name('category.wise.product');
route::get('product-brand/{brand_id}', 'Frontend\FrontendController@brandWiseProduct')->name('brand.wise.product');
route::get('/product-details/{slug}', 'Frontend\FrontendController@productDetailsinfo')->name('products.detais.info');

//Shopping-Cart

Route::get('/show-cart', 'Frontend\CartController@showCart')->name('show.cart');
Route::post('/add-to-cart', 'Frontend\CartController@addtoCart')->name('insert.cart');
Route::post('/add-to-update', 'Frontend\CartController@UpdateToCart')->name('update.cart');
Route::post('/add-to-update', 'Frontend\CartController@UpdateToCart')->name('update.cart');
Route::get('/delete-cart/{rowId}', 'Frontend\CartController@DeleteCart')->name('delete.cart');
Route::get('/customer-sigin', 'Frontend\CheckoutController@SingIn')->name('customer.singin');
Route::get('/customer-singup', 'Frontend\CheckoutController@SingUp')->name('customer.signup');
Route::post('/customer-singup-store', 'Frontend\CheckoutController@SingUpStore')->name('customer.signup.store');
Route::get('/email-verify', 'Frontend\CheckoutController@EmailVerify')->name('email.verify');
Route::post('/email-verify-store', 'Frontend\CheckoutController@EmailVerifyStore')->name('email.verify.store');
Route::get('/checkout', 'Frontend\CheckoutController@CheckOut')->name('customer.checkout');
Route::post('/checkout/store', 'Frontend\CheckoutController@CheckOutStore')->name('customer.checkout.store');



Auth::routes();
Route::group(['middleware'=>['auth','customer']], function(){
	  Route::get('/dashboard','Frontend\DashboardController@dashboard')->name('dashboard');
	  Route::get('/customer.edit.profile','Frontend\DashboardController@editprofile')->name('customer.edit.profile');
	  Route::post('/customer.update.profile','Frontend\DashboardController@UpdateProfile')->name('customer.update.profile');
	  Route::get('/customer.password.change','Frontend\DashboardController@customerpasswordchange')->name('customer.password.change');
	  Route::post('/customer.update.password','Frontend\DashboardController@updatepassword')->name('customer.update.password');
	  Route::get('/payment','Frontend\DashboardController@payment')->name('customer.payment');
	  Route::post('/payment/store','Frontend\DashboardController@PaymentStore')->name('customer.payment.store');
	  Route::get('/order-list','Frontend\DashboardController@OrderList')->name('customer.order.list');
});
Route::group(['middleware'=>['auth','admin']], function(){
	//admin-dashboard
Route::get('/home', 'HomeController@index')->name('home');
	Route::prefix('users')->group(function(){
	route::get('/view', 'Backend\UsersController@view')->name('users.view');
	route::get('/add', 'Backend\UsersController@add')->name('users.add');
	route::post('/store', 'Backend\UsersController@store')->name('users.store');
	route::get('/edit/{id}', 'Backend\UsersController@edit')->name('users.edit');
	route::post('/update/{id}', 'Backend\UsersController@update')->name('users.update');
	route::get('/delete/{id}', 'Backend\UsersController@delete')->name('users.delete');
});






Route::prefix('profile')->group(function(){
	route::get('/view', 'Backend\ProfileController@view')->name('profile.view');
	route::get('/password/view', 'Backend\ProfileController@passwordView')->name('password.view');
	route::post('/store', 'Backend\ProfileController@store')->name('profile.store');
	route::get('/edit', 'Backend\ProfileController@edit')->name('profile.edit');
	route::post('/update', 'Backend\ProfileController@update')->name('profile.update');
	route::get('/delete/{id}', 'Backend\ProfileController@delete')->name('profile.delete');
	route::post('/password/update', 'Backend\ProfileController@passwordupdate')->name('password.update.view');
});

Route::prefix('logos')->group(function(){
	route::get('/view', 'Backend\LogoController@view')->name('logos.view');
	route::get('/add', 'Backend\LogoController@add')->name('logos.add');
	route::post('/store', 'Backend\LogoController@store')->name('logos.store');
	route::get('/edit/{id}', 'Backend\LogoController@edit')->name('logos.edit');
	route::post('/update/{id}', 'Backend\LogoController@update')->name('logos.update');
	route::get('/delete/{id}', 'Backend\LogoController@delete')->name('logos.delete');
});

Route::prefix('sliders')->group(function(){
	route::get('/view', 'Backend\sliderController@view')->name('sliders.view');
	route::get('/add', 'Backend\sliderController@add')->name('sliders.add');
	route::post('/store', 'Backend\sliderController@store')->name('sliders.store');
	route::get('/edit/{id}', 'Backend\sliderController@edit')->name('sliders.edit');
	route::post('/update/{id}', 'Backend\sliderController@update')->name('sliders.update');
	route::get('/delete/{id}', 'Backend\sliderController@delete')->name('sliders.delete');
});

Route::prefix('contacts')->group(function(){
	route::get('/view', 'Backend\ContactController@view')->name('contacts.view');
	route::get('/add', 'Backend\ContactController@add')->name('contacts.add');
	route::post('/store', 'Backend\ContactController@store')->name('contacts.store');
	route::get('/edit/{id}', 'Backend\ContactController@edit')->name('contacts.edit');
	route::post('/update/{id}', 'Backend\ContactController@update')->name('contacts.update');
	route::get('/delete/{id}', 'Backend\ContactController@delete')->name('contacts.delete');
	route::get('communicate/delete/{id}', 'Backend\ContactController@Communicatedelete')->name('communicate.delete');
	route::get('/communicate', 'Backend\ContactController@viewCommunicate')->name('contacts.communicate');

});

Route::prefix('abouts')->group(function(){
	route::get('/view', 'Backend\AboutController@view')->name('abouts.view');
	route::get('/add', 'Backend\AboutController@add')->name('abouts.add');
	route::post('/store', 'Backend\AboutController@store')->name('abouts.store');
	route::get('/edit/{id}', 'Backend\AboutController@edit')->name('abouts.edit');
	route::post('/update/{id}', 'Backend\AboutController@update')->name('abouts.update');
	route::get('/delete/{id}', 'Backend\AboutController@delete')->name('abouts.delete');
});

Route::prefix('categories')->group(function(){
	route::get('/view', 'Backend\CategoryController@view')->name('categories.view');
	route::get('/add', 'Backend\CategoryController@add')->name('categories.add');
	route::post('/store', 'Backend\CategoryController@store')->name('categories.store');
	route::get('/edit/{id}', 'Backend\CategoryController@edit')->name('categories.edit');
	route::post('/update/{id}', 'Backend\CategoryController@update')->name('categories.update');
	route::get('/delete/{id}', 'Backend\CategoryController@delete')->name('categories.delete');
});

Route::prefix('brands')->group(function(){
	route::get('/view', 'Backend\BrandController@view')->name('brands.view');
	route::get('/add', 'Backend\BrandController@add')->name('brands.add');
	route::post('/store', 'Backend\BrandController@store')->name('brands.store');
	route::get('/edit/{id}', 'Backend\BrandController@edit')->name('brands.edit');
	route::post('/update/{id}', 'Backend\BrandController@update')->name('brands.update');
	route::get('/delete/{id}', 'Backend\BrandController@delete')->name('brands.delete');
});

Route::prefix('colors')->group(function(){
	route::get('/view', 'Backend\ColorController@view')->name('colors.view');
	route::get('/add', 'Backend\ColorController@add')->name('colors.add');
	route::post('/store', 'Backend\ColorController@store')->name('colors.store');
	route::get('/edit/{id}', 'Backend\ColorController@edit')->name('colors.edit');
	route::post('/update/{id}', 'Backend\ColorController@update')->name('colors.update');
	route::get('/delete/{id}', 'Backend\ColorController@delete')->name('colors.delete');
});

Route::prefix('sizes')->group(function(){
	route::get('/view', 'Backend\SizeController@view')->name('sizes.view');
	route::get('/add', 'Backend\SizeController@add')->name('sizes.add');
	route::post('/store', 'Backend\SizeController@store')->name('sizes.store');
	route::get('/edit/{id}', 'Backend\SizeController@edit')->name('sizes.edit');
	route::post('/update/{id}', 'Backend\SizeController@update')->name('sizes.update');
	route::get('/delete/{id}', 'Backend\SizeController@delete')->name('sizes.delete');
});

Route::prefix('products')->group(function(){
	route::get('/view', 'Backend\ProductController@view')->name('products.view');
	route::get('/add', 'Backend\ProductController@add')->name('products.add');
	route::post('/store', 'Backend\ProductController@store')->name('products.store');
	route::get('/edit/{id}', 'Backend\ProductController@edit')->name('products.edit');
	route::post('/update/{id}', 'Backend\ProductController@update')->name('products.update');
	route::get('/delete/{id}', 'Backend\ProductController@delete')->name('products.delete');
	route::get('/details/{id}', 'Backend\ProductController@details')->name('products.details');
});


Route::prefix('customers')->group(function(){
	route::get('/view', 'Backend\CustomerController@view')->name('customers.view');
	route::get('draf-view', 'Backend\CustomerController@Drafview')->name('drafs.view');
	route::get('/delete/{id}', 'Backend\CustomerController@delete')->name('customers.delete');
});

});