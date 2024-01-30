<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>

<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>HTM - Handong TeamMeeting Management</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/vendors/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/resources/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/src/plugins/jquery-steps/jquery.steps.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>

<body class="login-page">
	<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo">
				<a href="login.html">
					<img src="<%=request.getContextPath()%>/resources/vendors/images/htm_logo_dark.png" alt="">
				</a>
			</div>
			<div class="login-menu">
				<ul>
					<li><a href="login.html">Login</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src="<%=request.getContextPath()%>/resources/vendors/images/register-page-img.png" alt="">
				</div>
				<div class="col-md-6 col-lg-5">
					<div class="register-box bg-white box-shadow border-radius-10">
						<div class="wizard-content">
							<form id="userRegister" action="/HTM/submit" method="POST" class="tab-wizard2 wizard-circle wizard" >
								<h5>Basic Account Credentials</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Email Address*</label>
											<div class="col-sm-8">
												<input type="email" class="form-control" name="email">
											</div>
										</div>
									
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Password*</label>
											<div class="col-sm-8">
												<input type="password" class="form-control" name="password">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Confirm Password*</label>
											<div class="col-sm-8">
												<input type="password" class="form-control">
											</div>
										</div>
									</div>
								</section>
								<!-- Step 2 -->
								<h5>Personal Information</h5>
								<section>
								<div class="form-group row">
											<label class="col-sm-4 col-form-label">Username*</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" name="username">
											</div>
										</div>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Student Id*</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" name="studentid">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Phone number</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" name="phone">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Birth</label>
											<div class="col-sm-8">
												<div class="row">
													<div class="col-6">
														<select class="form-control selectpicker" title="Month" data-size="5" name="month">
															<option value='1'>January</option>
															<option value='2'>February</option>
															<option value='3'>March</option>
															<option value='4'>April</option>
															<option value='5'>May</option>
															<option value='6'>June</option>
															<option value='7'>July</option>
															<option value='8'>August</option>
															<option value='9'>September</option>
															<option value='10'>October</option>
															<option value='11'>November</option>
															<option value='12'>December</option>
														</select>
													</div>
													<div class="col-6">
														<select class="form-control selectpicker" title="Day" data-size="5" name="day">
															<option value='1'>1</option>
															<option value='2'>2</option>
															<option value='3'>3</option>
															<option value='4'>4</option>
															<option value='5'>5</option>
															<option value='6'>6</option>
															<option value='7'>7</option>
															<option value='8'>8</option>
															<option value='9'>9</option>
															<option value='10'>10</option>
															<option value='11'>11</option>
															<option value='12'>12</option>
															<option value='13'>13</option>
															<option value='14'>14</option>
															<option value='15'>15</option>
															<option value='16'>16</option>
															<option value='17'>17</option>
															<option value='18'>18</option>
															<option value='19'>19</option>
															<option value='20'>20</option>
															<option value='21'>21</option>
															<option value='22'>22</option>
															<option value='23'>23</option>
															<option value='24'>24</option>
															<option value='25'>25</option>
															<option value='26'>26</option>
															<option value='27'>27</option>
															<option value='28'>28</option>
															<option value='29'>29</option>
															<option value='20'>30</option>
															<option value='31'>31</option>
															
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- Step 3 -->
								<h5>School Info</h5>
								<section>
								<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Semester</label>
											<div class="col-sm-8">
												<select class="form-control selectpicker" title="Select Card Type" name="semester">
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="3">4</option>
													<option value="3">5</option>
													<option value="3">6</option>
													<option value="3">7+</option>
												</select>
											</div>
										</div>
										
									</div>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Professor</label>
											<div class="col-sm-8">
												<select class="form-control selectpicker" title="Select Card Type" name="professor">
													<option value="1">강두필 교수님</option>
													<option value="2">이은실 교수님</option>
													<option value="3">최혜봉 교수님</option>
												</select>
											</div>
										</div>
										
									</div>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="form-group row">
											<label class="col-sm-4 col-form-label">Family</label>
											<div class="col-sm-8">
												<select class="form-control selectpicker" title="Select Card Type" name="family">
													<option value="1">하림이네 가족</option>
													<option value="2">영석이네 가족</option>
													<option value="3">승욱이네 가족</option>
													<option value="4">현직이네 가족</option>
													<option value="5">예지이네 가족</option>
													<option value="6">호연이네 가족</option>
												</select>
											</div>
										</div>
										
									</div>
								</section>
								<!-- Step 4 -->
								<h5>Overview Information</h5>
								<section>
									<div class="form-wrap max-width-600 mx-auto">
										<div class="custom-control custom-checkbox mt-4">
											<input type="checkbox" class="custom-control-input" id="customCheck1">
											<label class="custom-control-label" for="customCheck1">I have read and agreed to the terms of services and privacy policy</label>
										</div>
									</div>
									<input type="submit" class="btn btn-primary">Done</input>
								</section>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- success Popup html Start -->
	<button type="button" id="success-modal-btn" hidden data-toggle="modal" data-target="#success-modal" data-backdrop="static">Launch modal</button>
	<div class="modal fade" id="success-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered max-width-400" role="document">
			<div class="modal-content">
				<div class="modal-body text-center font-18">
					<h3 class="mb-20">Register Submitted!</h3>
					<div class="mb-30 text-center"><img src="<%=request.getContextPath()%>/resources/vendors/images/success.png"></div>
					Success
				</div>
				<div class="modal-footer justify-content-center">
					<input type="submit" class="btn btn-primary">Done</a>
				</div>
			</div>
		</div>
	</div>
	<!-- success Popup html End -->
	<!-- js -->
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/core.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/script.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/process.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/layout-settings.js"></script>
	<script src="<%=request.getContextPath()%>/resources/src/plugins/jquery-steps/jquery.steps.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendors/scripts/steps-setting.js"></script>
</body>

</html>
