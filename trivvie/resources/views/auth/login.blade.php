@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row page-login d-flex align-items-center">
        <div class="section-left col-12 col-md-6">
            <h1 class="mg-4">We explore the new
                <br/>
                life much better
            </h1>

            <img src="{{ url('frontend/images/login-images.png') }}" alt="" class="w-75 d-none d-sm-flex">
        </div>

        <div class="section-right col-12 col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="text-center">
                        <img src="frontend/images/logo.png" alt="" class="w-50 mb-4">
                    </div>

                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail">{{ __('E-Mail Address') }}</label>
          
                            <input type="email" class="form-control @error('email') is-invalid @enderror" id="exampleInputEmail" aria-describedby="emailHelp" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        {{-- Password --}}
                        <div class="form-group">
                            <label for="exampleInputPassword1">{{ __('Password') }}</label>
          
                            <input type="password" class="form-control @error('password') is-invalid @enderror" id="exampleInputPassword1" name="password" required autocomplete="current-password">

                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        {{-- Checkbox --}}
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="remember" name="remember" {{ old('remember') ? 'checked' : '' }}>
            
                            <label class="form-check-label" for="remember">
                                {{ __('Remember Me') }}
                            </label>
                        </div>

                        {{-- Btn Submit --}}
                        <button type="submit" class="btn btn-login btn-block">
                            {{ __('Login') }}
                        </button>

                        {{-- Lupa Password --}}
                        @if (Route::has('password.request'))
                            <p class="text-center mt-4">
                                <a href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                            </p>
                        @endif

                        <p class="text-center mt-8">
                            Belum punya akun? <a href="{{ route('register') }}" class="register">Register</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection