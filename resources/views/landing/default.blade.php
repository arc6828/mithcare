<!DOCTYPE html>
<html lang="en">
<head>
<title>@yield('title')</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Health medical template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
@yield('link')
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
		.btn-facebook{
			color : white !important;
			background-color: #4267b2 !important;
			border-bottom: 1px solid #4267b2 !important;
		}
</style>
</head>
<body>

<div class="super_container">

	<!-- Menu -->

	<div class="menu trans_500">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
			<div class="menu_close_container"><div class="menu_close"></div></div>
			<form action="#" class="menu_search_form">
				<input type="text" class="menu_search_input" placeholder="Search" required="required">
				<button class="menu_search_button"><i class="fa fa-search" aria-hidden="true"></i></button>
			</form>
			<ul>
				<li class="menu_item"><a href="{{url('/')}}/">Home</a></li>
				<li class="menu_item"><a href="{{url('/')}}/about">About us</a></li>
				<li class="menu_item"><a href="{{url('/')}}/services">Services</a></li>
				<li class="menu_item"><a href="{{url('/')}}/news">News</a></li>
				<li class="menu_item"><a href="{{url('/')}}/contact">Contact</a></li>
				<hr />
				<li class="menu_item"><a href="{{url('/')}}/theme-health/#">Help Desk</a></li>
				<li class="menu_item"><a href="{{url('/')}}/theme-health/#">Emergency Services</a></li>
				<li class="menu_item"><a href="{{url('/')}}/theme-health/#">Appointment</a></li>
				<li class="menu_item"><a href="{{url('/')}}/user">Data Center</a></li>

				@guest
				<li class="menu_item">
						<a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
				</li>
				@else
				<li class="menu_item">
						<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
								{{ Auth::user()->name }} <span class="caret"></span>
						</a>

						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="{{ route('logout') }}"
									 onclick="event.preventDefault();
																 document.getElementById('logout-form').submit();">
										{{ __('Logout') }}
								</a>

								<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
										@csrf
								</form>
						</div>
				</li>
				@endguest

			</ul>
		</div>
		<div class="menu_social">
			<ul>
				<li><a href="{{url('/')}}/theme-health/#"><i class="fab fa-pinterest" aria-hidden="true"></i></a></li>
				<li><a href="{{url('/')}}/theme-health/#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="{{url('/')}}/theme-health/#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="{{url('/')}}/theme-health/#"><i class="fab fa-dribbble" aria-hidden="true"></i></a></li>
				<li><a href="{{url('/')}}/theme-health/#"><i class="fab fa-behance" aria-hidden="true"></i></a></li>
				<li><a href="{{url('/')}}/theme-health/#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		@yield('background_image')

		<!-- Header -->

		<header class="header" id="header">
			<div>
				<div class="header_top">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="header_top_content d-flex flex-row align-items-center justify-content-start">
									<div class="logo">
										<a href="{{url('/')}}/theme-health/#">MithCare<span>+</span></a>
									</div>
									<div class="header_top_extra d-flex flex-row align-items-center justify-content-start ml-auto">
										<div class="header_top_nav">
											<ul class="d-flex flex-row align-items-center justify-content-start">
												<li><a href="{{url('/')}}/theme-health/#">Help Desk</a></li>
												<li><a href="{{url('/')}}/theme-health/#">Emergency Services</a></li>
												<li><a href="{{url('/')}}/theme-health/#">Appointment</a></li>
												<li><a href="{{url('/')}}/user">Data Center</a></li>
												<!-- Authentication Links -->
												@guest
												<li>
														<a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
												</li>
												@else
												<li>
														<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
																{{ Auth::user()->name }} <span class="caret"></span>
														</a>

														<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
																<a class="dropdown-item" href="{{ route('logout') }}"
																	 onclick="event.preventDefault();
																								 document.getElementById('logout-form').submit();">
																		{{ __('Logout') }}
																</a>

																<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
																		@csrf
																</form>
														</div>
												</li>
												@endguest
											</ul>
										</div>
										<div class="header_top_phone d-none">
											<i class="fa fa-phone" aria-hidden="true"></i>
											<span>+34 586 778 8892</span>
										</div>
									</div>
									<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header_nav_" id="header_nav_pin">
					<div class="header_nav_inner">
						<div class="header_nav_container">
							<div class="container">
								<div class="row">
									<div class="col">
										<div class="header_nav_content d-flex flex-row align-items-center justify-content-start">
											<nav class="main_nav">
												<ul class="d-flex flex-row align-items-center justify-content-start">
													<li class="active"><a href="{{url('/')}}/">Home</a></li>
													<li><a href="{{url('/')}}/about">About Us</a></li>
													<li><a href="{{url('/')}}/services">Services</a></li>
													<li><a href="{{url('/')}}/news">News</a></li>
													<li><a href="{{url('/')}}/contact">Contact</a></li>
												</ul>
											</nav>
											<div class="search_content d-flex flex-row align-items-center justify-content-end ml-auto">
												<form action="#" id="search_container_form" class="search_container_form">
													<input type="text" class="search_container_input" placeholder="Search" required="required">
													<button class="search_container_button"><i class="fa fa-search" aria-hidden="true"></i></button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_title">@yield('title')</div>
                            @isset($is_root)
                            <div class="home_text">Medical Innovation & Technological Health CARE</div>
							<div class="button home_button"><a href="{{url('/')}}/theme-health/#"><span>read more</span><span>read more</span></a></div>
                            @endisset
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	@yield('content')

	<!-- Footer -->

	<footer class="footer">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{url('/')}}/theme-health/images/footer.jpg" data-speed="0.8"></div>
		<div class="footer_content">
			<div class="container">
				<div class="row">

					<!-- Footer About -->
					<div class="col-lg-3 footer_col">
						<div class="footer_about">
							<div class="logo">
								<a href="{{url('/')}}/theme-health/#">MITHCARE<span>+</span></a>
							</div>
							<div class="footer_about_text">82/25 CEMENT-THAI | CHATUCHAK | <br/>
BANGKOK , THAILAND <br/>
TEL: +66(0)95 556 5411 <br/>
MOBILE: +66(0)86 977 7677 <br/>
EMAIL: MITHCARE@GMAIL.COM</div>
							<div class="footer_social">
								<ul class="d-flex flex-row align-items-center justify-content-start">
									<li><a href="{{url('/')}}/theme-health/#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="{{url('/')}}/theme-health/#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="{{url('/')}}/theme-health/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="{{url('/')}}/theme-health/#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
									<li><a href="{{url('/')}}/theme-health/#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
									<li><a href="{{url('/')}}/theme-health/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>
							</div>
							<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="{{url('/')}}/theme-health/https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
						</div>
					</div>

					<!-- Footer Contact -->
					<div class="col-lg-5 footer_col">
						<div class="footer_contact">
							<div class="footer_contact_title">Quick Contact</div>
							<div class="footer_contact_form_container">
								<form action="#" class="footer_contact_form" id="footer_contact_form">
									<div class="d-flex flex-xl-row flex-column align-items-center justify-content-between">
										<input type="text" class="footer_contact_input" placeholder="Name" required="required">
										<input type="email" class="footer_contact_input" placeholder="E-mail" required="required">
									</div>
									<textarea class="footer_contact_input footer_contact_textarea" placeholder="Message" required="required"></textarea>
									<button class="footer_contact_button">send message</button>
								</form>
							</div>
						</div>
					</div>

					<!-- Footer Hours -->
					<div class="col-lg-4 footer_col">
						<div class="footer_hours">
							<div class="footer_hours_title">Opening Hours</div>
							<ul class="hours_list">
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div>Monday – Thursday</div>
									<div class="ml-auto">8.00 – 19.00</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div>Friday</div>
									<div class="ml-auto">8.00 - 18.30</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div>Saturday</div>
									<div class="ml-auto">9.30 – 17.00</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div>Sunday</div>
									<div class="ml-auto">9.30 – 15.00</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bar">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="footer_bar_content d-flex flex-sm-row flex-column align-items-lg-center align-items-start justify-content-start">
							<nav class="footer_nav">
								<ul class="d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
									<li class="active"><a href="{{url('/')}}/">Home</a></li>
									<li><a href="{{url('/')}}/about">About Us</a></li>
									<li><a href="{{url('/')}}/services">Services</a></li>
									<li><a href="{{url('/')}}/news">News</a></li>
									<li><a href="{{url('/')}}/contact">Contact</a></li>
								</ul>
							</nav>
							<div class="footer_links">
								<ul class="d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
									<li><a href="{{url('/')}}/theme-health/#">Help Desk</a></li>
									<li><a href="{{url('/')}}/theme-health/#">Emergency Services</a></li>
									<li><a href="{{url('/')}}/theme-health/#">Appointment</a></li>
									<li><a href="{{url('/')}}/elements">Elements</a></li>
								</ul>
							</div>
							<div class="footer_phone ml-lg-auto">
								<i class="fa fa-phone" aria-hidden="true"></i>
								<span>+34 586 778 8892</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>
@yield('script')
</body>
</html>
