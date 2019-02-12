<?php

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

Route::get('/welcome', function () {
    return view('welcome');
});
//HEALTH THEME
Route::get('/', function () { return view('landing/index',['is_root'=>true]); });
Route::get('/about', function () { return view('landing/about'); });
Route::get('/contact', function () { return view('landing/contact'); });
Route::get('/elements', function () { return view('landing/elements'); });
Route::get('/news', function () { return view('landing/news'); });
Route::get('/services', function () { return view('landing/services'); });

//ARGON ADMIN ocifetchstatement
Route::middleware(['auth','verified'])->group(function () {
  Route::prefix('user')->group(function () {
    // Matches The "/user/..." URL
    Route::get('/', function () { return view('user/index'); });
    Route::get('/icons', function () { return view('user/icons'); });
    Route::get('/login', function () { return view('user/login'); });
    Route::get('/maps', function () { return view('user/maps'); });
    Route::get('/profile', function () { return view('user/profile'); });
    Route::get('/register', function () { return view('user/register'); });
    Route::get('/tables', function () { return view('user/tables'); });

    Route::resource('/patient', 'PatientController');
    Route::resource('/patient/{id}/treatment', 'TreatmentController');
    Route::resource('/patient/{id}/prescription', 'PrescriptionController');
  });
  Route::prefix('api')->group(function () {
    // Matches The "/api/..." URL
    //Route::get('/patient', 'PatientController@api_index');
  });

});

Route::prefix('login')->group(function () {
    Route::get('/{provider}', 'Auth\LoginController@redirectToProvider')->name('login.provider');
    Route::get('/{provider}/callback', 'Auth\LoginController@handleProviderCallback')->name('login.provider.callback');
});

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');
