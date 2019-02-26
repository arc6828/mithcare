@extends('landing/default')

@section('link')
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/bootstrap4/bootstrap.min.css">
<link href="{{url('/')}}/theme-health/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/elements.css">
<link rel="stylesheet" type="text/css" href="{{url('/')}}/theme-health/styles/elements_responsive.css">
@endsection

@section('title','Elements')

@section('background_image')
	<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{url('/')}}/theme-health/images/elements.jpg" data-speed="0.8"></div>
@endsection

@section('content')

	<!-- Elements -->

	<div class="elements">
		<div class="container">
			<div class="row">
				<div class="col">

					<!-- Buttons -->
					<div class="buttons">
						<div class="elements_title">Button</div>
						<div class="buttons_content">
							<div class="button button_1 elements_button"><a href="{{url('/')}}/theme-health/#"><span>send message</span><span>send message</span></a></div>
							<div class="button button_2 elements_button"><a href="{{url('/')}}/theme-health/#"><span>send message</span><span>send message</span></a></div>
							<div class="button button_3 elements_button"><a href="{{url('/')}}/theme-health/#"><span>send message</span><span>send message</span></a></div>
						</div>
					</div>

					<!-- Accordions -->
					<div class="accordions">
						<div class="elements_title">Accordions</div>
						<div class="accordions_container">

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

					<!-- Tabs -->

					<div class="elements_tabs">
						<div class="elements_title">Tabs</div>
						<div class="tabs_content">
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

					<!-- Loaders -->
					<div class="loaders">
						<div class="elements_title">Loaders</div>

						<!-- Loaders -->
						<div class="row loaders_container">
							<div class="col-xl-2 col-lg-4 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader" data-perc="0.85">
									<div class="loader_content">
										<div class="loader_title">Professionals</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-4 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader" data-perc="0.90">
									<div class="loader_content">
										<div class="loader_title">Success</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-4 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader" data-perc="0.55">
									<div class="loader_content">
										<div class="loader_title">Doctors</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-4 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader" data-perc="0.63">
									<div class="loader_content">
										<div class="loader_title">Patients</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-4 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader" data-perc="0.85">
									<div class="loader_content">
										<div class="loader_title">Love</div>
									</div>
								</div>
							</div>
							<div class="col-xl-2 col-lg-4 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader" data-perc="0.90">
									<div class="loader_content">
										<div class="loader_title">Success</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Milestones -->
					<div class="milestones">
						<div class="elements_title">Milestones</div>
						<div class="milestones_content">
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

					<!-- Icon Boxes -->

					<div class="icon_boxes">
						<div class="elements_title">Icon Boxes</div>
						<div class="row icon_boxes_row">

							<!-- Icon Box -->
							<div class="col-lg-4 icon_box_col">
								<div class="icon_box">
									<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
										<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_1.svg" alt=""></div>
										<div class="icon_box_title">Cardiology</div>
									</div>
									<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
								</div>
							</div>

							<!-- Icon Box -->
							<div class="col-lg-4 icon_box_col">
								<div class="icon_box">
									<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
										<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_2.svg" alt=""></div>
										<div class="icon_box_title">Gastroenterology</div>
									</div>
									<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
								</div>
							</div>

							<!-- Icon Box -->
							<div class="col-lg-4 icon_box_col">
								<div class="icon_box">
									<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
										<div class="icon_box_icon"><img src="{{url('/')}}/theme-health/images/icon_3.svg" alt=""></div>
										<div class="icon_box_title">Medical Lab</div>
									</div>
									<div class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem maximus malesuada lorem maximus mauris.</div>
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
<script src="{{url('/')}}/theme-health/plugins/easing/easing.js"></script>
<script src="{{url('/')}}/theme-health/plugins/progressbar/progressbar.min.js"></script>
<script src="{{url('/')}}/theme-health/plugins/parallax-js-master/parallax.min.js"></script>
<script src="{{url('/')}}/theme-health/js/elements.js"></script>
@endsection
