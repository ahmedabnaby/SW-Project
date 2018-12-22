@extends('layouts.app')
@section('content')

<div class="container">
    <body style=" background-image: url('{{asset('images/bg6.jpg')}}');width: 100%; height: auto;background-repeat: no-repeat; background-size: cover;">
        <div class="col-md-14">
                
                <div class="jumbotron text-center" style="background-image: url('{{asset('images/bg8.jpg')}}');">
                        <span style="color:darkblue;"><h1>Bloggy!</h1></span>
                        <span style="color:darkcyan;"><h4>Here is the easiest way to share stuff! </h4></span>
                        @if(Auth::guest())
                            
                        <p><a class="btn btn-primary btn-lg" href="{{ route('login') }}" role="button">Get Started!</a>
                            
                            @endif
                        </p>
                </div>
                
                      <div class="row">
                        <div class="col-sm-6 col-md-6" >
                          <div class="thumbnail" style="background-image: url('{{asset('images/bg9.jpg')}}');">
                            <div class="caption">
                              <h3><strong><span style="color:darkslateblue;">You can create post here!</span></strong></h3>
                              <p><strong><span style="color:black;">Adding post to your blog allows ppl to see it and share you ideas and thoughts to the whole world!</span></strong></p>
                              <p><a href="/posts/create" class="btn btn-success" role="button">Create post!</a></p>
                            </div>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <div class="thumbnail" style="background-image: url('{{asset('images/bg9.jpg')}}');">
                                <div class="caption">
                                    <h3><strong><span style="color:darkslateblue;">Search for a post here!</span></strong></h3>
                                  
                                  <p><form action="{{url('/search')}}" method="POST">
                                    <div class="form-group">
                                            {!! csrf_field() !!}
                                      <input type="text" name="search" class="form-control" placeholder="Search for..">
                                      
                                    </div>
                                    <button type="submit" class="btn btn-success">Go!</button>
                                  </form></p>
                                </div>
                              </div>
                          </div>
                      </div>
            </div> 
        </body>  
        </div>
    </div>
@endsection('content')
