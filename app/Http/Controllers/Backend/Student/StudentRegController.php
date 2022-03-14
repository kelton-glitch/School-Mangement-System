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
            $student = User::where('usertype','student')->orderBy('id','DESC')->first();

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
                    $student = User::where('usertype','student')->orderBy('id','DESC')->first()->id;
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
                
            } //End 1st If
        });
    } // End Method
}
