@extends('backend.layouts.master')
@section('content')
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Manage Product</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">User</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
<section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <section class="col-sm-12">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card">
              <div class="card-header">
                <h3> Product Details
                	
                 <a class="btn btn-success float-right btn-sm" href="{{ route('products.view')}}"><i class="fa fa-list"></i>Product List</a>
              
                </h3>
              </div><!-- /.card-body -->
              <div class="card-body">
              	<table id="example1" class="table table-bordered table-hover table sm">
                  <tbody>
                    <tr>
                      <td width="50%">Category</td>
                    <td width="50%">{{$product['category']['name']}}</td>
                    </tr>
                    <tr>
                      <td width="50%">Brand</td>
                    <td width="50%">{{$product['brand']['name']}}</td>
                    </tr>
                    <tr>
                      <td width="50%">Product Name</td>
                    <td width="50%">{{$product->name}}</td>
                    </tr>
                    <tr>
                      <td width="50%">Price</td>
                    <td width="50%">{{$product->price}}</td>
                    </tr>
                    <tr>
                      <td width="50%">Prodcut Short Description</td>
                    <td width="50%">{{$product->short_desc}}</td>
                    </tr>

                    <tr>
                      <td width="50%">Prodcut Description</td>
                    <td width="50%">{{$product->long_desc}}</td>
                    </tr>

                    <tr>
                      <td width="50%">Prodcut Description</td>
                    <td width="50%"> <img src="{{(!empty($product->image))?url('upload/product_images/'.$product->image):url('upload/no-image.png')}}" style="width: 50px; height: 50px;"></td>
                    </tr>

                    <tr>
                      <td width="50%">Prodcut Color</td>
                    <td width="50%">
                      @php 
                       $colors = App\Model\ProductColor::where('product_id',$product->id)->get();
                    
                      @endphp

                      @foreach($colors as $c)
                        {{$c['color']['name']}},
                      @endforeach
                    </td>
                    </tr>

                    <tr>
                      <td width="50%">Prodcut Size</td>
                    <td width="50%">
                      @php 
                       $sizes = App\Model\ProductSize::where('size_id',$product->id)->get();
                    
                      @endphp

                      @foreach($sizes as $c)
                        {{$c['size']['name']}},
                      @endforeach
                    </td>
                    </tr>
                    
                    <td width="50%">Prodcut Sub Image</td>
                    <td width="50%">
                      @php 
                       $sub_image = App\Model\ProductSubImage::where('product_id',$product->id)->get();
                      @endphp
                      @foreach($sub_image as $img)
                      <img src="{{url('/upload/product_images/product_sub_images/'.$img->sub_image)}}" style="width: 50px; height: 50px;">
                      @endforeach
                    </td>
                    </tr>

                  </tbody>
                    <tbody>


                </tbody>
                
              </table>

              </div>
            </div>
            </div>
          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">
               </div>
            </div>
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
@endsection