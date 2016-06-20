<?php namespace App\Http\Controllers;


use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
class AuthController extends Controller {

    /**
     * API Login, on success return JWT Auth token
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */

    public function login(Request $request) {

        $credentials = $request->only('email','password');
        $email = $credentials['email'];
        $password = $credentials['password'];

        //$email = "imalpasha91@gmail.com";
        //$password = "12345";

        $results = DB::table('users')->where('email',$email )->where('password',MD5($password))->first();

        //$returnResult = str_replace (array('[', ']'), '' , $results);

        if(count($results)){
        //invalid & not registered

            //generate token for user
            $token = new UUID;

            //$token = $this->getToken($email);
            $login_time = date('Y-m-d H:i:s');

            //add user into active user table
            $id = DB::table('active_users')->insertGetId(
                array(
                    'email' => $email,
                    'token' => $token,
                    'login_time' => $login_time,
                    'last_active' => ""
                )
            );

            return response()->json(array(
                'status' =>  'success',
                'token' => $token->uuid,
                'users' =>  $results,
            ));
        }else{
            return response()->json(array(
                'status' =>  'failed',
                'password' => $password,
                'email' => $email,

            ));
        }




        //return response()->json(compact('token'));


        /*try {
            // attempt to verify the credentials and create a token for the user
            if (! $token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 401);
            }
        } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        // all good so return the token
        return response()->json(compact('token'));

        */
    }

    /**
     * Log out
     * Invalidate the token, so user cannot use it anymore
     * They have to relogin to get a new token
     * 
     * @param Request $request
     */

    public function logout(Request $request) {

        $credentials = $request->only('token');

        $token = $credentials['token'];

        $deleted = DB::table('active_users')->where('token',$token)->delete();

        if($deleted){
            $status = 'success';
        }else{
            $status = 'failed';
        }

        return response()->json(array(
            'status' =>  $status,
        ));


        //clear from active user

    }


}