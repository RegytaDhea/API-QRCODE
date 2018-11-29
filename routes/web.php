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
Route::get('/', function () {
    return view('welcome');
});

Route::get('kelas', 'KelasController@kelas');
Route::get('index/{id}', 'JadwalController@index');
Route::get('pertemuan/show/{id}', 'PertemuanController@pertemuan');
Route::get('pertemuan/create/{id_jadwal}', 'PertemuanController@create');
Route::post('pertemuan/new', "PertemuanController@store")->name('pertemuan.new');



// Auth::routes();

Route::get('/home', 'HomeController@index');
Route::post('pertemuan/create', 'PertemuanController@create');
