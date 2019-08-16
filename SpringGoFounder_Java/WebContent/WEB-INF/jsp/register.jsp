<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="apple-touch-icon" sizes="57x57"
	href="images/favicons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="images/favicons/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/favicons/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="images/favicons/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/favicons/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="images/favicons/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="images/favicons/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="images/favicons/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="images/favicons/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="images/favicons/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="images/favicons/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicons/favicon-16x16.png">
<link rel="manifest" href="images/favicons/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="images/favicons/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">


<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="style/custom.css"> -->
<link href="<c:url value="/resources/css/custom.css" />"
	rel="stylesheet">
<title>Hello, world!</title>
</head>
<body>
	<!--HEADER PART OPRN-->
	<header class="w_header">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-3">
					<div id="logo">
						<a href="#"><img
							src="<c:url value="/resources/images/logo.png"/>"
							class="img-fluid" alt="logo"></a>
					</div>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
	</header>
	<!--HEADER PART CLOSED-->



	<div class="log_in_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row justify-content-between align_text">
						<div class="col-lg-7">
							<div class="log_in_left_box">
								<h4>Register Your Account</h4>
								<p>Create your personal account on our website by filling in
									your correct information and introduce your business to
									technological intelligence.</p>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="log_in_mobile">
								<img src="<c:url value="/resources/images/reg_mob_image.png"/>"
									class="img-fluid" alt="image">
								<div class="log_in_box">
									<h6>Register Your Account</h6>

									<form:form id="regForm" name="regForm" modelAttribute="user"
										action="registerProcess" method="post"
										onSubmit="return(validate());">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-user" aria-hidden="true"></i>
												</div>
											</div>
											<form:input path="name" name="name" id="name"
												class="form-control" placeholder="Your Name" />

											<!--  <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Your Name">-->
										</div>
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-envelope" aria-hidden="true"></i>
												</div>
											</div>
											<!--  <input type="email" class="form-control" id="inlineFormInputGroup" placeholder="Email Address">-->
											<form:input path="email" name="email" id="email"
												class="form-control" placeholder="Email Address" />
										</div>
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-lock" aria-hidden="true"></i>
												</div>
											</div>
											<form:password path="password" name="password" id="password"
												class="form-control" placeholder="Password" />
											<!--   <input type="password" class="form-control" id="inlineFormInputGroup" placeholder="Password">-->
										</div>
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-phone" aria-hidden="true"></i>
												</div>
											</div>
											<form:input path="phone" name="phone" id="phone"
												class="form-control" placeholder="Phone No" />
											<!--  <input type="tel" class="form-control" id="inlineFormInputGroup" placeholder="Phone No">-->
										</div>
										<div class="form-group">
										<!--  
											<select class="form-control" id="sel1">
												<option>Select County</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
											</select> -->
											
										 <form:select class="form-control" path="country">
						                 	<form:option value="" label="Select Country" />
						                	<form:option value="US" label="US" />	
						                	<form:option value="CHINA" label="CHINA" />	
						                	<form:option value="INDIA" label="INDIA" />	
						                </form:select>
										</div>
										
											<input type="text" value ="F3iL" class="captcha_text" id="mainCaptcha" readonly="readonly"
												disabled />
										
										<div class="button_refresh refresh_button" id="refresh"
											onclick="generateCaptcha();" />
										<i class="fa fa-refresh" aria-hidden="true"></i>
								</div>
								<div class="captcha_fild">
									<div class="form-group">
										
										<input type="text" id="txtInput" class="form-control"
											placeholder="Enter Captcha" />
									</div>
								</div>
							
								<!-- <input type="text" id="txtInput" />  --><input id="Button1"
					class="button_check check_box" type="button" value="Check"
					onclick="CheckValidCaptcha();clearInp()" />
								
					<tr>
				<td><span id="error" style="color: red"></span></td>
			</tr>
			<tr>
				<td><span id="success" style="color: green"></span></td>
			</tr>			
								
								
							
								<form:button class="btn btn-primary log_in_button" id="register"
									name="register" disabled="true">Register</form:button>
								<!--<button type="submit" class="btn btn-primary log_in_button">Register</button>-->
								</form:form>
								<script>
									function validate() {
										var email = document.regForm.email.value;
										atpos = email.indexOf("@");
										dotpos = email.lastIndexOf(".");
										if (email == "" || atpos < 1
												|| (dotpos - atpos < 2)) {
											alert("Please enter correct email ID")
											document.regForm.email.focus();
											return false;
										}

										if (document.regForm.password.value == "") {
											alert("Please provide your password!");
											document.regForm.password.focus();
											return false;
										}
										if (document.regForm.name.value == "") {
											alert("Please provide your name!");
											document.regForm.name.focus();
											return false;
										}
										if (document.regForm.dob.value == "") {
											alert("Please provide your date of birth!");
											document.regForm.dob.focus();
											return false;
										}

										if (document.regForm.address.value == "") {
											alert("Please provide your address!");
											document.regForm.address.focus();
											return false;
										}

										if (document.regForm.phone.value == ""
												|| isNaN(document.regForm.phone.value)
												|| document.regForm.phone.value.length != 10) {
											alert("Please provide a valid Mobile No of 10 digits in the format 0-9!");
											document.regForm.phone.focus();
											return false;
										}
										return (true);
									}

									function generateCaptcha() {
										var alpha = new Array('1', '2', '3',
												'4', '5', '6', '7', '8', '9',
												'0', 'A', 'B', 'C', 'D', 'E',
												'F', 'G', 'H', 'I', 'J', 'K',
												'L', 'M', 'N', 'O', 'P', 'Q',
												'R', 'S', 'T', 'U', 'V', 'W',
												'X', 'Y', 'Z', 'a', 'b', 'c',
												'd', 'e', 'f', 'g', 'h', 'i',
												'j', 'k', 'l', 'm', 'n', 'o',
												'p', 'q', 'r', 's', 't', 'u',
												'v', 'w', 'x', 'y', 'z');
										var i;
										for (i = 0; i < 6; i++) {
											var a = alpha[Math.floor(Math
													.random()
													* alpha.length)];
											var b = alpha[Math.floor(Math
													.random()
													* alpha.length)];
											var c = alpha[Math.floor(Math
													.random()
													* alpha.length)];
											var d = alpha[Math.floor(Math
													.random()
													* alpha.length)];
										
										}
										var code = a + '' + b + '' + '' + c
												+ '' + d ;
										document.getElementById("mainCaptcha").value = code
									}

									function CheckValidCaptcha() {
										
										var string1 = removeSpaces(document
												.getElementById('mainCaptcha').value);
										
										var string2 = removeSpaces(document
												.getElementById('txtInput').value);
										
										if (string1 == string2) {
											
											document.getElementById('success').style.display = "block";
											document.getElementById('error').innerHTML = "";
											//document.getElementById('success').innerHTML = "Form is validated Successfully";
											document.getElementById('error').style.display = "block";
											document.getElementById("register").disabled = false;
											return true;
										} else {
											
											document.getElementById('error').innerHTML = "Please enter a valid captcha.";
											document.getElementById('error').style.display = "block";
											document.getElementById('success').style.display = "none";
											return false;

										}
									}
									function removeSpaces(string) {
										return string.split(' ').join('');
									}

									function clearInp() {
										document.getElementById("txtInput")
												.reset();
									}
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<span class="footer_text">© 2019 . All rights reserved.</span>
			</div>
		</div>
	</div>
	</div>















	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>