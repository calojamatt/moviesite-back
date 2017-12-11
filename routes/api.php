<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/movies','MoviesController@index');
Route::post('/movies','MoviesController@store');
Route::put('/movies/{id}','MoviesController@update');
Route::delete('/movies/{id}','MoviesController@delete');

Route::get('/theaters','TheatersController@index');
Route::post('/theaters','TheatersController@store');
Route::put('/theaters','TheatersController@update');
Route::delete('/theaters','TheatersController@delete');


Route::resource('theatersmovies','TheatersMoviesController');
