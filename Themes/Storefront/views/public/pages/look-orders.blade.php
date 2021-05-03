@extends('public.layout')


@push('styles')
    <style>
        .btn-search-order {
            background-color: #0267e1;
            color: #fff;
            width: 100%;
        }

        .btn-search-order:hover {
            background-color: #024495;
            color: #fff;
        }

        .show-tracking-oder table{
            text-align: center;
        }
    </style>
@endpush

@section('content')
    <section class="custom-page-wrap clearfix">
        <div class="container">
            <div class="custom-page-content clearfix">
                <!-- tracking donhang -->
                <div class="tracking-order">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 m-auto">
                                <form action="">
                                    <div class="form-group">
                                        <label for="code-order">Nhập mã đơn hàng:<span>*</span></label> 
                                        <input type="text" name="" id="code-order" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="phone-order">Điện thoại đặt hàng:<span>*</span></label> 
                                        <input type="text" name="" id="phone-order" class="form-control">
                                    </div>
                                    <button class="btn btn-search-order"><i class="las la-search"></i> Tra cứu</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tracking donhang -->
                <!-- show tracking order  -->
                <div class="show-tracking-oder mt-5">
                    <div class="container">
                       <div class="row">
                            <div class="col-md-12 m-auto">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Mã đơn hàng</th>
                                                <th scope="col">Tên sản phẩm</th>
                                                <th scope="col">Hình ảnh</th>
                                                <th scope="col">Trạng thái</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td><span class="badge badge-primary">Primary</span></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td><span class="badge badge-success">Primary</span></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td colspan="2">Larry the Bird</td>
                                                <td><span class="badge badge-primary">Primary</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tracking order  -->
            </div>
        </div>
    </section>
@endsection
