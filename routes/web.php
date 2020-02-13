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

Route::resource('customsearch', 'CustomSearchController');

//Ajax Crud Laravel
Route::resource('ajax-crud', 'AjaxController');

Route::resource('advice', 'AdviceController');

//Route::get('advice/dataTable', ['as' => 'advice.dataTable', 'uses' => 'Advice\AdviceController@dataTable']);
