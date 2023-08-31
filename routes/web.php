<?php

use Illuminate\Support\Facades\Route;  
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::middleware(['auth', 'user-access:user'])->group(function () {
  
    Route::get('/dashboard', [HomeController::class, 'index'])->name('dashboard');
});

// Manager Routes

Route::middleware(['auth', 'user-access:manager'])->group(function () {
  
    Route::get('/manager/dashboard', [HomeController::class, 'managerDashboard'])->name('manager.dashboard');
});  


Route::middleware(['auth', 'user-access:super-admin'])->group(function () {
  
    Route::get('/super-admin/dashboard', [HomeController::class, 'superAdminDashboard'])->name('super.admin.dashboard');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');