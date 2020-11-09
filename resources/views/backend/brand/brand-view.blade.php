@extends('backend.layouts.master')
@section('content')
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Manage brand</h1>
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
                <h3> Brand List
                	
                 <a class="btn btn-success float-right btn-sm" href="{{ route('brands.add')}}"><i class="fa fa-plus-circle"></i>Add brand</a>
              
                </h3>
              </div><!-- /.card-body -->
              <div class="card-body">
              	<table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>SL</th>
                  <th>brand Name</th>
                  
                </tr>
                </thead>
                <tbody>

           @foreach($alldata as $key => $brand)
           @php
           $count_brand = App\Model\Product::where('brand_id',$brand->id)->count();
         @endphp
                <tr>
                  <td>{{$key+1}}</td>
                  
               
                  <td>{{ $brand->name}}</td>
                  
                  <td>
                    <a href="{{ route('brands.edit',$brand->id)}}" class="btn btn-sm btn-primary" title="edit"><i class="fa fa-edit"></i></a>
                    @if($count_brand<1)
                    <a href="{{ route('brands.delete',$brand->id)}}" id="delete" class="btn btn-sm btn-danger" title="delete"><i class="fa fa-trash"></i></a>
                    @endif
                  </td>
                </tr>
            @endforeach

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