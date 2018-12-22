@extends('layouts.app')

@section('content')
<body style=" background-image: url('{{asset('images/login.jpg')}}');min-height: 100%;min-width: 1024px;width: 100%; height: auto;position: fixed;top: 0;left: 0;background-repeat: no-repeat; background-size: cover;color:white;">
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <a href="/posts/create" class="btn btn-primary">Create Post here!</a>
                    <h3>Your Blog Posts</h3>
                    <table class="table table-striped">
                        <tr>
                            <th><span style="color:black;">Title</span></th>
                            <th></th>
                            <th></th>
                        </tr>
                    @if(count($posts)>0)
                        @foreach($posts as $post)
                        
                            <tr>
                                <td><span style="color:black;">{{$post->title}}</span></td>
                                <td><a href="/posts/{{$post->id}}/edit" class="btn btn-default">Edit</a></td>
                                <td>{!!Form::open(['action'=>['PostsController@destroy',$post->id] , 'method'=>'POST' , 'class'=>'pull-right'])!!}

                                            {{Form::hidden('_method','DELETE')}}
                                            {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
                                        {!!Form::close()!!}</td>
                            </tr>

                        @endforeach
                    </table>
                    @else   
                    <p>You have no posts!</p>
                    @endif 

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
