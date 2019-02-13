@extends('landing/default')

@section('link')
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/bootstrap4/bootstrap.min.css">
<link href="{{url('/')}}/theme-health/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/contact.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/contact_responsive.css">
@endsection

@section('title','Contact')

@section('background_image')
	<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{url('/')}}/theme-health/images/contact.jpg" data-speed="0.8"></div>
@endsection

@section('content')
<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
						<div class="info_form_container">
							<div class="info_form_title">{{ __('Login') }}</div>

							<form class="info_form" method="POST" action="{{ route('login') }}">
									@csrf

									<input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="{{ __('E-Mail Address') }}" required autofocus>

									@if ($errors->has('email'))
											<span class="invalid-feedback" role="alert">
													<strong>{{ $errors->first('email') }}</strong>
											</span>
									@endif

									<input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="{{ __('Password') }}" required>

									@if ($errors->has('password'))
											<span class="invalid-feedback" role="alert">
													<strong>{{ $errors->first('password') }}</strong>
											</span>
									@endif



									<div class="form-group row">
											<div class="col-md-6 text-center">
													<div class="form-check">
															<input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
															<label class="form-check-label" for="remember">
																	{{ __('Remember Me') }}
															</label>
													</div>
											</div>
											<div class="col-md-6 text-center">
													<div class="form-check">
															<a class="" href="{{ route('password.request') }}">
																	{{ __('Forgot Your Password?') }}
															</a>
													</div>
											</div>
									</div>

									<div class="form-group row mb-0">
											<div class="col-md-12">
													<button type="submit" class="info_form_button w-100">
															{{ __('Login') }}
													</button>
											</div>
									</div>
									<hr />
									<p class="text-center" style="margin:20px;">หรือเข้าสู่ระบบด้วย</p>
									<div class="form-group">
											<div class="col-md-12 text-center">
												<a href="{{url('/')}}/login/facebook" class="btn btn-primary btn-facebook">
													<i class="fa fa-facebook"></i> &nbsp; Login with Facebook
												</a>
											</div>
									</div>
							</form>
						</div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script src="{{url('/')}}/theme-health/js/jquery-3.3.1.min.js"></script>
<script src="{{url('/')}}/theme-health/styles/bootstrap4/popper.js"></script>
<script src="{{url('/')}}/theme-health/styles/bootstrap4/bootstrap.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/easing/easing.js"></script>
<script src="{{url('/')}}/theme-health/plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyC6EpDuzLcc5fhxZfr30n4eNoHOQQGLlTY"></script>
<script src="{{url('/')}}/theme-health/js/contact.js"></script>
@endsection
