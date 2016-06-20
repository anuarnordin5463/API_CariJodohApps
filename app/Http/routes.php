<?php
$api = app('Dingo\Api\Routing\Router');

// Version 1 of our API
$api->version('v1', function ($api) {

	// Set our namespace for the underlying routes
	$api->group(['namespace' => 'Api\Controllers', 'middleware' => '\Barryvdh\Cors\HandleCors::class'], function ($api) {

		// Login route

		$api->post('register', 'AuthController@register');
		$api->post('register2', 'AuthController@register2');

		$api->post('login', 'AuthController@authenticate');

		$api->get('/test', function(){
				 return response()->json(['foo'=>'bar']);
		});

		$api->post('uploadImage', 'ProfileController@upload');

		$api->post('chat', 'ChatController@chat');

		// Dogs! All routes in here are protected and thus need a valid token
		//$api->group( [ 'protected' => true, 'middleware' => 'jwt.refresh' ], function ($api) {
		$api->group( [ 'middleware' => 'jwt.auth' ], function ($api) {

			$api->post('update', 'UpdateProfileController@update');
			$api->post('getProfile', 'UpdateProfileController@getUpdate');
			$api->post('getDetail', 'UpdateProfileController@getDetail');

			$api->post('logout', 'AuthController@logout');
			$api->post('list', 'ProfileListController@profileList');

			//$api->post('list', 'UpdateProfileController@profileList');

			$api->get('users/me', 'AuthController@me');
			$api->get('validate_token', 'AuthController@validateToken');
			
			$api->get('dogs', 'DogsController@index');
			$api->post('dogs', 'DogsController@store');
			$api->get('dogs/{id}', 'DogsController@show');
			$api->delete('dogs/{id}', 'DogsController@destroy');
			$api->put('dogs/{id}', 'DogsController@update');
			
			//test json return
			//$api->get('dogs', 'DogsController@index');*/
			

		});

	});

});
