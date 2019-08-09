<%@page import="java.util.UUID"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
.form_error {
	color: red;
	font-size: 15px;
	font-weight: bold;
}

.cst {
	text-align: center;
}

.small-pass-text {
	font-size: 12px;
}

.top-notification {
	background: rgba(11, 161, 162, 0.88);
	color: #fff;
	padding: 20px 10px;
	margin-bottom: 20px;
}

.register-section {
	padding: 4% 0 11%;
}

@media ( max-width :576px) {
	.register-section {
		padding: 4% 0 31%;
	}
}

@media ( min-width : 1450px) {
	.submit-btn button, .submit-btn a {
		width: 61%;
	}
	.small-pass-text {
		font-size: .9vw;
	}
	.register-section {
		padding: 11% 0 11%;
		height: 110vh;
	}
}
</style>


</head>
<body class="">
	<div class="main-wrapper">
		<div class="mobilebg"></div>
		<div class="register-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-10">

						<div class="row">
							<div class="col-12 top-notification text-center">

								<p style="font-size: 18px; margin-bottom: 10px;">
									<strong class="text-capitalized">You are invited by :</strong>
									<strong class="text-capitalized" style="font-size: 22px">OP
										Admin </strong><span class="d-inline-block">[iprofusion247@gmail.com]</span>
								</p>
								<p class="mb-0 s_t" style="font-size: 15px;">* if this not
									your actual inviter please DO NOT PROCEED. Contact Your Inviter
									Immediately to get the correct link</p>
							</div>
						</div>


						<div class="row light-bg">
							<div class="col-lg-6 px-md-0">
								<div class="registration-fields mb-3"
									style="background: transparent">
									<div class="site-logo text-center mb-3">
										<img src="assests/userlogin/images/logo.png" alt=""
											class="img-fluid">
									</div>
									<span style="color: #FF0000">${result}</span>
									<h4 class="text-uppercase font-weight-bold text-center">REGISTER</h4>

									<div class="panel-group cst"></div>
									<form:form class="form-horizontal" id="regForm" name="regForm"
										modelAttribute="user" action="registerProcess" method="post">

										<input type="hidden" name="hid" value="">
										<input type="hidden" name="hid_user" value="">

										<fieldset>
											<div class="row">
												<div class="form-group col-md-6">

													<form:input path="firstname" name="firstname"
														id="firstname" required="" value=""
														placeholder="First Name" class="form-control" />
												</div>
												<div class="form-group col-md-6">
													<form:input path="lastname" name="lastname"
														id="lastname" required="" value=""
														placeholder="Last Name" class="form-control" />	
												</div>

												<div class="form-group col-12">
													<form:input path="email" name="email"
														id="email" required="" value="" type="email"
														placeholder="Email Address" class="form-control" />														
												</div>


												<div class="form-group col-12">
													<form:input path="password" id="password" name="password" type="password"
														placeholder="Password" value="" class="form-control"
														required="" aria-autocomplete="list" /> 
													<!-- <input id="" name="ip" type="hidden" placeholder="" value="14.98.99.10"> -->
												</div>
												<div class="form-group col-12">
													<p class="text-danger mb-0 small-pass-text" style="">(*
														Password should be at least 8 characters)</p>
												</div>



												<div class="form-group col-12">
													<form:input path="phone" id="phone" name="phone" required=""
														placeholder="Phone Number" class="form-control" />
												</div>
												<div class="form-group col-12">

													<form:select path="country" name="country" class="form-control" required="">
														<form:option value="" label="Select Country" />
						                				<form:option value="US" label="US" />	
										                <form:option value="CHINA" label="CHINA" />	
										                <form:option value="INDIA" label="INDIA" />

														<%-- <form:option value="Afghanistan" label="Afghanistan"/>
														<form:option value="Albania" label="Albania"/>
														<form:option value="Algeria" label="Algeria"/>
														<form:option value="American Samoa" label="American Samoa"/>
														<form:option value="Andorra" label="Andorra"/>
														<form:option value="Angola" label="Angola"/>
														<form:option value="Antigua and Barbuda" label="Antigua and Barbuda"/>
														<form:option value="Argentina" label="Argentina"/>
														<form:option value="Armenia" label="Armenia"/>
														<form:option value="Aruba" label="Aruba"/>
														<form:option value="Australia" label="Australia"/>
														<form:option value="Austria" label="Austria"/>
														<form:option value="Azerbaijan" label="Azerbaijan"/>
														<form:option value="Bahamas, The" label="Bahamas, The"/>
														<form:option value="Bahrain" label="Bahrain"/>
														<form:option value="Bangladesh" label="Bangladesh"/>
														<form:option value="Barbados" label="Barbados"/>
														<form:option value="Belarus" label="Belarus"/>
														<form:option value="Belgium" label="Belgium"/>
														<form:option value="Belize">Belize</form:option>
														<form:option value="Benin">Benin</form:option>
														<form:option value="Bermuda">Bermuda</form:option>
														<form:option value="Bhutan">Bhutan</form:option>
														<form:option value="Bolivia">Bolivia</form:option>
														<form:option value="Bosnia and Herzegovina">Bosnia and
															Herzegovina</form:option>
														<form:option value="Botswana">Botswana</form:option>
														<form:option value="Brazil">Brazil</form:option>
														<form:option value="British Virgin Islands">British
															Virgin Islands</form:option>
														<form:option value="Brunei Darussalam">Brunei
															Darussalam</form:option>
														<form:option value="Bulgaria">Bulgaria</form:option>
														<form:option value="Burkina Faso">Burkina Faso</form:option>
														<form:option value="Burundi">Burundi</form:option>
														<form:option value="Cabo Verde">Cabo Verde</form:option>
														<form:option value="Cambodia">Cambodia</form:option>
														<form:option value="Cameroon">Cameroon</form:option>
														<form:option value="Canada">Canada</form:option>
														<form:option value="Cayman Islands">Cayman Islands</form:option>
														<form:option value="Central African Republic">Central
															African Republic</form:option>
														<form:option value="Chad">Chad</form:option>
														<form:option value="Chile">Chile</form:option>
														<form:option value="China">China</form:option>
														<form:option value="Colombia">Colombia</form:option>
														<form:option value="Comoros">Comoros</form:option>
														<form:option value="Congo, Dem. Rep.">Congo, Dem. Rep.</form:option>
														<form:option value="Congo, Rep.">Congo, Rep.</form:option>
														<form:option value="Cook Islands">Cook Islands</form:option>
														<form:option value="Costa Rica">Costa Rica</form:option>
														<form:option value="Cote d`Ivoire">Cote d`Ivoire</form:option>
														<form:option value="Croatia">Croatia</form:option>
														<form:option value="Cuba">Cuba</form:option>
														<form:option value="Curacao">Curacao</form:option>
														<form:option value="Cyprus">Cyprus</form:option>
														<form:option value="Czech Republic">Czech Republic</form:option>
														<form:option value="Denmark">Denmark</form:option>
														<form:option value="Djibouti">Djibouti</form:option>
														<form:option value="Dominica">Dominica</form:option>
														<form:option value="Dominican Republic">Dominican
															Republic</form:option>
														<form:option value="Ecuador">Ecuador</form:option>
														<form:option value="Egypt">Egypt</form:option>
														<form:option value="El Salvador">El Salvador</form:option>
														<form:option value="Equatorial Guinea">Equatorial
															Guinea</form:option>
														<form:option value="Eritrea">Eritrea</form:option>
														<form:option value="Estonia">Estonia</form:option>
														<form:option value="Eswatini">Eswatini</form:option>
														<form:option value="Ethiopia">Ethiopia</form:option>
														<form:option value="Faroe Islands">Faroe Islands</form:option>
														<form:option value="Fiji">Fiji</form:option>
														<form:option value="Finland">Finland</form:option>
														<form:option value="France">France</form:option>
														<form:option value="Gabon">Gabon</form:option>
														<form:option value="Gambia, The">Gambia, The</form:option>
														<form:option value="Georgia">Georgia</form:option>
														<form:option value="Germany">Germany</form:option>
														<form:option value="Ghana">Ghana</form:option>
														<form:option value="Greece">Greece</form:option>
														<form:option value="Greenland">Greenland</form:option>
														<form:option value="Grenada">Grenada</form:option>
														<form:option value="Guam">Guam</form:option>
														<form:option value="Guatemala">Guatemala</form:option>
														<form:option value="Guinea">Guinea</form:option>
														<form:option value="Guinea-Bissau">Guinea-Bissau</form:option>
														<form:option value="Guyana">Guyana</form:option>
														<form:option value="Haiti">Haiti</form:option>
														<form:option value="Honduras">Honduras</form:option>
														<form:option value="Hong Kong SAR, China">Hong Kong
															SAR, China</form:option>
														<form:option value="Hungary">Hungary</form:option>
														<form:option value="Iceland">Iceland</form:option>
														<form:option value="India">India</form:option>
														<form:option value="Indonesia">Indonesia</form:option>
														<form:option value="Iran, Islamic Rep.">Iran, Islamic
															Rep.</form:option>
														<form:option value="Iraq">Iraq</form:option>
														<form:option value="Ireland">Ireland</form:option>
														<form:option value="Isle of Man">Isle of Man</form:option>
														<form:option value="Israel">Israel</form:option>
														<form:option value="Italy">Italy</form:option>
														<form:option value="Jamaica">Jamaica</form:option>
														<form:option value="Japan">Japan</form:option>
														<form:option value="Jordan">Jordan</form:option>
														<form:option value="Kazakhstan">Kazakhstan</form:option>
														<form:option value="Kenya">Kenya</form:option>
														<form:option value="Kiribati">Kiribati</form:option>
														<form:option value="Korea, Dem. People`s Rep.">Korea,
															Dem. People`s Rep.</form:option>
														<form:option value="Korea, Rep.">Korea, Rep.</form:option>
														<form:option value="Kuwait">Kuwait</form:option>
														<form:option value="Kyrgyzstan">Kyrgyzstan</form:option>
														<form:option value="Laos">Laos</form:option>
														<form:option value="Latvia">Latvia</form:option>
														<form:option value="Lebanon">Lebanon</form:option>
														<form:option value="Lesotho">Lesotho</form:option>
														<form:option value="Liberia">Liberia</form:option>
														<form:option value="Libya">Libya</form:option>
														<form:option value="Liechtenstein">Liechtenstein</form:option>
														<form:option value="Lithuania">Lithuania</form:option>
														<form:option value="Luxembourg">Luxembourg</form:option>
														<form:option value="Macao SAR, China">Macao SAR, China</form:option>
														<form:option value="Madagascar">Madagascar</form:option>
														<form:option value="Malawi">Malawi</form:option>
														<form:option value="Malaysia">Malaysia</form:option>
														<form:option value="Maldives">Maldives</form:option>
														<form:option value="Mali">Mali</form:option>
														<form:option value="Malta">Malta</form:option>
														<form:option value="Marshall Islands">Marshall Islands</form:option>
														<form:option value="Mauritania">Mauritania</form:option>
														<form:option value="Mauritius">Mauritius</form:option>
														<form:option value="Mexico">Mexico</form:option>
														<form:option value="Micronesia, Fed. Sts.">
															Micronesia, Fed. Sts.</form:option>
														<form:option value="Moldova">Moldova</form:option>
														<form:option value="Monaco">Monaco</form:option>
														<form:option value="Mongolia">Mongolia</form:option>
														<form:option value="Montenegro">Montenegro</form:option>
														<form:option value="Morocco">Morocco</form:option>
														<form:option value="Mozambique">Mozambique</form:option>
														<form:option value="Myanmar">Myanmar</form:option>
														<form:option value="Namibia">Namibia</form:option>
														<form:option value="Nauru">Nauru</form:option>
														<form:option value="Nepal">Nepal</form:option>
														<form:option value="Netherlands">Netherlands</form:option>
														<form:option value="New Caledonia">New Caledonia</form:option>
														<form:option value="New Zealand">New Zealand</form:option>
														<form:option value="Nicaragua">Nicaragua</form:option>
														<form:option value="Niger">Niger</form:option>
														<form:option value="Nigeria">Nigeria</form:option>
														<form:option value="North Macedonia">North Macedonia</form:option>
														<form:option value="Norway">Norway</form:option>
														<form:option value="Oman">Oman</form:option>
														<form:option value="Pakistan">Pakistan</form:option>
														<form:option value="Palau">Palau</form:option>
														<form:option value="Palestine">Palestine</form:option>
														<form:option value="Panama">Panama</form:option>
														<form:option value="Papua New Guinea">Papua New Guinea</form:option>
														<form:option value="Paraguay">Paraguay</form:option>
														<form:option value="Peru">Peru</form:option>
														<form:option value="Philippines">Philippines</form:option>
														<form:option value="Poland">Poland</form:option>
														<form:option value="Portugal">Portugal</form:option>
														<form:option value="Puerto Rico">Puerto Rico</form:option>
														<form:option value="Qatar">Qatar</form:option>
														<form:option value="Romania">Romania</form:option>
														<form:option value="Russian Federation">Russian
															Federation</form:option>
														<form:option value="Rwanda">Rwanda</form:option>
														<form:option value="Samoa">Samoa</form:option>
														<form:option value="San Marino">San Marino</form:option>
														<form:option value="Sao Tome and Principe">Sao Tome
															and Principe</form:option>
														<form:option value="Saudi Arabia">Saudi Arabia</form:option>
														<form:option value="Senegal">Senegal</form:option>
														<form:option value="Serbia">Serbia</form:option>
														<form:option value="Seychelles">Seychelles</form:option>
														<form:option value="Sierra Leone">Sierra Leone</form:option>
														<form:option value="Singapore">Singapore</form:option>
														<form:option value="Sint Maarten (Dutch part)">Sint
															Maarten (Dutch part)</form:option>
														<form:option value="Slovakia">Slovakia</form:option>
														<form:option value="Slovenia">Slovenia</form:option>
														<form:option value="Solomon Islands">Solomon Islands</form:option>
														<form:option value="Somalia">Somalia</form:option>
														<form:option value="South Africa">South Africa</form:option>
														<form:option value="South Sudan">South Sudan</form:option>
														<form:option value="Spain">Spain</form:option>
														<form:option value="Sri Lanka">Sri Lanka</form:option>
														<form:option value="St. Kitts and Nevis">St. Kitts and
															Nevis</form:option>
														<form:option value="St. Lucia">St. Lucia</form:option>
														<form:option value="St. Martin (French part)">St.
															Martin (French part)</form:option>
														<form:option value="St. Vincent and the Grenadines">
															St. Vincent and the Grenadines</form:option>
														<form:option value="Sudan">Sudan</form:option>
														<form:option value="Suriname">Suriname</form:option>
														<form:option value="Svalbard and Jan Mayen">Svalbard
															and Jan Mayen</form:option>
														<form:option value="Sweden">Sweden</form:option>
														<form:option value="Switzerland">Switzerland</form:option>
														<form:option value="Syrian Arab Republic">Syrian Arab
															Republic</form:option>
														<form:option value="Tajikistan">Tajikistan</form:option>
														<form:option value="Tanzania">Tanzania</form:option>
														<form:option value="Thailand">Thailand</form:option>
														<form:option value="Timor-Leste">Timor-Leste</form:option>
														<form:option value="Togo">Togo</form:option>
														<form:option value="Tonga">Tonga</form:option>
														<form:option value="Trinidad and Tobago">Trinidad and
															Tobago</form:option>
														<form:option value="Tunisia">Tunisia</form:option>
														<form:option value="Turkey">Turkey</form:option>
														<form:option value="Turkmenistan">Turkmenistan</form:option>
														<form:option value="Turks and Caicos Islands">Turks
															and Caicos Islands</form:option>
														<form:option value="Tuvalu">Tuvalu</form:option>
														<form:option value="Uganda">Uganda</form:option>
														<form:option value="Ukraine">Ukraine</form:option>
														<form:option value="United Arab Emirates">United Arab
															Emirates</form:option>
														<form:option value="United Kingdom">United Kingdom</form:option>
														<form:option value="United States">United States</form:option>
														<form:option value="Uruguay">Uruguay</form:option>
														<form:option value="Uzbekistan">Uzbekistan</form:option>
														<form:option value="Vanuatu">Vanuatu</form:option>
														<form:option value="Vatican City">Vatican City</form:option>
														<form:option value="Venezuela, RB">Venezuela, RB</form:option>
														<form:option value="Vietnam">Vietnam</form:option>
														<form:option value="Virgin Islands (U.S.)">Virgin
															Islands (U.S.)</form:option>
														<form:option value="Yemen, Rep.">Yemen, Rep.</form:option>
														<form:option value="Zambia">Zambia</form:option>
														<form:option value="Zimbabwe">Zimbabwe</form:option>
														<form:option value="Åland Islands">Åland Islands</form:option> --%>
													</form:select>
												</div>

												<div class="form-group col-12">
													<input type="hidden" name="sponser_email"
														value=" aXByb2Z1c2lvbjI0N0BnbWFpbC5jb20=">

													<div class="form-control d-none">
														iprofusion247@gmail.com</div>

													<!-- <input id="" name="" type="email" placeholder="Sponsor Email"
                                                            class="form-control">-->
												</div>


												<%
													String cap = UUID.randomUUID().toString().substring(0,5);
												%>

												<div class="form-group col-md-3">
													<p class="captcha-area mb-0 mt-2"
														style="text-align: center;">
														<font size="5"><%= cap %></font>
													</p>
													<%-- <span><%= cap %></span> --%>
													<!--<input id="" name="" type="text" placeholder="captcha"
                                                            class="form-control">-->
                                                            
												</div>
												
												<div class="form-group col-md-6">
													<input id="captcha_code" name="captcha_code" type="text"
														placeholder=" Enter Captcha" class="form-control"
														required="" onkeyup="capchaTest('<%= cap %>')">
												</div>
												<!-- <div class="captcha-reload col-12 text-center mt-3">
                                                        <p class="mb-0">
                                                            Can�t read the image? <a href="#">Click Here</a> to refresh
                                                        </p>
                                                    </div> -->
												<input type="hidden" name="sum" value="78409"> <input
													type="hidden" name="user_level" value="0"> <input
													type="hidden" name="user_status" value="111">

												<div class="submit-btn col-12 text-center mt-4">
													
													<button type="submit" id="signup"
														class="btn btn-warning btn-lg founderbtn" disabled="true">Sign Up</button>

													<center>
														<font color="red"></font>
													</center>



												</div>
											</div>
										</fieldset>
									</form:form>
									<script>
									function capchaTest(param1){
										var code = document.getElementById("captcha_code").value;
										console.log("code = "+code);
										console.log("param1 = "+param1);
										if(param1 == code){
											document.getElementById("signup").disabled = false;
										}else{
											document.getElementById("signup").disabled = true;
										}
									}
									
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
							<div class="col-lg-6  welcome-banner p-0 d-none d-lg-block"
								style="background: url('https://www.gofounders.net/assests/img/SignUp.jpg') no-repeat top center; background-size: cover">


								<div class="founder-btn " style="padding: 10px 40px 3px;">
									<p>Already a Founder?</p>

									<div class="submit-btn ">
										<a href="login"
											class="btn btn-warning btn-lg founderbtn ">Sign In</a>
									</div>
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