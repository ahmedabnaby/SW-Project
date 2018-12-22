@extends('layouts.app')

@section('content')
<body style=" background-image: url('{{asset('images/reg.jpg')}}');width: 100%; height: auto;background-repeat: no-repeat; background-size: cover;">
    <h1><span style="color:dimgray;font-size:53px;">Posts</span></h1>
@if(count($posts)>0)
    @foreach($posts as $post)
    <div class="well">
        <h2><a style="text-decoration: none;" href="/posts/{{$post->id}}">{{$post->title}}</a></h2>
        <small>Written on: {{$post->created_at}} by <strong><span class="label label-success">{{$post->user->name}}</span></strong></small>
    </div>
    @endforeach
@endif
</body>
@endsection