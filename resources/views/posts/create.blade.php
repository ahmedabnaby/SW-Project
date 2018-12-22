@extends('layouts.app')
@section('content')
<body style=" background-image: url('{{asset('images/bg11.jpg')}}');width: 100%; height: auto;background-repeat: no-repeat; background-size: cover;">
    <h1><span style="color:white;">Create Posts</span></h1>
    
{!! Form::open(['action' => 'PostsController@store','method'=>'POST', 'enctype'=>'multipart/data']) !!}

    
    <div class="form-group">

        <strong><span style="color:white;">{{Form::label('title','Title')}}</span></strong>
        {{Form::text('title','',['class'=>'form-control','placeholder'=>'Title'])}}
        
    </div>

    <div class="form-group">

        <strong><span style="color:white;">{{Form::label('body','Body')}}</span></strong>
        {{Form::textarea('body','',['id'=>'article-ckeditor', 'class'=>'form-control','placeholder'=>'Body text'])}}
        
    </div>

    {{Form::Submit('Submit',['class'=>'btn btn-default'])}}
{!! Form::close() !!}
</body>
@endsection