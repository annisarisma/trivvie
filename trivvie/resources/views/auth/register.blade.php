@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row page-login d-flex align-items-center">
        <div class="section-left col-12 col-md-6">
            <h1 class="mg-4">We explore the new
              <br/>
              life much better
            </h1>

            <img src="frontend/images/login-images.png" alt="" class="w-75 d-none d-sm-flex">
        </div>

        <div class="section-right col-12 col-md-4">
            <div class="card">
                <div class="card-body">
                
                    <div class="text-center">
                        <img src="frontend/images/logo.png" alt="" class="w-50 mb-4">
                    </div>
    
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        {{-- Name --}}
                        <div class="form-group">
                            <label for="name">{{ __('Name') }}</label>
        
                            <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus" id="name">

                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        {{-- Username --}}
                        <div class="form-group">
                            <label for="username">{{ __('Username') }}</label>
        
                            <input type="text" class="form-control @error('username') 
                            is-invalid @enderror" id="username" name="username" value="{{ old('username') }}" required autocomplete="username" autofocus>

                            @error('username')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        {{-- Email Address --}}
                        <div class="form-group">
                            <label for="email">{{ __('E-Mail Address') }}</label>
        
                            <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" id="email" aria-describedby="emailHelp">

                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        {{-- Password --}}
                        <div class="form-group">
                            <label for="password">{{ __('Password') }}</label>
        
                            <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" id="password">

                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
        
                        <div class="form-group">
                            <label for="password-confirm">{{ __('Confirm Password') }}</label>
        
                            <input type="password" class="form-control" id="password-confirm" name="password_confirmation" required autocomplete="new-password">
                        </div>
        
                        <button type="submit" class="btn btn-login btn-block">
                            {{ __('Register') }}
                        </button>

                        <p class="text-center mt-6">
                            Sudah punya akun? <a href="{{ route('login') }}" class="register">Login</a>
                        </p> 
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
