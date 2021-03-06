@extends('layers.header')

@section('content')
<div class="col-md-4"></div>
<div class="col-md-4">
    <form method="POST" action="{{route('user.add')}}">
        @csrf
        <div class="form-group">
            <label for="exampleInputEmail1">Your Name</label>
            <input type="text" class="form-control" id="exampleInputName" placeholder="Enter name" name="name">
          </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
      </form>
    </div> 
<div class="col-md-4"></div>
@endsection