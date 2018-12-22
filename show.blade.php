@extends('layouts.app')

@section('content')
<body style=" background-image: url('{{asset('images/bg10.jpg')}}');">
    <div class="container">
        <div class="row">
            <div class="col-md-16">
<div class="jumbotron" style=" background-image: url('{{asset('images/bg3.jpg')}}');width: 100%; height: auto; background-size:cover;">
    <h1><span style="color:black;font-size:81px;">{{$post->title}}</span></h1>
    <div>
            <p><strong style="color:#404040;font-size:26px;">{!!$post->body!!}<br><br></strong></p>
    </div>

    <hr>

    <small style="color:#1a1a1a;">Written on: {{$post->created_at}} by <strong><span style="color:black;">{{$post->user->name}}</span></strong></small>

    <hr>

@if(!Auth::guest())
    @if(Auth::user()->id == $post->user_id)

    <span class="pull-left"><a href="/posts/{{$post->id}}/edit/" class="btn btn-success">Edit</a></span>

{!!Form::open(['action'=>['PostsController@destroy',$post->id] , 'method'=>'POST', 'class'=>'pull-right'])!!}

    {{Form::hidden('_method','DELETE')}}
    {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
{!!Form::close()!!}
    @endif
@endif
</div>
    </div>
        </div>
    </div>
</body>
@endsection