@extends('layouts.app')
@section('content')
<body style=" background-image: url('{{asset('images/bg8.jpg')}}');min-height: 100%;min-width: 1024px;width: 100%; height: auto;position: fixed;top: 0;left: 0;background-repeat: no-repeat; background-size: cover;color:white;">
    <h1><span style="color:black;">Edit Posts</span></h1>
{!! Form::open(['action' => ['PostsController@update',$post->id], 'method'=>'POST']) !!}
    
    <div class="form-group">

        <span style="color:black;">{{Form::label('title','Title')}}</span>
        {{Form::text('title',$post->title,['class'=>'form-control','placeholder'=>'Title'])}}
        
    </div>

    <div class="form-group">

        <span style="color:black;">{{Form::label('body','Body')}}</span>
        {{Form::textarea('body',$post->body,['id'=>'article-ckeditor', 'class'=>'form-control','placeholder'=>'Body text'])}}
        
    </div>
    {{Form::hidden('_method','PUT')}}
    {{Form::Submit('Submit',['class'=>'btn btn-primary'])}}
{!! Form::close() !!}

@endsection