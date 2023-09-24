<?php
use App\Http\Controllers\CarResellController;
use Illuminate\Support\Facades\Route;
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
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/car_add', 'HomeController@car_add')->name('car_add');
Route::get('/All_car', 'HomeController@All_car')->name('All_car');
Route::resource('cars', CarResellController::class);
