<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\QueryException;
use App\Models\User;

class UserController extends Controller
{
    public function createPost(Request $request){
       $user = new User();
       $data = $request->only($user->getFillable());
       try{
        $user->fill($data)->save();
       }catch(QueryException $e){
      }

        return redirect()->back();
    }

//accessor, mutator, scope, seeder
}
