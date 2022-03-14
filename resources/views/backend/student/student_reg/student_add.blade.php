@extends('admin.admin_master')
@section('admin')

<!-- You Can Remove this completely -->

<div class="content-wrapper">
    <div class="container-full">


        <section class="content">

            <!-- Basic Forms -->
            <div class="box">
                <div class="box-header with-border">
                    <h4 class="box-title">Add Student</h4>

                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col">
                            <form method="post" action="{{ route('store.student.year') }}">
                                @csrf
                                <div class="row">
                                    <div class="col-12">

                                        <div class="row">
                                            <!-- 1st Row -->
                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Student Name <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="name" class="form-control" required="">
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Father's Name <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="fname" class="form-control" required="">
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Mother's Name <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="mname" class="form-control" required="">
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                        </div> <!-- End 1st Row -->


                                        <div class="row">
                                            <!-- 2nd Row -->
                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Mobile Number <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="mobile" class="form-control" required="">
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Address <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="address" class="form-control" required="">
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Gender <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="gender" id="gender" required="" class="form-control">
                                                            <option value="" selected="" disabled="">Select Gender</option>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>

                                                        </select>
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                        </div> <!-- End 2nd Row -->

                                        <div class="row">
                                            <!-- 3rd Row -->
                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Date of Birth <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="date" name="dob" class="form-control" required="">
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Discount <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="discount" class="form-control" required="">
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Year <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="gender" id="gender" required="" class="form-control">
                                                            <option value="" selected="" disabled="">Select Year</option>
                                                            @foreach ($years as $year)
                                                            <option value="{{ $year->id }}">{{ $year->name }}</option>

                                                            @endforeach
                                                            

                                                        </select>
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->

                                        </div> <!-- End 3rd Row -->

                                        <div class="row">
                                            <!-- 4th Row -->
                                            <div class="col-md-4">

                                                <div class="form-group">
                                                    <h5>Class <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="gender" id="gender" required="" class="form-control">
                                                            <option value="" selected="" disabled="">Select Class</option>
                                                            @foreach ($classes as $class)
                                                            <option value="{{ $class->id }}">{{ $class->name }}</option>

                                                            @endforeach
                                                            

                                                        </select>
                                                    </div>
                                                </div>

                                            </div> <!-- End Col-md-4 -->



                                        </div> <!-- End 4th Row -->




                                        <div class="text-xs-right">
                                            <input type="submit" class="btn btn-rounded btn-info mb-5" value="Submit">
                                        </div>
                            </form>

                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

        </section>


    </div>
</div>


@endsection