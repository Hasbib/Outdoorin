<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginadminController;
use App\Http\Controllers\ProductController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
    });

Route::resource('/registrasi', RegistrasiController::class);


Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout'])->middleware('auth:sanctum');



Route::resource('/registrasiadmin', RegistrasiadminController::class);


Route::post('/loginadmin', [LoginadminController::class, 'loginadmin']);
Route::post('/logoutadmin', [LoginadminController::class, 'logoutadmin'])->middleware('auth:sanctum');

Route::resource('/product', ProductController::class);

Route::resource('/pembayaran', PembayaranController::class);