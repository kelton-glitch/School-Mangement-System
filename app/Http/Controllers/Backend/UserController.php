<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function UserView() {
        $data['allData'] = User::where('usertype','Admin')->get();     //One way to get data from the db
        return view('backend.user.view_user', $data);
    }

    public function UserAdd() {
        return view('backend.user.add_user');
    }

    public function UserStore(Request $request) {
        $validatedData = $request->validate([
            'email' => 'required|unique:users',
            'name' => 'required',
        ]);
        $data = new User();
        $code = rand(00000000,99999999);
        $data->usertype = 'Admin';
        $data->role = $request->role;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->password = bcrypt($code);
        $data->code = $code;
        $data->save();

        $notification = array(
            'message' => 'User Added Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('user.view')->with($notification);
    }

    public function UserEdit($id) {
        $editData = User::find($id);    //Another way to get data from the db
        return view('backend.user.edit_user', compact('editData'));
    }

    public function UserUpdate(Request $request, $id) {
        $data = User::find($id);
        
        $data->name = $request->name;
        $data->email = $request->email;
        $data->role = $request->role;
        $data->save();

        $notification = array(
            'message' => 'User Updated Successfully',
            'alert-type' => 'info'
        );

        return redirect()->route('user.view')->with($notification);
    }

    public function UserDelete($id) {
        $user = User::find($id);
        $user->delete();

        $notification = array(
            'message' => 'User Deletd Successfully',
            'alert-type' => 'info'
        );

        return redirect()->route('user.view')->with($notification);
    }
}
