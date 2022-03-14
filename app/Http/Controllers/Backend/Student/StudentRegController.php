<?php

namespace App\Http\Controllers\Backend\Student;

use App\Http\Controllers\Controller;
use App\Models\AssignStudent;
use App\Models\StudentClass;
use App\Models\StudentYear;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;

class StudentRegController extends Controller
{
    public function StudentRegView()
    {
        $data['allData'] = AssignStudent::all();
        return view('backend.student.student_reg.student_view', $data);
    }

    public function StudentRegAdd()
    {
        $data['years'] = StudentYear::all();
        $data['classes'] = StudentClass::all();
        $data['years'] = StudentYear::all();
        return view('backend.student.student_reg.student_add', $data);
    }

    public function StudentRegStore(Request $request)
    {
        DB::transaction(function() use($request) {
            $checkYear = StudentYear::find($request->year_id)->name;
            $student = User::where('usertype','Student')->orderBy('id','DESC')->first();

            if($student == null) {
                $firstReg = 0;
                $studentId = $firstReg+1;
                if($studentId < 10) {
                    $id_no = '0000'.$studentId;
                } elseif($studentId<100){
                    $id_no = '000'.$studentId;
                } elseif($studentId<1000) {
                    $id_no = '00'.$studentId;
                } elseif($studentId<10000) {
                    $id_no = '0'.$studentId;
                } //End 2nd If
                else{
                    $student = User::where('usertype','Student')->orderBy('id','DESC')->first()->id;
                    $studentId = $student+1;

                    if($studentId < 10) {
                        $id_no = '0000'.$studentId;
                    } elseif($studentId<100){
                        $id_no = '000'.$studentId;
                    } elseif($studentId<1000) {
                        $id_no = '00'.$studentId;
                    } elseif($studentId<10000) {
                        $id_no = '0'.$studentId;
                    }

                } //End Else

                $final_id_no = $checkYear.$id_no;
                $user = new User();
                $code = rand(00000000,99999999);
                $user->id_no = $final_id_no;
                $user->password = bcrypt($code);
                $user->usertype = 'Student';
                $user->code = $code;
                $user->name = $request->name;
                $user->fname = $request->fname;
                $user->mname = $request->mname;
                $user->mobile = $request->mobile;
                $user->address = $request->address;
                $user->gender = $request->gender;
                $user->dob = date('Y-m-d',strtotime($request->dob));

                if($request->file('image')) {
                    $file = $request->file('image');
                        $filename = date('YmdHi').$file->getClientOriginalName();
                    $file->move(public_path('upload/student_images'),$filename);
                    $user['image'] = $filename;
                }
                $user->save();
                
            } //End 1st If
        });
    } // End Method
}
