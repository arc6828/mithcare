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
Route::get('/profile/{id}', function ($id) { return view('landing/show'); });
Route::prefix('theme')->group(function () {
    Route::get('/health', function () { return redirect('https://colorlib.com/preview/theme/health/'); });
    Route::get('/argon/landing', function () { return redirect('https://demos.creative-tim.com/argon-design-system/'); });
    Route::get('/argon/dashboard', function () { return redirect('https://demos.creative-tim.com/argon-dashboard/index.html'); });
});

Route::prefix('medical')->group(function () {
    Route::get('/', function () { return view('medical/index',['is_root'=>true]); });
    Route::get('/about', function () { return view('medical/about'); });
    Route::get('/contact', function () { return view('medical/contact'); });
    Route::get('/elements', function () { return view('medical/elements'); });
    Route::get('/news', function () { return view('medical/news'); });
    Route::get('/services', function () { return view('medical/services'); });
});
//ARGON ADMIN ocifetchstatement
Route::middleware(['auth','verified'])->group(function () {
  Route::prefix('user')->group(function () {
    // Matches The "/user/..." URL
    Route::get('/', function () { return view('user/index'); });
    Route::get('/icons', function () { return view('user/icons'); });
    Route::get('/login', function () { return view('user/login'); });
    Route::get('/maps', function () { return view('user/maps'); });
    Route::get('/profile/{id?}', function ($id = 1) { return view('user/profile'); });
    Route::get('/register', function () { return view('user/register'); });
    Route::get('/tables', function () { return view('user/tables'); });

    //Route::resource('/patient', 'PatientController');
    //Route::resource('/patient/{id}/treatment', 'TreatmentController');
    //Route::resource('/patient/{id}/prescription', 'PrescriptionController');


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

Route::resource('user/treatments', 'treatmentsController');

Route::resource('user/patients', 'patientsController');