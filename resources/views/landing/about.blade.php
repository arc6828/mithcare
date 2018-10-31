@extends('landing/default')

@section('link')
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/bootstrap4/bootstrap.min.css">
<link href="{{url('/')}}/theme-health/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/about.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/about_responsive.css">
@endsection

@section('title','About us')

@section('background_image')
	<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{url('/')}}/theme-health/images/about.jpg" data-speed="0.8"></div>
@endsection

@section('content')
	<!-- About -->
	<style>
	.about_text_highlight,.about_text{
		text-align: center !important;
	}
	</style>

	<div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">A few words about us</div>
					<div class="section_subtitle">too choose from</div>
				</div>
			</div>
			<div class="row about_row row-eq-height">
				<div class="col-lg-4">
					<div class="text-center"><img src="{{url('/')}}/img/who-we-are.png" alt="" width="70%"></div>
					<div class="about_text_highlight">WHO WE ARE</div>
					<div class="about_text">
						<p>MITHCARE is the bio information bank for everyone. We provide the highest level of quality healthcare. Which you can update and download your information anywhere & anytime.</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="text-center"><img src="{{url('/')}}/img/what-we-do.png" alt="" width="70%"></div>
					<div class="about_text_highlight">WHAT WE DO</div>
					<div class="about_text">
						<p>Our system will preserve your document for your future use. Your bio-information would be useful for your family members and new generation. The multi purpose such as bio data,check up update, treatment diagnosis, emergency case etc.</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="text-center"><img src="{{url('/')}}/img/why-we-do.png" alt="" width="70%"></div>
					<div class="about_text_highlight">WHY WE DO</div>
					<div class="about_text">
						<p>We know that your bio information would be helpful for treatment & therapy. It's also help your family members and next generation to forecast their symptom. In the emergency case a doctor could diagnose more precise/accuracy from your information.</p>
					</div>
				</div>
			</div>
			<div class="row about_row row-eq-height d-none">
				<div class="col-lg-4">
					<div class="logo">
						<a href="{{url('/')}}/theme-health/#">health<span>+</span></a>
					</div>
					<div class="about_text_highlight">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem max imus mauris.</div>
					<div class="about_text">
						<p>Aenean sit amet leo id enim dapibus eleifend. Phas ellus ut erat dapibus, tempor sapien non, porta.</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="about_text_2">
						<p>Donec lorem maximus malesuada lorem max imus mauris. Proin vitae tortor nec risus tristiq ue efficitur. Aliquam luctus est urna, id aliqu am orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna. Cras quis ante nibh. Proin tincidunt gravida interdum. Proin sed urna mauris.</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="about_image"><img src="{{url('/')}}/theme-health/images/about_1.jpg" alt=""></div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="button about_button ml-auto mr-auto"><a href="{{url('/')}}/theme-health/#"><span>call now</span><span>call now</span></a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Milestones -->

	<div class="milestones">
		<div class="container">
			<div class="row">

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone d-flex flex-row align-items-center justify-content-start">
						<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="{{url('/')}}/theme-health/images/icon_7.svg" alt=""></div>
						<div class="milestone_content">
							<div class="milestone_counter" data-end-value="365">0</div>
							<div class="milestone_text">Days a year</div>
						</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone d-flex flex-row align-items-center justify-content-start">
						<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="{{url('/')}}/theme-health/images/icon_6.svg" alt=""></div>
						<div class="milestone_content">
							<div class="milestone_counter" data-end-value="25" data-sign-after="k">0</div>
							<div class="milestone_text">Patients a year</div>
						</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone d-flex flex-row align-items-center justify-content-start">
						<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="{{url('/')}}/theme-health/images/icon_8.svg" alt=""></div>
						<div class="milestone_content">
							<div class="milestone_counter" data-end-value="125">0</div>
							<div class="milestone_text">Amazing Doctors</div>
						</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone d-flex flex-row align-items-center justify-content-start">
						<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="{{url('/')}}/theme-health/images/icon_9.svg" alt=""></div>
						<div class="milestone_content">
							<div class="milestone_counter" data-end-value="12" data-sign-after="k">0</div>
							<div class="milestone_text">Lab Results</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="about" style="padding-top: 88px; padding-bottom: 93px;">
		<div class="row">
			<div class="col-md-4 offset-md-3">
				<blockquote class="blockquote text-center">
				  <p class="mt-5">Declare the past, diagnose the present, foretell the future</p>
				  <footer class="blockquote-footer"><cite title="Source Title">HIPPOCRATES</cite></footer>
				</blockquote>
			</div>
			<div class="col-md-2 text-center">
				<img src="{{ url('/') }}/img/HIPPOCRATES.jpg" width="100%">
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

	<!-- Doctors -->

	<div class="doctors">
		<div class="doctors_image"><img src="{{url('/')}}/theme-health/images/doctors.jpg" alt=""></div>
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">Our Doctors</div>
					<div class="section_subtitle">to choose from</div>
				</div>
			</div>
			<div class="row doctors_row">

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_1.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Michael Smith</a></div>
							<div class="doctor_title">Surgeon</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_2.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Christian Williams</a></div>
							<div class="doctor_title">Surgeon</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_3.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Jessica Walsh</a></div>
							<div class="doctor_title">Surgeon</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_4.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Martha James</a></div>
							<div class="doctor_title">Surgeon</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_5.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Michael Smith</a></div>
							<div class="doctor_title">Surgeon</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_6.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Christina Smith</a></div>
							<div class="doctor_title">Laboratory</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_7.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Jessica Walsh</a></div>
							<div class="doctor_title">Pediatrist</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

				<!-- Doctor -->
				<div class="col-xl-3 col-md-6">
					<div class="doctor">
						<div class="doctor_image"><img src="{{url('/')}}/theme-health/images/doc_8.jpg" alt=""></div>
						<div class="doctor_content">
							<div class="doctor_name"><a href="{{url('/')}}/theme-health/#">Martha James</a></div>
							<div class="doctor_title">Eye Doctor</div>
							<div class="doctor_link"><a href="{{url('/')}}/theme-health/#">+</a></div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col">
					<div class="button doctors_button ml-auto mr-auto"><a href="{{url('/')}}/theme-health/#"><span>see all doctors</span><span>see all doctors</span></a></div>
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
<script src="{{url('/')}}/theme-health/js/about.js"></script>
@endsection
