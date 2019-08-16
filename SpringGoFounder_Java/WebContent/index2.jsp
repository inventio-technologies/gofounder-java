<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="title" content="GoFounders">
<meta name="description"
	content="Signup with GoFounders. Ensure ultimate residual income. Automated recruit and earning opportunity.">
<meta name="keywords" content="Login,Register Now">
<meta name="robots" content="noindex, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<title>GoFounders</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css"
	integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://www.gofounders.net/assests/userlogin/css/fonts.css" />
<link rel="stylesheet"
	href="https://www.gofounders.net/assests/userlogin/css/aos.css" />
<link rel="stylesheet"
	href="https://www.gofounders.net/assests/userlogin/css/inline.css" />
<link rel="stylesheet"
	href="https://www.gofounders.net/assests/userlogin/css/responsive.css" />
<link rel="icon"
	href="https://www.gofounders.net/assests/userlogin/images/fav-icon.png"
	type="image/gif" sizes="16*16">

<style>
@media ( min-width :767px) {
	.top h3 {
		font-size: 19px;
	}
}

.main-wrapper {
	background-image:
		url('https://d1iy5wifs53qnq.cloudfront.net/assests/userlogin/images/mainbg.jpg');
}
</style>

</head>
<body class="">
	<div class="main-wrapper">
		<div class="mobilebg"></div>
		<div class="logingmain index-login" style="width: 100%;">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-10 col-sm-12">
						<div class="row light-bg">
							<div class="col-lg-6 loginpicblock">

								<img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/SignIn.jpg"
									alt="" class="img-fluid w-100">
								<!-- <div class=" text-white text-center">
<h1 class="text-uppercase">Welcome</h1>
<div class="quote-area">
<p><span class="quote quote-start"> " </span> Become
a founder
and become
successful <span class="quote quote-end"> " </span> </p>
</div>

</div> -->


							</div>
							<div class="col-lg-6 col-sm-12 px-md-0">
								<div class="registration-fields login-files"
									style="background: transparent">
									<div class="site-logo text-center">
										<img
											src="https://d1iy5wifs53qnq.cloudfront.net/assests/userlogin/images/logo.png"
											alt="" class="img-fluid">
									</div>
									<h4 class="text-uppercase font-weight-bold text-center">Sign
										In</h4>

									<!--  <form class="form-horizontal" action="#" method="post">  -->
									 <form:form class="form-horizontal" id="loginForm" modelAttribute="login" action="loginProcess" method="post">
										<fieldset>
											<div class="row">
												<div class="form-group col-12">
													<!-- <input name="email" type="email"
														placeholder="Email Address" class="form-control"> -->
													 <form:input path="email" name="email" id="email" placeholder="Email Address" class="form-control" />	
												</div>

												<div class="form-group col-12">
													<!-- <input name="password" type="password"
														placeholder="Password" class="form-control"> -->
														
												<form:password path="password" name="password" id="password" placeholder="Password" class="form-control" />		
												</div>
												<div class="submit-btn col-12 text-center mt-2">
													<button type="submit"
														class="btn btn-warning btn-lg founderbtn" name="submit">Sign
														In</button>
												</div>
											</div>
										</fieldset>
									 </form:form>

								</div>

								<div class="row aditonalinfos">
									<div class="col-lg-3 col-sm-3 col-3">
										<a href="registration.html" class="tooltip"><img
											src="https://d1iy5wifs53qnq.cloudfront.net/assests/userlogin/images/iconone.png"
											alt="Create Account">
											<div class="top">
												<h3>Create Account</h3>

												<i></i>
											</div> </a>
									</div>
									<div class="col-lg-3 col-sm-3 col-3">
										<a href="forgotpassword.html" class="tooltip"><img
											src="https://d1iy5wifs53qnq.cloudfront.net/assests/userlogin/images/icontwo.png"
											alt="Forgot Password">
											<div class="top">
												<h3>Reset Password</h3>

												<i></i>
											</div> </a>
									</div>
									<div class="col-lg-3 col-sm-3 col-3">
										<a href="resendlogin.html" class="tooltip"><img
											src="https://d1iy5wifs53qnq.cloudfront.net/assests/userlogin/images/iconthree.png"
											alt="Reset Login">
											<div class="top">
												<h3>Resend Login Information</h3>

												<i></i>
											</div> </a>
									</div>

									<div class="col-lg-3 col-sm-3 col-3">
										<a href="verification_email.html" class="tooltip"> <img
											src="https://www.gofounders.net/assests/images/email-verification-icon.png"
											alt="Reset Login">
											<div class="top">
												<h3>Resend Verification Link</h3>
												<i></i>
											</div>
										</a>
									</div>



								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-12">
								<div class="footertxt text-center">
									<h3>Contact Us :</h3>
									<a href="mailto:support@gofounders.net"><img
										src="https://d1iy5wifs53qnq.cloudfront.net/assests/userlogin/images/mail.png"
										alt="email" height="46" width="46"> </a>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>

	</div>
	<!-- <script src="js/jquery-3.3.1.min.js"></script>-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"
		integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp"
		crossorigin="anonymous"></script>
	<!-- <script src="js/aos.js"></script>-->
</body>
</html>