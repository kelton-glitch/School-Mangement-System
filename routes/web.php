<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Backend\ProfileController;
use App\Http\Controllers\Backend\Setup\FeeAmountController;
use App\Http\Controllers\Backend\Setup\FeeCategoryController;
use App\Http\Controllers\Backend\Setup\StudentClassController;
use App\Http\Controllers\Backend\Setup\StudentYearController;
use App\Http\Controllers\Backend\Student\StudentRegController;
use App\Models\StudentClass;
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
    $class_count = StudentClass::all()->count(); 
    return view('admin.index', compact('user_count','class_count'));
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

    Route::post('/password/update', [ProfileController::class, 'PasswordUpdate'])->name('password.update');

});

// Student Class Routes

Route::prefix('setups')->group(function() {

    Route::get('/student/class/view',[StudentClassController::class,'ViewStudent'])->name('student.class.view');

    Route::get('/student/class/add',[StudentClassController::class,'StudentClassAdd'])->name('student.class.add');

    Route::post('/student/class/store',[StudentClassController::class,'StudentClassStore'])->name('store.student.class');

    Route::get('/student/class/edit/{id}',[StudentClassController::class, 'StudentClassEdit'])->name('student.class.edit');

    Route::post('student/class/update/{id}',[StudentClassController::class, 'StudentClassUpdate'])->name('update.student.class');

    Route::get('/student/class/delete/{id}',[StudentClassController::class, 'StudentClassDelete'])->name('student.class.delete');

    // Student Year Routes

    Route::get('/student/year/view',[StudentYearController::class,'ViewYear'])->name('student.year.view');

    Route::get('/student/year/add',[StudentYearController::class,'StudentYearAdd'])->name('student.year.add');

    Route::post('/student/year/store',[StudentYearController::class,'StudentYearStore'])->name('store.student.year');

    Route::get('/student/year/edit/{id}',[StudentYearController::class, 'StudentYearEdit'])->name('student.year.edit');

    Route::post('student/year/update/{id}',[StudentYearController::class, 'StudentYearUpdate'])->name('update.student.year');

    Route::get('/student/year/delete/{id}',[StudentYearController::class, 'StudentYearDelete'])->name('student.year.delete');

    // Fee Category Routes

    Route::get('/fee/category/view',[FeeCategoryController::class,'ViewFeeCategory'])->name('fee.category.view');

    Route::get('/fee/category/add',[FeeCategoryController::class,'FeeCategoryAdd'])->name('fee.category.add');

    Route::post('/fee/category/store',[FeeCategoryController::class,'FeeCategoryStore'])->name('store.fee.category');

    Route::get('/fee/category/edit/{id}',[FeeCategoryController::class, 'FeeCategoryEdit'])->name('fee.category.edit');

    Route::post('fee/category/update/{id}',[FeeCategoryController::class, 'FeeCategoryUpdate'])->name('update.fee.category');

    Route::get('/fee/category/delete/{id}',[FeeCategoryController::class, 'FeeCategoryDelete'])->name('fee.category.delete');

    // Fee Category Amount Routes

    Route::get('/fee/amount/view',[FeeAmountController::class,'ViewFeeAmount'])->name('fee.amount.view');

    Route::get('/fee/amount/add',[FeeAmountController::class,'AddFeeAmount'])->name('fee.amount.add');

    Route::post('fee/amount/store',[FeeAmountController::class,'StoreFeeAmount'])->name('store.fee.amount');

    Route::get('/fee/amount/edit/{fee_category_id}',[FeeAmountController::class,'EditFeeAmount'])->name('fee.amount.edit');

    Route::post('fee/amount/update/{fee_category_id}',[FeeAmountController::class,'UpdateFeeAmount'])->name('update.fee.amount');

    Route::get('/fee/amount/details/{fee_category_id}',[FeeAmountController::class,'FeeAmountDetails'])->name('fee.amount.details');

});

// Student Registration Routes

Route::prefix('students')->group(function() {

    Route::get('/reg/view', [StudentRegController::class, 'StudentRegView'])->name('student.registration.view');

    Route::get('/reg/add', [StudentRegController::class, 'StudentRegAdd'])->name('student.registration.add');

    Route::post('/reg/store', [StudentRegController::class, 'StudentRegStore'])->name('store.student.registration');





});

