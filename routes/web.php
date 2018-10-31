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

Route::get('/', function () { return view('landing/index',['is_root'=>true]); });
Route::get('/about', function () { return view('landing/about'); });
Route::get('/contact', function () { return view('landing/contact'); });
Route::get('/elements', function () { return view('landing/elements'); });
Route::get('/news', function () { return view('landing/news'); });
Route::get('/services', function () { return view('landing/services'); });

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
