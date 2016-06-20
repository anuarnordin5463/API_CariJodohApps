<?php

namespace Api\Controllers;

use App\User;
use App\ActiveUser;
use App\UserProfile;
use Dingo\Api\Facade\API;
use Illuminate\Http\Request;
use Api\Requests\UserRequest;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends BaseController
{
    public function me(Request $request)
    {
        return JWTAuth::parseToken()->authenticate();
    }

    public function authenticate(Request $request)
    {

        $proceed = true;

        // grab credentials from the request
        $credentials = $request->only('email', 'password');
		$deviceId = $request->get('device_id');
		
        try {
            // attempt to verify the credentials and create a token for the user
            if (! $token = JWTAuth::attempt($credentials)) {

                $message = "Invalid Username / Password";
                $status = "error";
                $proceed = false;
                //
                //return response()->json(['error' => 'invalid_credentials'], 401);
            }
        } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
                $message = "Unable to create token";
                $status = "error";
                $proceed = false;
        }

        $signature = new UUID;

        if($proceed){
            //generate token for user


            //$token = $this->getToken($email);
            $login_time = date('Y-m-d H:i:s');

            //if success login , add token to active_user
            $activeUser = [
                'email' => $credentials['email'],
                'signature' => $signature->uuid,
				'device_id' => $deviceId,
                'login_time' => $login_time,
                'last_active' => "",
            ];

            $activeUser = ActiveUser::create($activeUser);

            if(!empty($activeUser->id)){
                $status = 'success';
            }else{
                $status = 'error';
            }

            $message = "Successfully login!";

        }
        $auth_token = compact('token');
        if(!$auth_token['token']){
            $reprinttoken = "";
        }else{
            $reprinttoken = $auth_token['token'];
        }
        return response()->json(array(
            'status' => $status,
            'message' => $message ,
            'signature' => $signature->uuid,
            'auth_token' => $reprinttoken
        ));
    }

    public function validateToken() 
    {
        // Our routes file should have already authenticated this token, so we just return success here
        return API::response()->array(['status' => 'success'])->statusCode(200);
    }

    public function register(UserRequest $request)
    {
        $proceed = true;
        $status = null;

        $newUser = [
            'username' => $request->get('username'),
            'email' => $request->get('email'),
            'password' => bcrypt($request->get('password')),

        ];

        $userEmail = [
            'user_email' => $request->get('email'),
        ];

        //check if email already existed.
        $email = $userEmail['user_email'];
        $affectedRows = UserProfile::where('user_email', '=', $email)->first();
        if($affectedRows){
            $status = "error";
            $message = 'Email already taken!';
            $proceed = false;
        }

        if($proceed){
            //create new user profile into users_profile table
            $userProfile = UserProfile::create($userEmail);

            if(!empty($userProfile)){
                //create new user into users table
                $user = User::create($newUser);
            }

            if(!empty($user->id)){
                $status = 'success';
                $message = "Successfully registered!";
            }
        }

        return response()->json(array(
            'status' => $status,
            'message' => $message,
        ));
    }

    public function register2(UserRequest $request)
    {
        $proceed = true;
        $status = null;

        $newUser = [
            'username' => $request->get('username'),
            'email' => $request->get('email'),
            'password' => bcrypt($request->get('password')),

        ];

        $userEmail = [
            'user_email' => $request->get('email'),
        ];

        //check if email already existed.
        $email = $userEmail['user_email'];
        $affectedRows = UserProfile::where('user_email', '=', $email)->first();
        if($affectedRows){
            $status = "error";
            $message = 'The email has already been taken!';
            $proceed = false;
        }

        if($proceed){
            //create new user profile into users_profile table
            $userProfile = UserProfile::create($userEmail);

            if(!empty($userProfile)){
                //create new user into users table
                $user = User::create($newUser);
            }

            if(!empty($user->id)){
                $status = 'success';
                $message = "Successfully registered!";
            }
        }

        return response()->json(array(
            'status' => $status,
            'message' => $message,
        ));
    }

    public function logout(Request $request) {

        $signature = $request->only('signature');

        //clear from active user
        $affectedRows = ActiveUser::where('signature', '=', $signature)->delete();

        if($affectedRows){
            $status = 'success';
        }else{
            $status = 'failed';
        }
        return response()->json(array(
            'status' => $status,
            'message' => "Successfully log-out!"
        ));


    }

}