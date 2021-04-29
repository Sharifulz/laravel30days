<?php

namespace App\Http\Controllers;

use App\Http\Resources\InformationResource;
use App\Models\Information;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class InformationController extends Controller
{
    public function index()
    {
       // $informations = Information::latest()->get();
        $informations = Information::active();
        return response(InformationResource::collection($informations),Response::HTTP_OK);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $information = new Information();
        $information->name=$request->name;
        $information->age=$request->age;
        $information->dob=$request->dob;
        $information->blood_group=$request->blood_group;
        $information->save();
        return response(new InformationResource($information),Response::HTTP_CREATED);
    }

    public function show($id)
    {
        $information = Information::findOrFail($id);
        return response(new InformationResource($information),Response::HTTP_OK);
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        $information = Information::findOrFail($id);
        $information->name=$request->name;
        $information->age=$request->age;
        $information->dob=$request->dob;
        $information->blood_group=$request->blood_group;
        $information->save();
        return response(new InformationResource($information),Response::HTTP_CREATED);
    }

    public function destroy($id)
    {
        $information = Information::findOrFail($id);
        $information->delete();
        return response()->json(['success'=>true,'message'=>'Deleted successful'],200);
    }
}
