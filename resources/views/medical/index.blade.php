@extends('landing/default')

@section('link')
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/bootstrap4/bootstrap.min.css">
<link href="{{url('/')}}/theme-health/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/responsive.css">
@endsection

@section('title','MITHCARE FOR EVERYONE')

@section('background_image')
	<div class="background_image" style="background-image:url({{url('/')}}/theme-health/images/index_hero.jpg)"></div>
@endsection

@section('content')

	<!-- Info Boxes -->

	<div class="info">
		<div class="container">
			<div class="row row-eq-height">

				<!-- Info Box -->
				<div class="col-lg-4 info_box_col">
					<div class="info_box">
						<div class="info_image"><img src="{{url('/')}}/theme-health/images/info_1.jpg" alt=""></div>
						<div class="info_content">
							<div class="info_title">Free Consultations</div>
							<div class="info_text">Arcu neque, scelerisque eget ligula ac, congue tempor felis. Integer tempor, eros a egestas finibus, dolor risus mollis.</div>
							<div class="button info_button"><a href="{{url('/')}}/theme-health/#"><span>read more</span><span>read more</span></a></div>
						</div>
					</div>
				</div>

				<!-- Info Box -->
				<div class="col-lg-4 info_box_col">
					<div class="info_box">
						<div class="info_image"><img src="{{url('/')}}/theme-health/images/info_2.jpg" alt=""></div>
						<div class="info_content">
							<div class="info_title">Emergency Care</div>
							<div class="info_text">Morbi arcu neque, scelerisque eget ligula ac, congue tempor felis. Integer tempor, eros a egestas finibus, dolor risus.</div>
							<div class="button info_button"><a href="{{url('/')}}/theme-health/#"><span>read more</span><span>read more</span></a></div>
						</div>
					</div>
				</div>

				<!-- Info Form -->
				<div class="col-lg-4 info_box_col">
					<div class="info_form_container">
						<div class="info_form_title">Make an Appointment</div>
						<form action="#" class="info_form" id="info_form">
							<select name="info_form_dep" id="info_form_dep" class="info_form_dep info_input info_select">
								<option>Department</option>
								<option>Department</option>
								<option>Department</option>
							</select>
							<select name="info_form_doc" id="info_form_doc" class="info_form_doc info_input info_select">
								<option>Doctor</option>
								<option>Doctor</option>
								<option>Doctor</option>
							</select>
							<input type="text" class="info_input" placeholder="Name" required="required">
							<input type="text" class="info_input" placeholder="Phone No">
							<button class="info_form_button">make an appointment</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- CTA -->

	<div class="cta">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{url('/')}}/theme-health/images/cta_1.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="cta_container d-flex flex-xl-row flex-column align-items-xl-start align-items-center justify-content-xl-start justify-content-center">
						<div class="cta_content text-xl-left text-center">
							<div class="cta_title">We care 7.7 billion world population estimated in 2019</div>
							<div class="cta_subtitle">Make an appointment with one of our professional Doctors.</div>
						</div>
						<div class="button cta_button ml-xl-auto"><a href="{{url('/')}}/theme-health/#"><span>call now</span><span>call now</span></a></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Services -->
	<style>
	.icon_box_icon{
		color: #32c69a;
		font-size: 36px;
		margin-top: 5px;
	}
	</style>
	<div class="services">
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

	<!-- Departments -->

	<div class="departments">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">Our Departments</div>
					<div class="section_subtitle">to choose from</div>
				</div>
			</div>
			<div class="row dept_row">
				<div class="col">
					<div class="dept_slider_container_outer">
						<div class="dept_slider_container">

							<!-- Slider -->
							<div class="owl-carousel owl-theme dept_slider">

								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="{{url('/')}}/theme-health/images/dept_1.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title">Neonatology</div>
										<div class="dept_link"><a href="{{url('/')}}/theme-health/#">Read More</a></div>
									</div>
								</div>

								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="{{url('/')}}/theme-health/images/dept_2.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title">Dentistry</div>
										<div class="dept_link"><a href="{{url('/')}}/theme-health/#">Read More</a></div>
									</div>
								</div>

								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="{{url('/')}}/theme-health/images/dept_3.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title">Orthopedics</div>
										<div class="dept_link"><a href="{{url('/')}}/theme-health/#">Read More</a></div>
									</div>
								</div>

								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="{{url('/')}}/theme-health/images/dept_4.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title">Laboratory</div>
										<div class="dept_link"><a href="{{url('/')}}/theme-health/#">Read More</a></div>
									</div>
								</div>

							</div>

						</div>

						<!-- Dept Slider Nav -->
						<div class="dept_slider_nav"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>

					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- FAQ & News -->

	<div class="stuff">
		<div class="container">
			<div class="row">

				<!-- FAQ -->
				<div class="col-lg-7">
					<div class="faq">
						<div class="faq_title">Faq & Stuff</div>
						<div class="faq_subtitle">read all about it</div>
						<div class="elements_accordions">
							<div class="accordions">

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center active"><div>Maecenas fermentum tortor id fringilla molestie.</div></div>
									<div class="accordion_panel">
										<div>
											<p>Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing elit. Donec malesuada lorem maximus mauris. Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing.</p>
										</div>
									</div>
								</div>

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>Duis quis lacinia elit. Etiam varius mi eget lacus ultricies elementum</div></div>
									<div class="accordion_panel">
										<div>
											<p>Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing elit. Donec malesuada lorem maximus mauris. Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing.</p>
										</div>
									</div>
								</div>

								<div class="accordion_container">
									<div class="accordion d-flex flex-row align-items-center"><div>Maecenas fermentum tortor id fringilla molestie.</div></div>
									<div class="accordion_panel">
										<div>
											<p>Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing elit. Donec malesuada lorem maximus mauris. Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing.</p>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<!-- Latest News -->
				<div class="col-lg-5">
					<div class="news">
						<div class="news_title">Latest News</div>
						<div class="news_subtitle">read all about it</div>
						<div class="news_container">

							<!-- Latest News Post -->
							<div class="latest d-flex flex-row align-items-start justify-content-start">
								<div><div class="latest_image"><img src="{{url('/')}}/theme-health/images/latest_1.jpg" alt=""></div></div>
								<div class="latest_content">
									<div class="latest_title"><a href="{{url('/')}}/theme-health/news.html">A simple blog post</a></div>
									<div class="latest_info">
										<ul class="d-flex flex-row align-items-start justify-content-start">
											<li><a href="{{url('/')}}/theme-health/#">by Jane Smith</a></li>
											<li><a href="{{url('/')}}/theme-health/#">April 25, 2018</a></li>
										</ul>
									</div>
									<div class="latest_comments"><a href="{{url('/')}}/theme-health/#">2 Comments</a></div>
								</div>
							</div>

							<!-- Latest News Post -->
							<div class="latest d-flex flex-row align-items-start justify-content-start">
								<div><div class="latest_image"><img src="{{url('/')}}/theme-health/images/latest_2.jpg" alt=""></div></div>
								<div class="latest_content">
									<div class="latest_title"><a href="{{url('/')}}/theme-health/news.html">A new way to see things in medicine</a></div>
									<div class="latest_info">
										<ul class="d-flex flex-row align-items-start justify-content-start">
											<li><a href="{{url('/')}}/theme-health/#">by Jane Smith</a></li>
											<li><a href="{{url('/')}}/theme-health/#">April 25, 2018</a></li>
										</ul>
									</div>
									<div class="latest_comments"><a href="{{url('/')}}/theme-health/#">2 Comments</a></div>
								</div>
							</div>

							<!-- Latest News Post -->
							<div class="latest d-flex flex-row align-items-start justify-content-start">
								<div><div class="latest_image"><img src="{{url('/')}}/theme-health/images/latest_3.jpg" alt=""></div></div>
								<div class="latest_content">
									<div class="latest_title"><a href="{{url('/')}}/theme-health/news.html">Why is Pharma industry so big?</a></div>
									<div class="latest_info">
										<ul class="d-flex flex-row align-items-start justify-content-start">
											<li><a href="{{url('/')}}/theme-health/#">by Jane Smith</a></li>
											<li><a href="{{url('/')}}/theme-health/#">April 25, 2018</a></li>
										</ul>
									</div>
									<div class="latest_comments"><a href="{{url('/')}}/theme-health/#">2 Comments</a></div>
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
<script src="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="{{url('/')}}/theme-health/plugins/easing/easing.js"></script>
<script src="{{url('/')}}/theme-health/plugins/parallax-js-master/parallax.min.js"></script>
<script src="{{url('/')}}/theme-health/js/custom.js"></script>
@endsection
