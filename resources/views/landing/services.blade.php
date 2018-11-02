@extends('landing/default')

@section('link')
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/bootstrap4/bootstrap.min.css">
<link href="{{url('/')}}/theme-health/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/services.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/services_responsive.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/about.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/about_responsive.css">
@endsection

@section('title','Services')

@section('background_image')
	<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{url('/')}}/theme-health/images/services.jpg" data-speed="0.8"></div>
@endsection

@section('content')

	<!-- Services -->
	<style>
		.icon_box_icon{
			color: #32c69a;
			font-size: 36px;
			margin-top: 5px;
		}
	</style>
	<div class="services" style="background: #f4f8fb;">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">Our Services</div>
					<div class="section_subtitle">to choose from</div>
				</div>
			</div>
			<div class="row icon_boxes_row">
				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><i class="fas fa-user-md"></i></div>
							<div class="icon_box_title">BIOINFORMATICS HEALTHCARE</div>
						</div>
						<div class="icon_box_text">Our system keep your bio information from generation to generation. We also provide top medical services that support all patient towards their path to recovery.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><i class="fas fa-notes-medical"></i></div>
							<div class="icon_box_title">MEDICAL COUNSELING</div>
						</div>
						<div class="icon_box_text">Professional assistance and medical advice regarding your health concerns. We have the best doctors to address your specific medical situation and emotional needs.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><i class="far fa-hospital"></i></div>
							<div class="icon_box_title">EMERGENCY SERVICE</div>
						</div>
						<div class="icon_box_text">MITHCARE is response with Medical innovation & technological health care information for your emergency purpose. The system will provide your information to hospital anywhere in the world immediately.</div>
					</div>
				</div>
			</div>
			<div class="row icon_boxes_row d-none">

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_1.svg" alt=""></div>
							<div class="icon_box_title">Cardiology</div>
						</div>
						<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_2.svg" alt=""></div>
							<div class="icon_box_title">Gastroenterology</div>
						</div>
						<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_3.svg" alt=""></div>
							<div class="icon_box_title">Medical Lab</div>
						</div>
						<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_4.svg" alt=""></div>
							<div class="icon_box_title">Dental Care</div>
						</div>
						<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_5.svg" alt=""></div>
							<div class="icon_box_title">Surgery</div>
						</div>
						<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_6.svg" alt=""></div>
							<div class="icon_box_title">Neurology</div>
						</div>
						<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col">
					<div class="button services_button ml-auto mr-auto"><a href="{{url('/')}}/theme-health/#"><span>read more</span><span>read more</span></a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Doctors -->

	<div class="doctors">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">COOPERATION</div>
					<div class="section_subtitle">to choose from</div>
				</div>
			</div>
			<div class="row doctors_row">

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_1.jpg" alt="" width="100%"></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Phamaceutical</a></div>
							<div class="doctor_title">Sector</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_2.jpg" alt="" width="100%"></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Medical Supply</a></div>
							<div class="doctor_title">Sector</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_3.jpg" alt="" width="100%"></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Insurance</a></div>
							<div class="doctor_title">Sector</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_4.jpg" alt="" width="100%"></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Hospital</a></div>
							<div class="doctor_title">Sector</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>



			</div>
			<div class="row d-none">
				<div class="col">
					<div class="button doctor_button ml-auto mr-auto"><a href="{{url('/')}}/theme-health/#"><span>see all doctors</span><span>see all doctors</span></a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Boxes -->

	<div class="boxes d-flex flex-lg-row flex-column align-items-start justify-content-start">

		<!-- Box -->
		<div class="box">
			<div class="background_image" style="background-image:url({{url('/')}}/theme-health/images/box_1.jpg)"></div>
			<div class="box_title">Our Vision</div>
			<div class="box_subtitle">take a look</div>
			<div class="box_text">Maximus malesuada lorem max imus mauris. Proin vitae tortor nec risus tristiq ue efficitur. Aliquam luctus est urna, id aliqu am orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna. Cras quis ante nibh. Proin tincidunt gravida interdum. Proin sed urna mauris.</div>
			<div class="button button_2 box_button"><a href="{{url('/')}}/theme-health/#"><span>read more</span><span>read more</span></a></div>
		</div>

		<!-- Box -->
		<div class="box">
			<div class="background_image" style="background-image:url({{url('/')}}/theme-health/images/box_2.jpg)"></div>
			<div class="box_title">Our Center</div>
			<div class="box_subtitle">take a look</div>
			<div class="box_text">Maximus malesuada lorem max imus mauris. Proin vitae tortor nec risus tristiq ue efficitur. Aliquam luctus est urna, id aliqu am orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna. Cras quis ante nibh. Proin tincidunt gravida interdum. Proin sed urna mauris.</div>
			<div class="button box_button"><a href="{{url('/')}}/theme-health/#"><span>read more</span><span>read more</span></a></div>
		</div>

		<!-- Box -->
		<div class="box">
			<div class="background_image" style="background-image:url({{url('/')}}/theme-health/images/box_3.jpg)"></div>
			<div class="box_title">Our Mission</div>
			<div class="box_subtitle">take a look</div>
			<div class="box_text">Maximus malesuada lorem max imus mauris. Proin vitae tortor nec risus tristiq ue efficitur. Aliquam luctus est urna, id aliqu am orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna. Cras quis ante nibh. Proin tincidunt gravida interdum. Proin sed urna mauris.</div>
			<div class="button box_button"><a href="{{url('/')}}/theme-health/#"><span>read more</span><span>read more</span></a></div>
		</div>

	</div>

	<!-- Tabs -->

	<div class="tabs_container">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">

					<!-- Tabs -->
					<div class="tabs d-flex flex-row align-items-center justify-content-start flex-wrap">
						<div class="tab active">
							<div class="tab_title">Discuss</div>
							<div class="tab_text">Lorem ipsum dolor sit amet, consectetur adipis voelta.</div>
						</div>
						<div class="tab">
							<div class="tab_title">Create</div>
							<div class="tab_text">Lorem ipsum dolor sit amet, consectetur adipis voelta.</div>
						</div>
						<div class="tab">
							<div class="tab_title">Brainstorm</div>
							<div class="tab_text">Lorem ipsum dolor sit amet, consectetur adipis voelta.</div>
						</div>
						<div class="tab">
							<div class="tab_title">The Project</div>
							<div class="tab_text">Lorem ipsum dolor sit amet, consectetur adipis voelta.</div>
						</div>
					</div>
				</div>
				<div class="col-lg-7">

					<!-- Panels -->
					<div class="tab_panels">

						<!-- Panel -->
						<div class="tab_panel active">
							<div class="tab_panel_content">
								<div class="row">
									<div class="col-lg-5">
										<div class="tab_image"><img src="{{url('/')}}/theme-health/images/tabs.jpg" alt=""></div>
									</div>
									<div class="col-lg-7">
										<div class="tab_list">
											<ul>
												<li>
													<div class="tab_list_title">Cardiology</div>
													<div class="tab_list_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuad.</p></div>
												</li>
												<li>
													<div class="tab_list_title">Gastroenterology</div>
													<div class="tab_list_text"><p>Donec malesuada lorem maximus mauris scele risque, at rutrum nulla dictum.</p></div>
												</li>
												<li>
													<div class="tab_list_title">Medical Lab</div>
													<div class="tab_list_text"><p>Lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus.</p></div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Panel -->
						<div class="tab_panel">
							<div class="tab_panel_content">
								<div class="tab_list">
									<ul>
										<li>
											<div class="tab_list_title">Cardiology</div>
											<div class="tab_list_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuad.</p></div>
										</li>
										<li>
											<div class="tab_list_title">Gastroenterology</div>
											<div class="tab_list_text"><p>Donec malesuada lorem maximus mauris scele risque, at rutrum nulla dictum.</p></div>
										</li>
										<li>
											<div class="tab_list_title">Medical Lab</div>
											<div class="tab_list_text"><p>Lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus.</p></div>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Panel -->
						<div class="tab_panel">
							<div class="tab_panel_content">
								<div class="tab_list">
									<ul>
										<li>
											<div class="tab_list_title">Cardiology</div>
											<div class="tab_list_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuad.</p></div>
										</li>
										<li>
											<div class="tab_list_title">Gastroenterology</div>
											<div class="tab_list_text"><p>Donec malesuada lorem maximus mauris scele risque, at rutrum nulla dictum.</p></div>
										</li>
										<li>
											<div class="tab_list_title">Medical Lab</div>
											<div class="tab_list_text"><p>Lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus.</p></div>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Panel -->
						<div class="tab_panel">
							<div class="tab_panel_content">
								<div class="tab_list">
									<ul>
										<li>
											<div class="tab_list_title">Cardiology</div>
											<div class="tab_list_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuad.</p></div>
										</li>
										<li>
											<div class="tab_list_title">Gastroenterology</div>
											<div class="tab_list_text"><p>Donec malesuada lorem maximus mauris scele risque, at rutrum nulla dictum.</p></div>
										</li>
										<li>
											<div class="tab_list_title">Medical Lab</div>
											<div class="tab_list_text"><p>Lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus.</p></div>
										</li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
@endsection

@section('script')
<script src="{{url('/')}}/theme-health/js/jquery-3.3.1.min.js"></script>
<script src="{{url('/')}}/theme-health/styles/bootstrap4/popper.js"></script>
<script src="{{url('/')}}/theme-health/styles/bootstrap4/bootstrap.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/greensock/TweenMax.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/greensock/TimelineMax.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/greensock/animation.gsap.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="{{url('/')}}/theme-health/plugins/easing/easing.js"></script>
<script src="{{url('/')}}/theme-health/plugins/parallax-js-master/parallax.min.js"></script>
<script src="{{url('/')}}/theme-health/js/services.js"></script>

<script src="{{url('/')}}/theme-health/js/about.js"></script>
@endsection
