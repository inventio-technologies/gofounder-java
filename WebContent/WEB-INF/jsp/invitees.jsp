<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Invitees | GoFounders</title>
<link rel="icon"
	href="https://d1iy5wifs53qnq.cloudfront.net/assests/img/favgofounder.png"
	type="image/png" sizes="16x16">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Oswald:400,500,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="https://www.gofounders.net/assests/css/video-js2.css"
	rel="stylesheet" type="text/css">
<link type="text/css"
	href="https://www.gofounders.net/assests/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://www.gofounders.net/assests/css/jquery-ui.css">
<link href="https://www.gofounders.net/assests/css/pagination.css"
	rel="stylesheet" type="text/css">
<link href="https://www.gofounders.net/assests/css/nucleo.css"
	rel="stylesheet">
<!-- <link href="assests/all.min.css" rel="stylesheet"> -->
<!-- Argon CSS -->
<link type="text/css"
	href="https://www.gofounders.net/assests/css/gofounders2.css"
	rel="stylesheet">
<!--all inline css moved file link here-->
<link href="https://www.gofounders.net/assests/css/inline5.css"
	rel="stylesheet" type="text/css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- <link href="https://www.gofounders.net/assests/css/errormsg.css" rel="stylesheet" type="text/css">
         -->
<link href="https://www.gofounders.net/assests/css/responsive2.css"
	rel="stylesheet" type="text/css">
<script src="https://www.gofounders.net/assests/js/jquery.min.js"></script>
<script async
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script async
	src="https://www.gofounders.net/assests/js/argon.js?v=1.0.0"></script>
<script
	src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/ckeditor.js"></script>
<script async src="https://www.gofounders.net/assests/js/video.min.js"></script>
<script async
	src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/emojione/libs/emojione/emojione.min.js"></script>
<script async type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<!-- Include Date Range Picker -->
<script async type="text/javascript"
	src="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
<script async src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>

<style>
.c-view i {
	color: #009891;
	font-size: 18px;
	border: 2px solid #009891;
	border-radius: 14px;
	padding: 3px 3px;
}

@
-moz-document url-prefix () { .sidebar { scrollbar-color:#11bf9d#ffcf1d;
	scrollbar-width: thin;
}

}
.avatar-bg {
	background-size: cover;
	background-position: center center;
}

@import
	url('https://fonts.googleapis.com/css?family=Nunito:300,400,600,700');

.swal-modal * {
	font-family: 'Nunito', sans-serif;
	font-weight: bold;
	text-align: center;
	font-size: 20px;
}

.swal-modal {
	
}

.swal-overlay {
	background-color: rgba(0, 0, 0, 0.62);
}

.swal-text {
	color: rgb(0, 0, 0);
}

.swal-button {
	background-color: #ffcf1d;
	font-size: 16px;
	margin-top: -14px;
	box-shadow: 0px 0px 20px #b1b1b1;
}

.swal-text:first-child {
	margin-top: 25px;
}

.swal-modal {
	width: 418px;
}

.vjs-poster {
	background-size: cover !important;
}
</style>

</head>
<body class="invitees user_body" onload="showMessage('${message}')">
	<!-- Sidenav -->
	<style type="text/css">
.m-title {
	margin-top: -46px;
	font-size: 20px;
	margin-bottom: 22px;
}

#loading-image {
	position: fixed;
	width: 100%;
	height: 100%;
	z-index: 999;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
}

.community-notification-modal .modal-body {
	max-height: 75vh;
	overflow-y: auto;
}

@media screen and (min-width:1450px) {
	.for-admin .sidebar-link {
		font-size: 1vw;
	}
	.for-admin .sidebar-menu {
		list-style-type: none;
		padding-left: 5%;
	}
}
</style>
	<style>
.sub_menu a {
	color: #fff;
}

.sub_menu ul {
	list-style-type: none;
}

.sub_menu {
	list-style-type: disc;
	/* position: absolute; */
	left: 100%;
	width: 220px;
	z-index: 9;
	background: #116aec;
	top: 0;
	padding: 0px 0;
	list-style-type: circle;
	color: #fff;
	list-style-position: inside;
	padding-left: 12%;
	font-size: 14px;
}

.nav-item {
	position: relative;
}

.sub_menu li a {
	display: inline-block;
	padding: 5px 0;
	padding-left: 10px;
}

.sidebar {
	overflow: visible;
	z-index: 99;
}

.sub_menu li a:hover {
	color: #fed82c;
}

@media ( min-width : 992px) {
	.animate {
		animation-duration: 0.3s;
		-webkit-animation-duration: 0.3s;
		animation-fill-mode: both;
		-webkit-animation-fill-mode: both;
	}
}

@
keyframes slideIn { 0% {
	transform: translateY(1rem);
	opacity: 0;
}

100%
{
transform
:translateY(0rem)
;

         
opacity
:
 
1;
}
0%
{
transform
:
 
translateY
(1rem);

         
opacity
:
 
0;
}
}
@
-webkit-keyframes slideIn { 0% {
	-webkit-transform: transform;
	-webkit-opacity: 0;
}

100%
{
-webkit-transform
:
 
translateY
(0);

         
-webkit-opacity
:
 
1;
}
0%
{
-webkit-transform
:
 
translateY
(1rem);

         
-webkit-opacity
:
 
0;
}
}
.slideIn {
	-webkit-animation-name: slideIn;
	animation-name: slideIn;
}

.sub_menu.slideIn {
	top: 91% !important;
	left: 0% !important;
	width: 100%;
	border-radius: 0px;
}

.nav-item.dropdown {
	display: block;
}

.nav-item.dropdown:hover .sub_menu {
	display: block;
}

.icon-right {
	margin-left: auto;
	float: right;
	padding-right: 30px;
	padding-top: 3px;
}

.sidebar-link {
	cursor: pointer;
}

.icon-right i {
	-webkit-transition: transform .5s ease;
	-o-transition: transform .5s ease;
	transition: transform .5s ease;
}

.drop_menu_rotate .icon-right i {
	-webkit-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	transform: rotate(-90deg);
}

.sidebar-scroll {
	overflow-y: auto;
	padding-bottom: 2%;
}
/* .sidebar::-webkit-scrollbar-track
         {
         -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
         background-color: #F5F5F5;
         border-radius: 10px;
         }
         .sidebar::-webkit-scrollbar
         {
         width: 10px;
         background-color: #F5F5F5;
         }
         .sidebar::-webkit-scrollbar-thumb
         {
         border-radius: 10px;
         background-image: -webkit-gradient(linear,
         left bottom,
         left top,
         color-stop(0.44, rgb(122,153,217)),
         color-stop(0.72, rgb(73,125,189)),
         color-stop(0.86, rgb(28,58,148)));
         } */
.sidebar::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 0px #fcbb20;
	background-color: #fcbb20;
}

.sidebar::-webkit-scrollbar {
	width: 2px;
	background-color: #F5F5F5;
}

.sidebar::-webkit-scrollbar-thumb {
	background-color: #11c09e;
	/* border: 2px solid #555555; */
}

.sidebar {
	border-right: 0px;
}

.sidebar {
	overflow-y: scroll;
}
/* .collapsing {
         transition-timing-function: ease-in-out;
         transition-duration: 0;
         transition-property: height;
         padding:0 !important;
         padding-left: 12% !important;
         } */
</style>
<script>
	function showMessage(message){
		if(message !== "")
			swal(message);
	}
</script>
	<!-- <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light" id="sidenav-main"> -->
	<div class="sidebar">
		<div class="sidebar-inner">
			<div class="sidebar-logo" style="">
				<a class="td-n" href="https://www.gofounders.net/users/dashboard"
					style="padding: 0;">
					<div class="logo">
						<img
							src="https://d1iy5wifs53qnq.cloudfront.net/assests/css/logo.png"
							alt="" class="">
					</div>
				</a>
			</div>
			<a href="#" class="menu-bar d-md-none navbar-toggler"
				data-toggle="collapse" data-target="#g-toogler"
				aria-controls="g-toogler" aria-expanded="false"
				aria-label="Toggle navigation"> <img
				src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/menuburger.png"
				width="22">
			</a>
			<div class="collapse navbar-collapse" id="g-toogler">
				<ul class="sidebar-menu mb-0" style="">
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/users/dashboard"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/1.png"
								alt="" />
						</span> <span class="title"> Dashboard </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/user_profile"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/3.png"
								alt="" />
						</span> <span class="title"> My Profile </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/announcements"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/2.png"
								alt="" />
						</span> <span class="title"> Announcements <!--                                <img id="announ" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;">-->
						</span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link  "
						href="https://www.gofounders.net/community"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/16.png"
								alt="" />
						</span> <span class="title"> Community </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/webinars"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/4.png"
								alt="" />
						</span> <span class="title"> Webinars <!--                                <img id="webniar" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;"></span>-->
						</span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/user_link"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/9.png"
								alt="" />
						</span> <span class="title"> My Links </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/download"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/11.png"
								alt="" />
						</span> <span class="title"> Downloads </span> <span
							style="color: rgb(255, 205, 23);"> &nbsp;<b>(120)</b></span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/invitations"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/5.png"
								alt="" />
						</span> <span class="title"> My Invitations </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link activenow"
						href="https://www.gofounders.net/invitees/index/?info=10"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/6.png"
								alt="" />
						</span> <span class="title"> My Invitees </span> <span
							style="color: rgb(255, 205, 23);"> &nbsp;<b>(6)</b></span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/member/index/?info=10"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/7.png"
								alt="" />
						</span> <span class="title"> My Team </span> <span
							style="color: rgb(255, 205, 23);"> &nbsp;<b>(6)</b></span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/alfounders"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/8.png"
								alt="" />
						</span> <span class="title"> Team Summary </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/marketing"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/10.png"
								alt="" />
						</span> <span class="title"> Marketing <!--                                <img id="marketing" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;">-->
						</span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link  "
						href="https://www.gofounders.net/tutorials"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/12.png"
								alt="" />
						</span> <span class="title"> Tutorials </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/testimonials"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/15.png"
								alt="" />
						</span> <span class="title"> Testimonials </span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/faq"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/13.png"
								alt="" />
						</span> <span class="title"> FAQs <!--                                <img id="faq1" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;">-->
						</span>
					</a></li>
					<li class="nav-item"><a class="sidebar-link "
						href="https://www.gofounders.net/support"> <span
							class="icon-holder"> <img
								src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/14.png"
								alt="" />
						</span> <span class="title"> Support </span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="page-container">
		<div class="page-bg"></div>
		<div class="main-content">
			<!-- Top navbar -->
			<nav class="navbar navbar-top navbar-expand-md navbar-dark"
				id="navbar-main">
				<div class="container-fluid">
					<div
						class="col-12 d-flex justify-content-between align-items-center flex-wrap">
						<!-- Brand -->
						<a class="h4 mb-0 text-white text-uppercase main-title  d-flex">invitees</a>
						<ul class="navbar-nav align-items-center ml-md-auto"
							id="ul_community_head_id">
							<li class="nav-item dropdown community-list-item"><span
								class="total-notifiocation" id="com_count_total_not">0</span> <a
								class="nav-link position-relative notification-icon community-notifiocation"
								href="#" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
									class="fa fa-users"></i> <span class="kt-pulse__ring"></span>
							</a>
								<div
									class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0 overflow-hidden">
									<div class="notification-row " id="notify_com_popup_bx">
										<div class="px-3 py-3" id="com_noti_headlines">
											<div align="center">
												<h4>No Notification found!!</h4>
											</div>
										</div>
										<div class="list-group list-group-flush">
											<ul id="all_ul">
											</ul>
										</div>
										<hr>
									</div>
								</div></li>
						</ul>
						<ul class="navbar-nav align-items-center ml-md-auto n-menu"
							style="margin-left: 20px !important;">
							<li class="nav-item dropdown"><span
								class="total-notifiocation totalnoti"> 0 </span> <a
								class="position-relative notification-icon" href="#"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="fa fa-bell"></i> <span
									class="kt-pulse__ring"></span>
							</a>
								<div
									class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0 overflow-hidden">
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary inviteesnoti">0</strong>
												notifications from <span>Invitees :</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
												<input type="hidden" name="" id="inviteesidlist" value="">
											</ul>
										</div>
										<hr>
									</div>
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary inviteesnoti">0</strong>
												notifications from <span>Team :</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
												<input type="hidden" name="" id="teamlist" value="">
											</ul>
										</div>
										<hr>
									</div>
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary inviteesnoti">0</strong>
												notifications from <span>Pending Founders :</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
											</ul>
										</div>
										<hr>
									</div>
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary inviteesnoti">0</strong>
												notifications from <span>Webinar Invitees :</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
											</ul>
										</div>
										<hr>
									</div>
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary">0</strong>
												notifications from <span>Webinar</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
												<input type="hidden" name="" id="idslist" value="">
											</ul>
										</div>
										<hr>
									</div>
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary">0</strong>
												notifications from <span>Announcement</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
												<input type="hidden" name="" id="idslistannounce" value="">
											</ul>
										</div>
										<hr>
									</div>
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary">0</strong>
												notifications from <span>Download</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
												<input type="hidden" name="" id="idslistdownload" value="">
											</ul>
										</div>
										<hr>
									</div>
									<div class="notification-row">
										<div class="px-3 py-3">
											<h6 class="text-sm text-muted m-0">
												You have <strong class="text-primary">0</strong>
												notifications from <span>Marketing</span>
											</h6>
										</div>
										<div class="list-group list-group-flush">
											<ul>
												<input type="hidden" name="" id="idslistmarketing" value="">
											</ul>
										</div>
										<hr>
									</div>
								</div></li>
						</ul>
						<!-- User -->
						<ul class="navbar-nav align-items-center d-flex p-menu">
							<li class="nav-item dropdown"><a class="nav-link pr-0"
								href="#" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
									<div class="media align-items-center">
										<!--<span class="avatar avatar-sm rounded-circle">-->
										<!--  <span class="avatar avatar-sm rounded-circle" id="profileImage1"></span>-->
										<!--</span>-->
										<span class="avatar avatar-sm rounded-circle avatar-bg"
											style="background-image: url('https://d1iy5wifs53qnq.cloudfront.net/avtar1.png')">
											<!--<img src="https://www.gofounders.net/uploads/avtar1.png"
                                       width="50px" height="35px">-->
										</span>
										<div class="media-body ml-2">
											<span class="mb-0 text-sm  font-weight-bold">Tanmoy&nbsp;
												Paul</span>
										</div>
									</div>
							</a>
								<div
									class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
									<div class=" dropdown-header noti-title">
										<h6 class="text-overflow m-0">Welcome!</h6>
									</div>
									<a href="#" class="dropdown-item"> <img
										src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/profle.png"
										alt=""> <span>My profile</span>
									</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item"> <img
										src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/sign-out.png"
										alt=""> <span>Logout</span>
									</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
			<style>
.spam-count td {
	font-size: 14px;
	text-align: left;
	font-weight: 600;
}

.modal-header {
	background: #ffcf1d;
	color: #fff;
}

.spam-count p {
	font-weight: 600;
	color: #000;
}

.modal-title {
	color: #172b4d !important;
}

.modal-body tr:nth-of-type(odd) {
	background: #264477;
}

.modal_heading {
	color: #ff0808;
	font-weight: 500;
	padding: 30px 50px 30px 50px;
	border-bottom: 0.07rem solid #827f7f33;
}

.amit {
	font-size: 22px !important;
	font-weight: 800 !important;
	color: #f30c0c !important;
}

.check {
	font-weight: 700;
	font-size: 20px;
	color: #064fab;
}
</style>
			<style type="text/css">
/*.amit {
               color: orange;
               }*/
</style>
			<!-- Page content -->
			<div class="container mt-6 pt-4" style="">
				<!-- Table -->
				<div class="row">
					<div class="col">
						<div class="card shadow">
							<div class="container mt-3">
								<!-- Tab panes -->
								<p align="right" class="invitees-m member-p">
									<a href="webinarinvitees" style="padding: 0% 0% 0% 0%;"
										class="first d-inline-block"><button
											class="btn btn-primary frm_top_btn mb-0">
											Webinar Invitees <img
												src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/group.png"
												style="height: 12px;">
										</button></a> <a href="#" data-toggle="modal" data-target="#myModal_a"
										style="padding: 0% 0% 0% 0%;"><button
											class="btn btn-primary" style="">
											Broadcast <i class="fa fa-envelope"></i>
										</button></a>
									<button data-toggle="modal" data-target="#myModal00"
										class="btn btn-primary" style="">
										Export CSV File
										<svg aria-hidden="true" data-prefix="far"
											data-icon="file-excel"
											class="svg-inline--fa fa-file-excel fa-w-12" role="img"
											xmlns="http://www.w3.org/20/svg" viewBox="0 0 384 512"
											width="16px" height="16px">
                                    <path fill="currentColor"
												d="M369.9 97.9L286 14C277 5 264.8-.1 252.1-.1H48C21.5 0 0 21.5 0 48v416c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48V131.9c0-12.7-5.1-25-14.1-34zM332.1 128H256V51.9l76.1 76.1zM48 464V48h160v104c0 13.3 10.7 24 24 24h104v288H48zm212-240h-28.8c-4.4 0-8.4 2.4-10.5 6.3-18 33.1-22.2 42.4-28.6 57.7-13.9-29.1-6.9-17.3-28.6-57.7-2.1-3.9-6.2-6.3-10.6-6.3H124c-9.3 0-15 10-10.4 18l46.3 78-46.3 78c-4.7 8 1.1 18 10.4 18h28.9c4.4 0 8.4-2.4 10.5-6.3 21.7-40 23-45 28.6-57.7 14.9 30.2 5.9 15.9 28.6 57.7 2.1 3.9 6.2 6.3 10.6 6.3H260c9.3 0 15-10 10.4-18L224 320c.7-1.1 30.3-50.5 46.3-78 4.7-8-1.1-18-10.3-18z"></path>
                                 </svg>
										<!--<i class="fas fa-file-excel"></i>-->
										<!-- <i class="fa fa-file-excel"></i> -->
										<!--<i class="fas fa-file-export"></i>-->
										<!--<img src="https://img.icons8.com/material/18/ffffff/export.png">-->
									</button>
								<div class="modal fade s-modal" id="myModal00" role="dialog">
									<div class="modal-dialog modal-sm modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header">
												<h2 class="modal-title">Export invitees to CSV?</h2>
											</div>
											<div class="modal-footer">
												<button onclick="Export()" data-dismiss="modal"
													type="button" class="btn btn-success">Yes</button>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">No</button>
											</div>
										</div>
									</div>
								</div>
								</p>
								
								<div class="col-lg-3 align-items-center d-flex ">
									Show <select name="limitval" id="limitval"
										class="form-control my-2 mx-2">
										<option selected="10">10</option>
										<option>25</option>
										<option>50</option>
										<option>100</option>
									</select> entries
								</div>
								<div class="row mb-3">
									<div class="col-sm-4"></div>
									<div class="col-sm-8">
										<form:form action="inviteeListByFnameLnameEmail" modelAttribute="invitee" method="post">
											<div class="input-group">
												<input type="text" class="form-control"
													placeholder="Search with First Name, Last Name, Email Address"
													name="nameEmail" value="${nameEmail }">
												<button class="btn btn-default" type="submit" id="btn">
													<img
														src="https://d1iy5wifs53qnq.cloudfront.net/assests/admin/emoji/img/search_white.png"
														class="searchicon">
												</button>
											</div>
										</form:form>
									</div>
								</div>
								<div class="tab-content border mb-3">
									<div id="home" class="container tab-pane active">
										<br>
										<table class="table align-items-center table-flush" id="">
											<thead class="thead-dark">
												<tr>
													<th scope="col">No.</th>
													<th scope="col">First Name</th>
													<th scope="col">Last Name</th>
													<th scope="col">Email Address</th>
													<th scope="col">Date</th>
													<th scope="col">Action</th>
												</tr>
											</thead>
											<tbody>
												
												<% int i=0; %>
												<c:if test="${fn:length(inviteeList) == 0}">
													<tr><td colspan="6" align="center" style="color: #FF0000">No Record Found!!</td></tr>
												</c:if>
												<c:if test="${fn:length(inviteeList) gt 0}">
												
												
												
												<c:forEach var="invitee" items="${inviteeList}">										
												
												
												<tr>
													<td><%= i+=1 %></td>
													<td>${invitee.fname }</td>
													<td>${invitee.lname }</td>
													<td>${invitee.email }</td>
													<td><fmt:formatDate value="${invitee.date }" pattern="dd-MM-yyyy" /></td>
													<td><a href="#" class="mr-2" data-placement="top"
														title="Mail" data-toggle="modal" data-target=".myModal_mail" onClick="setValueInModalMail('${invitee.fname}','${invitee.lname}','${invitee.email}')">
															<i class="fa fa-envelope" style="font-size: 20px"></i>
													</a> <a href="" data-toggle="modal" data-target=".myModal_delete"
														title="Delete" data-placement="top" onClick="setValueInModalDelete(${invitee.inviteeId })"><i
															class="fa fa-times" style="font-size: 20px"></i></a></td>
												</tr>
												
																
															
						
											
												</c:forEach>
												
												</c:if>	
												
												
												
											
											</tbody>
										</table>
										<div class="row align-items-center"
											style="padding: 15px 0; background: #eaeaea;">
											<div id="pagination" class="col-lg-6">
												<ul class="tsc_pagination">
													<li></li>
												</ul>
											</div>
											<c:if test="${fn:length(inviteeList) gt 0}">
												<div class="col-lg-6 p-result text-right">
													<span>
														<p class="m-b"
															style="margin-bottom: 0; font-weight: 600; text-transform: capitalize;">
															showing from 1 to ${fn:length(inviteeList)} of ${fn:length(inviteeList)}</p>
													</span>
												</div>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<input type="hidden" name="userid" id="userid" value="7364">
			<!-- Modal -->
			
			
			
			
			
			
			
			<!---------------- Common Modal Start  ---------------------->
			
			
			
											
									  <div class="modal fade s-modal myModal_delete" role="dialog">
                                          <div class="modal-dialog modal-sm modal-dialog-centered">
                                             <div class="modal-content">
                                                <div class="modal-header">
                                                   <h2 class="modal-title">Are you sure delete it?</h2>
                                                </div>
                                                <div class="modal-footer">
                                                   <form:form action="deleteInvitee" class="w-100 text-right" modelAttribute="invitee" method="post">
                                                   		<input type="hidden" name="inviteeId" id="inviteeId" value="">	
                                                   <a href="#"><button type="submit" class="btn btn-danger" >Yes delete it!</button></a>
                                                   <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                                                   </form:form>	
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       
                                       <script>
	                                       function setValueInModalDelete(inviteeIdVal){
	                                     	  document.getElementById("inviteeId").value = inviteeIdVal;                                     	  
	                                       }
	                                   </script><script>    
	                                       function setValueInModalMail(fname, lname, email){
	                                    	   /* alert("fname = "+fname);
	                                    	   alert("lname = "+lname);
	                                    	   alert("email = "+email); */
	                                    	   document.getElementById("name").value = fname + " " + lname;
	                                    	   document.getElementById("mailSubject").value = "New Message For " + fname + " " + lname;
	                                    	   document.getElementById("email").value = email;
	                                    	   document.getElementById("mailText").value = "";
	                                       }
                                       </script>
									   
                                       <!-- Modal -->
                                       <div class="modal fade myModal_mail"  role="dialog">
                                          <div class="modal-dialog">
                                             <!-- Modal content-->
                                             <div class="modal-content">
                                                <div class="modal-body">
                                                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                   
                                                      <form:form method="post" action="mailSend" enctype="multipart/form-data" onsubmit="return validateBadText1();">
                                                         <!--Body-->
                                                         <div class="form-group">
                                                            <div class="input-group mb-2">
                                                               <div class="input-group-prepend">
                                                                  <div class="input-group-text">
                                                                     <i class="fa fa-user text-info"></i>
                                                                  </div>
                                                               </div>
                                                               <input type="text" class="form-control" id="name" value="" name="name" readonly>
                                                            </div>
                                                         </div>
                                                         <div class="form-group">
                                                            <div class="input-group mb-2">
                                                               <div class="input-group-prepend">
                                                                  <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                                                               </div>
                                                               <input type="text" class="form-control" id="mailSubject" placeholder="Subject" value="" name="mailSubject" readonly >
                                                            </div>
                                                         </div>
                                                         <input type="hidden" class="form-control" id="email" name="email" value="" >
                                                         <div class="form-group">
                                                            <div class="input-group mb-2">
                                                               <div class="input-group-prepend">
                                                                  <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                                                               </div>
                                                               <textarea  name="mailText" class="form-control mailText" id="mailText" placeholder="Enter your message" required>
                                                               
                                                               </textarea>
                                                            </div>
                                                         </div>
                                                         <div class="row mb-4 mt-4">
                                                            <div class="col-lg-6">
                                                               <a href="JavaScript:Void(0);" id="smam1" class="spam-link">Spam Checker</a>
                                                            </div>
                                                            <div class="col-lg-6 text-lg-right">
                                                               <a href="#" class="spam-link" data-toggle="modal" data-target="#spammodal">Spam Trigger Words</a>
                                                            </div>
                                                         </div>
                                                         <div class="text-center">
                                                            <input type="submit" value="Send"  name="emailsbmit" class="btn btn-info btn-block rounded-0 py-2">
                                                            <br>
                                                         </div>
                                                   
                                                   </form:form>
												   
												   </div>
												</div>
                                                </div>
                                             </div>
                                        
                                      

									  <script>
                                          function validateBadText1(){
                                              var spam_count = 0;
                                              var searched_val = "";
                                              var find_str = "";
                                              var replace_str = "";
                                              var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  
                                          
                                              var mail_template_content =  CKEDITOR.instances.editor_1.getData();
                                             // mail_template_content = mail_template_content.replace(/[\s]+/g, " ").trim();
                                             var replace_with_str = "";
                                              
                                              //Keyword 1
                                              $.each(key_words, function(index, value){             
                                                      find_str = eval("/"+value+"/i");              
                                                      if( (value != "$" && mail_template_content.search(find_str) != -1) || (value == "$" && mail_template_content.indexOf(value) != -1) ){         
                                                        replace_str = eval("/"+value+"/gi");          
                                                        replace_with_str = '<span class="amit">' + value + '</span>';
                                                        
                                                        if(value != "" && value != "$"){
                                                          mail_template_content = mail_template_content.replace(replace_str, replace_with_str);
                                                        }
                                                        if(value != "" && value == "$"){
                                                          mail_template_content = mail_template_content.replace(value, replace_with_str);
                                                        }              
                                          
                                                        spam_count++;
                                                      }
                                                         
                                          
                                              });
                                              
                                              $('#spam_cont_id').html(mail_template_content);
                                              if(spam_count > 0){
                                                $('#email_temp_spam_id').modal('show');
                                          
                                                return false;
                                              } else {
                                                return true;
                                              }
                                            }
                                          
                                          
                                           // CKEDITOR.replaceClass( 'mailText' );
                                            CKEDITOR.replaceClass = 'mailText';
                                       </script>
                                       <script>
                                          $(document).ready(function(){
                                            $("#smam1").click(function(){
                                              var spam_count = 0;
                                            var searched_val = "";
                                            var find_str = "";
                                            var replace_str = "";
                                            var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  
                                          
                                            var mail_template_content =  CKEDITOR.instances.editor_1.getData();
                                           // mail_template_content = mail_template_content.replace(/[\s]+/g, " ").trim();
                                           var replace_with_str = "";
                                            
                                            //Keyword 1
                                            $.each(key_words, function(index, value){             
                                                    find_str = eval("/"+value+"/i");              
                                                    if( (value != "$" && mail_template_content.search(find_str) != -1) || (value == "$" && mail_template_content.indexOf(value) != -1) ){         
                                                      replace_str = eval("/"+value+"/gi");          
                                                      replace_with_str = '<span class="amit">' + value + '</span>';
                                                      
                                                      if(value != "" && value != "$"){
                                                        mail_template_content = mail_template_content.replace(replace_str, replace_with_str);
                                                      }
                                                      if(value != "" && value == "$"){
                                                        mail_template_content = mail_template_content.replace(value, replace_with_str);
                                                      }              
                                          
                                                      spam_count++;
                                                    }
                                                       
                                          
                                            });
                                            
                                            $('#spam_cont_id1').html(mail_template_content);
                                          
                                              $('#email_temp_spam_id1').modal('show');
                                          
                                            });
                                          
                                          });
                                          
                                          
                                       </script>
									   
									   
									   		
			
			
			
			
			<!---------------- Common Modal END  ---------------------->
			
			
			
			
			
			
				<!---------------- Broadcast Modal Start  ---------------------->

			
			
			<div class="modal fade" id="myModal_a" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-body">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<div class="">
								<form method="post" action="#" enctype="multipart/form-data"
									onsubmit="return validateBadText();">
									<!--Body-->
									<input type="hidden" class="form-control" id="email1"
										name="email1"
										value="r.mridha@gmail.com,bappa.programmer@gmail.com,nadarnikesh@gmail.com,tanmoy@inventiotechnologies.com,subarnamaitra8@gmail.com,saikatbose1234@gmail.com">
									<div class="form-group">
										<label for="subject">Subject</label> <input type="text"
											class="form-control" id="sub" name="sub"
											value="New Message From Tanmoy Paul" readonly>
									</div>
									<input type="hidden" class="form-control" name="date"
										value="2019/08/07" required="">
									<div class="form-group">
										<label for="email">Message</label>
										<textarea name="msg" class="form-control" id="editornew"
											placeholder="Enter your message" required=""></textarea>
									</div>
									<div class="row mb-4 mt-4">
										<div class="col-lg-6">
											<a href="JavaScript:Void(0);" id="spam" class="spam-link">Spam
												Checker</a>
										</div>
										<div class="col-lg-6 text-lg-right">
											<a href="#" class="spam-link" data-toggle="modal"
												data-target="#spammodal">Spam Trigger Words</a>
										</div>
									</div>
									<div class="text-center">
										<input type="submit" value="Send" id="sbmitall"
											name="sbmitall" class="btn btn-info btn-block rounded-0 py-2">
										<br>
									</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		
		
			<!---------------- Broadcast Modal END  ---------------------->
		
		
		
		
		
		
		
			<input type="hidden" name="userid" id="userid" value="7364">
			<input type="hidden" id="show" name="" value=""> <input
				type="hidden" id="show1" name="" value=""> <input
				type="hidden" id="show2" name="" value=""> <input
				type="hidden" id="show3" name="" value="">
			<script
				src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
			<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>
			<script type="text/javascript">
				function validateBadText() {
					var spam_count = 0;
					var searched_val = "";
					var find_str = "";
					var replace_str = "";
					var key_words = [ "$", "cash", "dollar", "price", "thing",
							"winner", "pay", "credit", "sale", "buy", "money",
							"marketing", "mass", "spam", "limited", "millions",
							"guarantee", "offer", "paid", "refund", "income",
							"free", "junk", "card", "dollars", "urgent",
							"debit", "unlimited", "earn", "deal", "instant",
							"consultation", "opportunity", "investment",
							"leads", "refinance", "quotes", "risk",
							"satisfaction", "save$", "!!!", "!!", "babes",
							"wining", "winner", "security", "special", "stock",
							"alert", "disclaimer", "statement", "shopping",
							"100%", "automation", "handsfree", "cost", "4u",
							"amazing", "additional", "hesitate", "amazed",
							"bucks", "bankruptcy", "percent", "earnings",
							"profits", "guranteed", "investment", "wrinkles",
							"biz", "percent", "lifetime", "extra",
							"obligation", "gimmick", "disappointment", "claim",
							"multi", "billion", "creditors", "congratulations",
							"offers", "bureaus", "direct", "drastically",
							"easy", "fantastic", "deal", "leads", "freedom",
							"membership", "snoring", "promotion", "security",
							"believe", "action", "compliance", "automated" ];

					var mail_template_content = CKEDITOR.instances.editornew
							.getData();
					// mail_template_content = mail_template_content.replace(/[\s]+/g, " ").trim();
					var replace_with_str = "";

					//Keyword 1
					$
							.each(
									key_words,
									function(index, value) {
										find_str = eval("/" + value + "/i");
										if ((value != "$" && mail_template_content
												.search(find_str) != -1)
												|| (value == "$" && mail_template_content
														.indexOf(value) != -1)) {
											replace_str = eval("/" + value
													+ "/gi");
											replace_with_str = '<span class="amit">'
													+ value + '</span>';

											if (value != "" && value != "$") {
												mail_template_content = mail_template_content
														.replace(replace_str,
																replace_with_str);
											}
											if (value != "" && value == "$") {
												mail_template_content = mail_template_content
														.replace(value,
																replace_with_str);
											}

											spam_count++;
										}

									});

					$('#spam_cont_id').html(mail_template_content);
					if (spam_count > 0) {
						$('#email_temp_spam_id').modal('show');

						return false;
					} else {
						return true;
					}

				}

				$(document).ready(function() {

					$('#table1').DataTable();
					aaSorting: [ [ 0, 'desc' ] ]

				});
			</script>
			<script>
				$(document)
						.ready(
								function() {
									$("#spam")
											.click(
													function() {
														var spam_count = 0;
														var searched_val = "";
														var find_str = "";
														var replace_str = "";
														var key_words = [
																"$",
																"cash",
																"dollar",
																"price",
																"thing",
																"winner",
																"pay",
																"credit",
																"sale",
																"buy",
																"money",
																"marketing",
																"mass",
																"spam",
																"limited",
																"millions",
																"guarantee",
																"offer",
																"paid",
																"refund",
																"income",
																"free",
																"junk",
																"card",
																"dollars",
																"urgent",
																"debit",
																"unlimited",
																"earn",
																"deal",
																"instant",
																"consultation",
																"opportunity",
																"investment",
																"leads",
																"refinance",
																"quotes",
																"risk",
																"satisfaction",
																"save$",
																"!!!",
																"!!",
																"babes",
																"wining",
																"winner",
																"security",
																"special",
																"stock",
																"alert",
																"disclaimer",
																"statement",
																"shopping",
																"100%",
																"automation",
																"handsfree",
																"cost",
																"4u",
																"amazing",
																"additional",
																"hesitate",
																"amazed",
																"bucks",
																"bankruptcy",
																"percent",
																"earnings",
																"profits",
																"guranteed",
																"investment",
																"wrinkles",
																"biz",
																"percent",
																"lifetime",
																"extra",
																"obligation",
																"gimmick",
																"disappointment",
																"claim",
																"multi",
																"billion",
																"creditors",
																"congratulations",
																"offers",
																"bureaus",
																"direct",
																"drastically",
																"easy",
																"fantastic",
																"deal",
																"leads",
																"freedom",
																"membership",
																"snoring",
																"promotion",
																"security",
																"believe",
																"action",
																"compliance",
																"automated" ];

														var mail_template_content = CKEDITOR.instances.editornew
																.getData();
														// mail_template_content = mail_template_content.replace(/[\s]+/g, " ").trim();
														var replace_with_str = "";

														//Keyword 1
														$
																.each(
																		key_words,
																		function(
																				index,
																				value) {
																			find_str = eval("/"
																					+ value
																					+ "/i");
																			if ((value != "$" && mail_template_content
																					.search(find_str) != -1)
																					|| (value == "$" && mail_template_content
																							.indexOf(value) != -1)) {
																				replace_str = eval("/"
																						+ value
																						+ "/gi");
																				replace_with_str = '<span class="amit">'
																						+ value
																						+ '</span>';

																				if (value != ""
																						&& value != "$") {
																					mail_template_content = mail_template_content
																							.replace(
																									replace_str,
																									replace_with_str);
																				}
																				if (value != ""
																						&& value == "$") {
																					mail_template_content = mail_template_content
																							.replace(
																									value,
																									replace_with_str);
																				}

																				spam_count++;
																			}

																		});

														$('#spam_cont_id1')
																.html(
																		mail_template_content);

														$(
																'#email_temp_spam_id1')
																.modal('show');

													});

								});
			</script>
			<script>
				CKEDITOR.replace('editornew');
			</script>
			<script>
				function Export() {

					window.open("#", '_blank');

				}
			</script>
			<link rel="stylesheet"
				href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<script>
				$(function() {

					$("#date_picker").datepicker();

				});

				$(function() {
					$('[data-toggle="tooltip"]').tooltip();
				});
			</script>
			<script type="text/javascript">
				$(document).ready(function() {

					$('#limitval').on('change', function() {

						var val = this.value;

						window.location.href = '#' + val;

					});

				});
			</script>
			<script type="text/javascript">
				$(document).ready(
						function() {

							$("#pagination  a").each(
									function() {
										var g = window.location.href
												.slice(window.location.href
														.indexOf('?'));
										var href = $(this).attr('href');
										//alert(href);
										$(this).attr('href', href + g);
									});
						});
			</script>
			<div class="modal fade" id="email_temp_spam_id" role="dialog">
				<div class="modal-dialog modal-lg">
					<!-- Modal content-->
					<div class="modal-content text-center">
						<div class="modal-header">
							<span class="check">Spam Checker</span>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div align="center" class="modal_heading">Note: To ensure a
							healthy email delivery consider replacing the spam triggered
							words highlighted in red below.</div>
						<hr class="new1">
						<div class="modal-body" id="spam_cont_id"></div>
						<!-- <div align="center"><b>Please replace the above highlighted spam words.</b></div> -->
						<div class="modal-footer justify-content-center" align="center">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Exit</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="email_temp_spam_id1" role="dialog">
				<div class="modal-dialog modal-lg">
					<!-- Modal content-->
					<div class="modal-content text-center">
						<div class="modal-header">
							<span class="check">Spam Checker</span>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div align="center" class="modal_heading">Note: To ensure a
							healthy email delivery consider replacing the spam triggered
							words highlighted in red below.</div>
						<hr class="new1">
						<div class="modal-body" id="spam_cont_id1"></div>
						<!-- <div align="center"><b>Please replace the above highlighted spam words.</b></div> -->
						<div class="modal-footer justify-content-center" align="center">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Exit</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="spammodal" role="dialog">
				<div class="modal-dialog modal-lg">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="modal-title text-white">Spam Words</h3>
						</div>
						<div class="modal-body spam-count">
							<p>Avoid Terms and Words that can Trigger spam filtration
								which can block your messages from being delivered, these are
								some triggers you should avoid for healthier email delivery -</p>
							<table class="table table-dark">
								<tbody>
									<tr>
										<td>1. $</td>
										<td>2. cash</td>
										<td>3. dollar</td>
										<td>4. price</td>
										<td>5. winner</td>
									</tr>
									<tr>
										<td>6. pay</td>
										<td>7. credit</td>
										<td>8. sale</td>
										<td>9. buy</td>
										<td>10. money</td>
									</tr>
									<tr>
										<td>11. marketing</td>
										<td>12. mass</td>
										<td>13. spam</td>
										<td>14. limited</td>
										<td>15. millions</td>
									</tr>
									<tr>
										<td>16. guarantee</td>
										<td>17. offer</td>
										<td>18. paid</td>
										<td>19. refund</td>
										<td>20. income</td>
									</tr>
									<tr>
										<td>21. free</td>
										<td>22. junk</td>
										<td>23. card</td>
										<td>24. dollars</td>
										<td>25. urgent</td>
									</tr>
									<tr>
										<td>26. debit</td>
										<td>27. unlimited</td>
										<td>28. earn</td>
										<td>29. deal</td>
										<td>30. instant</td>
									</tr>
									<tr>
										<td>31. consultation</td>
										<td>32. opportunity</td>
										<td>33. investment</td>
										<td>34. leads</td>
										<td>35. refinance</td>
									</tr>
									<tr>
										<td>36. quotes</td>
										<td>37. risk</td>
										<td>38. satisfaction</td>
										<td>39. save$</td>
										<td>40. !!!</td>
									</tr>
									<tr>
										<td>41.!!</td>
										<td>42. babes</td>
										<td>43. wining</td>
										<td>44. winner</td>
										<td>45. security</td>
									</tr>
									<tr>
										<td>46. special</td>
										<td>47. stock</td>
										<td>48. alert</td>
										<td>49. disclaimer</td>
										<td>50. statement</td>
									</tr>
									<tr>
										<td>51. shopping</td>
										<td>52. 100%</td>
										<td>53. automation</td>
										<td>54. handsfree</td>
										<td>55. cost</td>
									</tr>
									<tr>
										<td>56. 4u</td>
										<td>57. amazing</td>
										<td>58. additional</td>
										<td>59. hesitate</td>
										<td>60. amazed</td>
									</tr>
									<tr>
										<td>61. bucks</td>
										<td>62. bankruptcy</td>
										<td>63. percent</td>
										<td>64. earnings</td>
										<td>65. profits</td>
									</tr>
									<tr>
										<td>66. guranteed</td>
										<td>67. investment</td>
										<td>68. wrinkles</td>
										<td>69. biz</td>
										<td>70. percent</td>
									</tr>
									<tr>
										<td>71. lifetime</td>
										<td>72. extra</td>
										<td>73. obligation</td>
										<td>74. gimmick</td>
										<td>75. disappointment</td>
									</tr>
									<tr>
										<td>76. claim</td>
										<td>77. multi</td>
										<td>78. billion</td>
										<td>79. creditors</td>
										<td>80. congratulations</td>
									</tr>
									<tr>
										<td>81. offers</td>
										<td>82. bureaus</td>
										<td>83. direct</td>
										<td>84. drastically</td>
										<td>85. easy</td>
									</tr>
									<tr>
										<td>86. fantastic</td>
										<td>87. deal</td>
										<td>88. leads</td>
										<td>89. freedom</td>
										<td>90. membership</td>
									</tr>
									<tr>
										<td>91. snoring</td>
										<td>92. promotion</td>
										<td>93. security</td>
										<td>94. believe</td>
										<td>95. action</td>
									</tr>
									<tr>
										<td>96. compliance</td>
										<td>97. automated</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer -->
			<footer class="footer col-12">
				<div class="row align-items-center justify-content-xl-between">
					<div class="col-xl-12">
						<p style="text-align: center;" class="ftn-txt">&copy; All
							Rights Reserved GoFounders 2018-2028</p>
					</div>
					<input type="hidden" name="userid" id="userid" value="7364">
				</div>
			</footer>
		</div>
	</div>
	</div>
</body>
<script src="https://www.gofounders.net/assests/js/custom-file-input.js"></script>
</html>