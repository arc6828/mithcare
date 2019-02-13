@extends('auth.layout')

@section('title','Register')

@section('content')

<div class="col-lg-6 col-md-8">
  <div class="card bg-secondary shadow border-0">
    <div class="card-header bg-transparent pb-5">
      <div class="text-muted text-center mt-2 mb-4"><small>Sign up with</small></div>
      <div class="text-center">
          <a href="{{url('/')}}/login/facebook" class="btn btn-neutral btn-icon">
            <span class="btn-inner--icon"><i class="fab fa-facebook"></i> </span>
            <span class="btn-inner--text">Login with Facebook</span>
          </a>
      </div>
    </div>
    <div class="card-body px-lg-5 py-lg-5">
      <div class="text-center text-muted mb-4">
        <small>Or sign up with credentials</small>
      </div>
      <form method="POST" action="{{ route('register') }}">
        @csrf
        <div class="form-group">
          <div class="input-group input-group-alternative mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="ni ni-single-02"></i></span>
            </div>
            <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" placeholder="{{ __('Name') }}" required autofocus>

            @if ($errors->has('name'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('name') }}</strong>
                </span>
            @endif
          </div>
        </div>

        <div class="form-group">
          <div class="input-group input-group-alternative mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="ni ni-email-83"></i></span>
            </div>
            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="{{ __('E-Mail Address') }}" required>

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

        <div class="form-group">
          <div class="input-group input-group-alternative">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
            </div>
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation"  placeholder="{{ __('Confirm Password') }}" required>
          </div>
        </div>

        <div class="text-muted font-italic"><small>password strength: <span class="text-success font-weight-700">strong</span></small></div>
        <div class="row my-4">
          <div class="col-12">
            <div class="custom-control custom-control-alternative custom-checkbox">
              <input class="custom-control-input" id="customCheckRegister" type="checkbox">
              <label class="custom-control-label" for="customCheckRegister">
                <span class="text-muted">I agree with the <a href="#!">Privacy Policy</a></span>
              </label>
            </div>
          </div>
        </div>
        <div class="text-center">
          <button type="submit" class="btn btn-primary  mt-4">
              {{ __('Register') }}
          </button>
        </div>
      </form>
    </div>
  </div>
</div>

@endsection
