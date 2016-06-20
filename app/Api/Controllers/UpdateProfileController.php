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
use Api\Requests\UpdateProfileRequest;


class UpdateProfileController extends BaseController
{

    public function update(UpdateProfileRequest $request)
    {

        $status = null;
        $message = null;
        $proceed = true;

        $token = JWTAuth::getToken();


        /*try{
             JWTAuth::parseToken()->authenticate();
        }catch(TokenInvalidException $e){
            $status = "error";
            $message = "Token is invalid!";
            $proceed = false;
        }*/

        if($proceed){

            $signature = $request->get('signature');
            $userProfile = [
                'user_name' => $request->get('userName'),
                'user_sex' => $request->get('userSex'),
                'user_dob' => $request->get('userDOB'),
                'user_mobile' => $request->get('userMobile'),
                'user_height' => $request->get('userHeight'),
                'user_weight' => $request->get('userWeight'),
                'user_smoke' => $request->get('userSmoke'),
                'user_country' => $request->get('userCountry'),
                'user_state' => $request->get('userState'),
                'user_town' => $request->get('userTown'),
                'user_education' => $request->get('userEducation'),
                'user_occupation' => $request->get('userOccupation'),
                'user_marital' => $request->get('userMarital'),
                'user_children' => $request->get('userChildren'),
                'user_relationship' => $request->get('userRelationship'),
                'user_polygamy' => $request->get('userPolygamy'),
                'user_financial' => $request->get('userFinancial')
            ];

            //select email from active_user (check if user exist in active user table)
            $email = ActiveUser::where('signature', '=', $signature)->select('email')->first();

            if($email == null){
                return response()->json(array(
                    //'auth_token' => compact('token')['token'],
                    'status' => "failed",
                    'message' => "Invalid signature provided!",
                ));
                exit;
            }

            //if exist - do update query on users_profile table
            $affectedRows = UserProfile::where('user_email', '=', $email->email)->update($userProfile);
            if($affectedRows){

                $status = 'success';
                $message = 'Successfully updated!';
                $token = JWTAuth::refresh($token);

            }else{
                $status = 'error';
                $message = 'Update profile failed!';
            }
        }

        return response()->json(array(
            'auth_token' => $token,
            'status' => $status,
            'message' => $message,
        ));
    }

    public function getUpdate(Request $request)
    {

        $signature = $request->get('signature');

        $token = JWTAuth::getToken();

        $email = ActiveUser::where('signature', '=', $signature)->select('email')->first();

        //if exist - do update query on users_profile table
        $affectedRows = UserProfile::where('user_email', '=', $email->email)->first();

        if($affectedRows != null){
            $status = 'success';
            $message = 'Successfully retrieved!';
            $token = JWTAuth::refresh($token);
        }else{
            $status = 'error';
            $message = 'Retrieved user profile failed!';
        }

        return response()->json(array(
            'auth_token' => $token,
            'status' => $status,
            'message' => $message,
            'user_profile' => $affectedRows
        ));
    }

        public function getDetail(Request $request)
    {

        $id = $request->get('id');

        $token = JWTAuth::getToken();

        //if exist - do update query on users_profile table
        $affectedRows = UserProfile::where('id', '=', $id)->first();

        if($affectedRows != null){
            $status = 'success';
            $message = 'Successfully retrieved!';
            $token = JWTAuth::refresh($token);
        }else{
            $status = 'error';
            $message = 'Retrieved user profile failed!';
        }

        return response()->json(array(
            'auth_token' => $token,
            'status' => $status,
            'message' => $message,
            'user_profile' => $affectedRows
        ));
    }
}
