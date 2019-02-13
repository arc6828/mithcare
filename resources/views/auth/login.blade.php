@extends('auth.layout')

@section('title','Login')

@section('content')
<div class="col-lg-5 col-md-7">
  <div class="card bg-secondary shadow border-0">
    <div class="card-header bg-transparent pb-5">
      <div class="text-muted text-center mt-2 mb-3"><small>Sign in with</small></div>
      <div class="btn-wrapper text-center">
        <a href="{{url('/')}}/login/facebook" class="btn btn-neutral btn-icon">
          <span class="btn-inner--icon"><i class="fab fa-facebook"></i> </span>
          <span class="btn-inner--text">Login with Facebook</span>
        </a>
      </div>
    </div>
    <div class="card-body px-lg-5 py-lg-5">
      <div class="text-center text-muted mb-4">
        <small>Or sign in with credentials</small>
      </div>
      <form class="info_form" method="POST" action="{{ route('login') }}">
              @csrf

              <div class="form-group mb-3">
                <div class="input-group input-group-alternative">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                  </div>
                  <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="{{ __('E-Mail Address') }}" required autofocus>

                  @if ($errors->has('email'))
                          <span class="invalid-feedback" role="alert">
                                  <strong>{{ $errors->first('email') }}</strong>
                          </span>
                  @endif
                </div>
              </div>

              <div class="form-group">
                <div class="input-group input-group-alternative">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                  </div>
                  <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="{{ __('Password') }}" required>

                  @if ($errors->has('password'))
                          <span class="invalid-feedback" role="alert">
                                  <strong>{{ $errors->first('password') }}</strong>
                          </span>
                  @endif
                </div>
              </div>

              <div class="custom-control custom-control-alternative custom-checkbox">
                 <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                 <label class="custom-control-label" for=" customCheckLogin">
                  <span class="text-muted">{{ __('Remember Me') }}</span>
                </label>
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-primary my-4">
                        {{ __('Login') }}
                </button>
              </div>
      </form>
    </div>
  </div>
  <div class="row mt-3">
    <div class="col-6">
      <a href="{{ route('password.request') }}" class="text-light"><small>{{ __('Forgot Your Password?') }}</small></a>
    </div>
    <div class="col-6 text-right">
      <a href="{{ route('register') }}" class="text-light"><small>Create new account</small></a>
    </div>
  </div>
</div>
@endsection
