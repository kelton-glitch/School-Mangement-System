<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Backend\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use Laravel\Jetstream\Rules\Role;

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

Route::get('/', function () {
    return view('auth.login');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    $user_count = User::all()->count(); 
    return view('admin.index', compact('user_count'));
})->name('dashboard');

Route::get('/admin/logout', [AdminController::class, 'Logout'])->name('admin.logout');

// All User Management Routes

Route::get('/user/view', [UserController::class, 'UserView'])->name('user.view');

Route::prefix('users')->group(function() {

    Route::get('/view', [UserController::class, 'UserView'])->name('user.view');

    Route::get('/add', [UserController::class, 'UserAdd'])->name('user.add');

    Route::post('store', [UserController::class, 'UserStore'])->name('user.store');

    Route::get('/edit/{id}', [UserController::class, 'UserEdit'])->name('user.edit');

    Route::post('/update/{id}', [UserController::class, 'UserUpdate'])->name('user.update');

    Route::get('/delete/{id}', [UserController::class, 'UserDelete'])->name('user.delete');

});

// User Profile and Change Password

Route::prefix('profile')->group(function() {

    Route::get('/view', [ProfileController::class, 'ProfileView'])->name('profile.view');

    Route::get('/edit', [ProfileController::class, 'ProfileEdit'])->name('profile.edit');

    Route::post('/update/{id}', [ProfileController::class, 'ProfileUpdate'])->name('profile.update');

    Route::get('/password/view', [ProfileController::class, 'PasswordView'])->name('password.view');

    

});


