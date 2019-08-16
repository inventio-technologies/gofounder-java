<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%> 
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Gofounders</title>

<link rel="icon"
	href="https://d1iy5wifs53qnq.cloudfront.net/assests/img/favgofounder.png"
	type="image/png" sizes="16x16">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Oswald:400,500,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">

<link type="text/css"
	href="https://www.gofounders.net/assests/css/gofounders2.css"
	rel="stylesheet">

<!--all inline css moved file link here-->
<link href="https://www.gofounders.net/assests/css/inline5.css"
	rel="stylesheet" type="text/css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://www.gofounders.net/assests/css/responsive2.css"
	rel="stylesheet" type="text/css">
	
	
  <script src="https://www.gofounders.net/assests/js/jquery.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> -->

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"></script>
	

 
    <script async src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>

    

<style>


.c-view i {
    color: #009891;
    font-size: 18px;
    border: 2px solid #009891;
    border-radius: 14px;
    padding: 3px 3px;
}


  @-moz-document url-prefix() { 
  
  .sidebar {
    scrollbar-color: #11bf9d #ffcf1d;
    scrollbar-width: thin;
  }


  }


      .avatar-bg{
      background-size: cover;
      background-position: center center;
      }
        @import url('https://fonts.googleapis.com/css?family=Nunito:300,400,600,700');
        .swal-modal *{
                font-family: 'Nunito', sans-serif;
                font-weight:bold;
                text-align:center;
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

<body onload="myFunction()">


	<div class="main-wrapper">

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
						<li class="nav-item"><a class="sidebar-link activenow"
							href="https://www.gofounders.net/users/dashboard"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/1.png"
									alt="">
							</span> <span class="title"> Dashboard </span>
						</a></li>

						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/user_profile"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/3.png"
									alt="">
							</span> <span class="title"> My Profile </span>
						</a></li>

						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/announcements"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/2.png"
									alt="">

							</span> <span class="title"> Announcements <!--                                <img id="announ" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                                            style="width: 27%;border-radius: 20px;">-->
							</span>

						</a></li>

						<li class="nav-item"><a class="sidebar-link  "
							href="https://www.gofounders.net/community"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/16.png"
									alt="">
							</span> <span class="title"> Community </span>
						</a></li>

						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/webinars"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/4.png"
									alt="">

							</span> <span class="title"> Webinars <!--                                <img id="webniar" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                                                style="width: 27%;border-radius: 20px;"></span>-->
							</span>
						</a></li>
						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/user_link"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/9.png"
									alt="">
							</span> <span class="title"> My Links </span>
						</a></li>





						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/download"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/11.png"
									alt="">
							</span> <span class="title"> Downloads </span> <span
								style="color: rgb(255, 205, 23);"> &nbsp;<b>(119)</b></span>
						</a></li>


						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/invitations"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/5.png"
									alt="">
							</span> <span class="title"> My Invitations </span>
						</a></li>
						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/invitees/index/?info=10"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/6.png"
									alt="">
							</span> <span class="title"> My Invitees </span> <span
								style="color: rgb(255, 205, 23);"> &nbsp;<b>(0)</b></span>
						</a></li>
						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/member/index/?info=10"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/7.png"
									alt="">
							</span> <span class="title"> My Team </span> <span
								style="color: rgb(255, 205, 23);"> &nbsp;<b>(1)</b></span>
						</a></li>
						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/alfounders"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/8.png"
									alt="">
							</span> <span class="title"> Team Summary </span>
						</a></li>



						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/marketing"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/10.png"
									alt="">
							</span> <span class="title"> Marketing <!--                                <img id="marketing" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                                                style="width: 27%;border-radius: 20px;">-->
							</span>
						</a></li>

						<li class="nav-item"><a class="sidebar-link  "
							href="https://www.gofounders.net/tutorials"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/12.png"
									alt="">
							</span> <span class="title"> Tutorials </span>
						</a></li>

						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/testimonials"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/15.png"
									alt="">
							</span> <span class="title"> Testimonials </span>
						</a></li>

						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/faq"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/13.png"
									alt="">
							</span> <span class="title"> FAQs <!--                                <img id="faq1" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                                                style="width: 27%;border-radius: 20px;">-->
							</span>

						</a></li>
						<li class="nav-item"><a class="sidebar-link "
							href="https://www.gofounders.net/support"> <span
								class="icon-holder"> <img
									src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/14.png"
									alt="">
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
							<a class="h4 mb-0 text-white text-uppercase main-title  d-flex">Dashboard</a>



							<ul class="navbar-nav align-items-center ml-md-auto"
								id="ul_community_head_id">
								<li class="nav-item dropdown community-list-item"><span
									class="total-notifiocation" id="com_count_total_not">46</span>
									<a
									class="nav-link position-relative notification-icon community-notifiocation"
									href="#" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <i
										class="fa fa-users"></i> <span class="kt-pulse__ring"></span>
								</a>

									<div
										class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0 overflow-hidden">

										<div class="notification-row " id="notify_com_popup_bx">

											<div class="px-3 py-3" id="com_noti_headlines">
												<h6 class="text-sm text-muted m-0">
													New <strong class="text-primary" id="count_community">23</strong>
													communities posted by <span>Administrator</span>
												</h6>
												<h6 class="text-sm text-muted m-0">
													You have <strong id="count_comment_reply"
														class="text-primary">8</strong> New replies for <span>Comments</span>
												</h6>
												<h6 class="text-sm text-muted m-0">
													You have <strong class="text-primary"
														id="count_comment_likes">15</strong> New likes for <span>Comments</span>
												</h6>

											</div>

											<div class="list-group list-group-flush">
												<ul id="all_ul">
													<li onclick="fn_update_community('1441050', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1441050 community-new-popup" id="1441050">
															Adminstrator posted community <span><p>
																	<span style="font-size: 20px;">Let's Celebrate
																		Again!</span>
																</p> </span> <br>Posted on : <label> 12:10am on
																Tuesday, July 30th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1406882', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1406882 community-new-popup" id="1406882">
															Adminstrator posted community <span><p>
																	<span style="color: #008000;"><span
																		style="font-size: 24px;">Gooooo Algeria
																			Gooooooo<br> If everyone is moving forward
																			together, then success takes care of itself
																	</span></span>
																</p> </span> <br>Posted on : <label> 12:35am on
																Saturday, July 27th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1372874', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1372874 community-new-popup" id="1372874">
															Adminstrator posted community <span><p>
																	<span style="font-size: 26px;"><strong>You
																			have within: the strength, the patience, and the
																			passion to reach for the stars to change the world.</strong></span>
																</p> </span> <br>Posted on : <label> 01:35am on
																Friday, July 26th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1339012', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1339012 community-new-popup" id="1339012">
															Adminstrator posted community <span><p>
																	<strong>The future belongs to those who
																		believe in the beauty of their dreams</strong>
																</p> </span> <br>Posted on : <label> 12:32am on
																Thursday, July 25th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1305149', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1305149 community-new-popup" id="1305149">
															Adminstrator posted community <span><p>
																	<span style="font-size: 20px;"><strong>Every
																			great dream begins with a dreamer</strong></span>
																</p> </span> <br>Posted on : <label> 12:28am on
																Thursday, July 25th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1261132', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1261132 community-new-popup" id="1261132">
															Adminstrator posted community <span><p>Thank
																	You!</p> </span> <br>Posted on : <label> 10:47pm on
																Wednesday, July 24th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1205111', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1205111 community-new-popup" id="1205111">
															Adminstrator posted community <span><p>
																	<span style="font-size: 24px;">Let's PLAY BIG
																		All The Way</span>
																</p> </span> <br>Posted on : <label> 12:42am on
																Friday, July 19th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1141058', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1141058 community-new-popup" id="1141058">
															Adminstrator posted community <span><p>
																	<span style="font-size: 36px;">Life is
																		Goooooooooooood</span>
																</p> </span> <br>Posted on : <label> 06:34am on
																Friday, July 5th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1109080', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1109080 community-new-popup" id="1109080">
															Adminstrator posted community <span><p>
																	<img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30">&nbsp;<img
																		height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><span
																		style="color: #0000CD;"><strong><span
																			style="font-size: 22px;">WE ARE IN IT TO WIN
																				IT&nbsp;</span></strong></span><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30"><img height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
																		title="Fireworks" width="30">
																</p> </span> <br>Posted on : <label> 01:54am on
																Friday, July 5th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1077176', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1077176 community-new-popup" id="1077176">
															Adminstrator posted community <span><p>
																	<span style="font-size: 28px;">FREEDOM&nbsp;<img
																		height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/flags/united-states.png"
																		title="United states" width="30">&nbsp;FREEDOM&nbsp;<img
																		height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/flags/united-states.png"
																		title="United states" width="30">&nbsp;FREEDOM&nbsp;<img
																		height="30"
																		src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/flags/united-states.png"
																		title="United states" width="30"></span>
																</p> </span> <br>Posted on : <label> 12:19pm on
																Thursday, July 4th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('102125', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/WIN_20170401_17_34_25_Pro.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_102125 comment-like-new-popup"
														id="102125"> Your comment is liked by <span>Robert
																Rioux</span> <br>Posted on : <label> 11:46pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_reply('11750', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/DSC03269.JPG - 1.jpg)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11750 comment-reply-new-popup"
														id="11750"> A reply for a comment is posted by <span>John
																E. Stratmann</span> <br>Posted on : <label>
																09:27pm on Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_comment_like('101950', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/DSC03269.JPG - 1.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101950 comment-like-new-popup"
														id="101950"> Your comment is liked by <span>John
																E. Stratmann</span> <br>Posted on : <label>
																09:25pm on Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101845', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/Deb NMB 2.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101845 comment-like-new-popup"
														id="101845"> Your comment is liked by <span>Debra
																Baxter</span> <br>Posted on : <label> 08:08pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_reply('11713', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/ME1.jpg)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11713 comment-reply-new-popup"
														id="11713"> A reply for a comment is posted by <span>Willie
																Lewis Combs</span> <br>Posted on : <label> 07:24pm
																on Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_reply('11707', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/734637869B8E957F7-FBE7-41BD-BC90-ABA0AF7C959D.jpeg)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11707 comment-reply-new-popup"
														id="11707"> A reply for a comment is posted by <span>Colin
																Stein</span> <br>Posted on : <label> 06:43pm on
																Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_comment_like('101713', '29980');">
														<span class="notif-thumb">AT</span> <a
														href="javascript:void(0);"
														class="comment_like_101713 comment-like-new-popup"
														id="101713"> Your comment is liked by <span>Alayne
																Tribolet</span> <br>Posted on : <label> 06:29pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101671', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/FB_IMG_1541620126671.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101671 comment-like-new-popup"
														id="101671"> Your comment is liked by <span>Angela
																Nycz</span> <br>Posted on : <label> 06:20pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101539', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/Bonnie_Swift_Johnson.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101539 comment-like-new-popup"
														id="101539"> Your comment is liked by <span>LaVonne
																Johnson</span> <br>Posted on : <label> 05:39pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101533', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/1883199439matt.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101533 comment-like-new-popup"
														id="101533"> Your comment is liked by <span>Matt
																Mihalicz</span> <br>Posted on : <label> 05:35pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_reply('11692', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/3601168188F321F69-DF92-4C38-B9B7-FD62269D7E36.jpeg)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11692 comment-reply-new-popup"
														id="11692"> A reply for a comment is posted by <span>Robert
																James Guenther</span> <br>Posted on : <label>
																05:20pm on Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_comment_like('101501', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/1667531100NandC.PNG)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101501 comment-like-new-popup"
														id="101501"> Your comment is liked by <span>Clara
																Nolt</span> <br>Posted on : <label> 04:54pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101492', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/523773445Timm Guitar2.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101492 comment-like-new-popup"
														id="101492"> Your comment is liked by <span>Timm
																Johnson</span> <br>Posted on : <label> 04:39pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_reply('11684', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/93887246820190621_174858.jpg)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11684 comment-reply-new-popup"
														id="11684"> A reply for a comment is posted by <span>James
																Williams</span> <br>Posted on : <label> 03:46pm on
																Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_reply('11681', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/214661496901.jpg)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11681 comment-reply-new-popup"
														id="11681"> A reply for a comment is posted by <span>Pierre
																Nortier</span> <br>Posted on : <label> 03:36pm on
																Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_reply('11672', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/Victoria.jpg)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11672 comment-reply-new-popup"
														id="11672"> A reply for a comment is posted by <span>Victoria
																Leal</span> <br>Posted on : <label> 02:33pm on
																Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_comment_like('101354', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/1935042225dreamcatcher owl.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101354 comment-like-new-popup"
														id="101354"> Your comment is liked by <span>Valerie
																Griffith</span> <br>Posted on : <label> 12:37pm on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_reply('11666', '29980');"><span
														class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/1244931821stuart.png)"></span>
														<a href="javascript:void(0);"
														class="reply_detail_11666 comment-reply-new-popup"
														id="11666"> A reply for a comment is posted by <span>Stuart
																Clark</span> <br>Posted on : <label> 12:33pm on
																Friday, June 28th, 2019</label>
													</a></li>
													<li onclick="fn_update_comment_like('101315', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/Michael Carden.png)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101315 comment-like-new-popup"
														id="101315"> Your comment is liked by <span>Michael
																Carden</span> <br>Posted on : <label> 11:57am on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101304', '29980');">
														<span class="notif-thumb"
														style="background: url(https :// d1iy5wifs53qnq.cloudfront.net/ 19773527581545543_1398169693764903_1088984184_n ( 4) .jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101304 comment-like-new-popup"
														id="101304"> Your comment is liked by <span>Laszlo
																Szabo</span> <br>Posted on : <label> 11:46am on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101300', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/avtar13.png)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101300 comment-like-new-popup"
														id="101300"> Your comment is liked by <span>Mr.
																Ash</span> <br>Posted on : <label> 11:36am on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101286', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/1085021743IMG_20190616_204638.jpg)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101286 comment-like-new-popup"
														id="101286"> Your comment is liked by <span>Pongrac
																Gal</span> <br>Posted on : <label> 11:20am on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_comment_like('101283', '29980');">
														<span class="notif-thumb"
														style="background: url(https://d1iy5wifs53qnq.cloudfront.net/1690416466IMG_0006.JPG)"></span>
														<a href="javascript:void(0);"
														class="comment_like_101283 comment-like-new-popup"
														id="101283"> Your comment is liked by <span>Mpumelelo
																Khumalo</span> <br>Posted on : <label> 11:03am on
																Friday, June 28th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1045971', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1045971 community-new-popup" id="1045971">
															Adminstrator posted community <span><p>
																	<span style="font-size: 24px;">The <strong>BEST
																			DAYS </strong>in our Life are ahead
																	</span>
																</p> </span> <br>Posted on : <label> 11:27pm on
																Thursday, June 27th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('1014998', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_1014998 community-new-popup" id="1014998">
															Adminstrator posted community <span><p>
																	<strong><span style="font-size: 20px;">It's
																			Real - It's Happening&nbsp;</span></strong>
																</p> </span> <br>Posted on : <label> 12:49pm on
																Tuesday, June 25th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('984344', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_984344 community-new-popup" id="984344">
															Adminstrator posted community <span><p>Go Go
																	Go&nbsp;Argentina!!! YOU DID IT&nbsp;</p> </span> <br>Posted
															on : <label> 10:03pm on Friday, June 21st, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('924397', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_924397 community-new-popup" id="924397">
															Adminstrator posted community <span><p>
																	<span style="font-size: 24px;">30,000 +
																		Stars&nbsp;</span>
																</p> </span> <br>Posted on : <label> 03:31am on
																Tuesday, June 25th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('894987', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_894987 community-new-popup" id="894987">
															Adminstrator posted community <span><p>
																	<strong><span style="font-size: 20px;">It's
																			Real - It's Happening&nbsp;</span></strong>
																</p> </span> <br>Posted on : <label> 12:49pm on
																Tuesday, June 25th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('865648', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_865648 community-new-popup" id="865648">
															Adminstrator posted community <span><p>Go Go
																	Go&nbsp;Argentina!!! YOU DID IT&nbsp;</p> </span> <br>Posted
															on : <label> 10:03pm on Friday, June 21st, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('807099', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_807099 community-new-popup" id="807099">
															Adminstrator posted community <span><p>
																	<span style="font-size: 24px;">30,000 +
																		Stars&nbsp;</span>
																</p> </span> <br>Posted on : <label> 03:31am on
																Tuesday, June 25th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('749099', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_749099 community-new-popup" id="749099">
															Adminstrator posted community <span><p>
																	<span font-size:24px="" style="">We Believe In
																		You .. We Appreciate You</span>
																</p> </span> <br>Posted on : <label> 12:50am on
																Thursday, June 13th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('721003', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_721003 community-new-popup" id="721003">
															Adminstrator posted community <span><p>
																	<span style="color: #0066ff;"><span
																		style="font-size: 26px;">Onward And Upward</span></span>
																</p> </span> <br>Posted on : <label> 11:53am on
																Wednesday, June 12th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('693100', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_693100 community-new-popup" id="693100">
															Adminstrator posted community <span><p>
																	<span style="font-size: 20px;">To
																		Our&nbsp;Fellow Americans...Founders and
																		Families&nbsp;</span>
																</p> </span> <br>Posted on : <label> 04:26pm on
																Wednesday, June 12th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('665687', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_665687 community-new-popup" id="665687">
															Adminstrator posted community <span><p>
																	<span style="font-size: 26px;">Raw Uncut
																		Interview&nbsp;</span><br> <strong><span
																		style="font-size: 26px;">Eric Green<br>
																			Scott Nelson<br> Ash Mufareh
																	</span></strong>
																</p> </span> <br>Posted on : <label> 09:24am on
																Wednesday, June 12th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('256297', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_256297 community-new-popup" id="256297">
															Adminstrator posted community <span><p>
																	<strong><span style="color: #3366ff;"><span
																			style="font-size: 20px;">We Believe in YOU</span></span></strong>
																</p> </span> <br>Posted on : <label> 05:20am on
																Thursday, June 13th, 2019</label>
													</a>
													</li>
													<li onclick="fn_update_community('45881', '29980');">

														<span class="notif-thumb"></span> <a
														href="javascript:void(0);"
														class="poscom_45881 community-new-popup" id="45881">
															Adminstrator posted community <span><p>
																	<strong><span style="font-size: 20px"><span
																			style="color: #3366ff">Go Founders
																				Goooooooooooooo</span></span></strong>
																</p> </span> <br>Posted on : <label> 01:12am on
																Thursday, June 13th, 2019</label>
													</a>
													</li>
												</ul>
											</div>

											<hr>

										</div>


									</div></li>
							</ul>


							<ul class="navbar-nav align-items-center ml-md-auto n-menu"
								style="margin-left: 20px !important;">
								<li class="nav-item dropdown"><span
									class="total-notifiocation totalnoti">
										<div class="plus_sign">99+</div>
								</span> <a class="position-relative notification-icon" href="#"
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
													You have <strong class="text-primary inviteesnoti">1</strong>
													notifications from <span>Team :</span>
												</h6>
											</div>

											<div class="list-group list-group-flush">


												<ul>


													<a href="javascript:void(0);" class="addDetailsuser"
														id="saikat@inventiotechnologies.com">
														<li>Your new team member is <span>sachin deoo</span>
													</li>

													</a>

													<input type="hidden" name="" id="teamlist"
														value="saikat@inventiotechnologies.com">
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
													You have <strong class="text-primary inviteesnoti">1</strong>
													notifications from <span>Webinar Invitees :</span>
												</h6>
											</div>

											<div class="list-group list-group-flush">


												<ul>


													<a href="javascript:void(0);" class="addDetailwebinar">
														<li>Your new team member is <span>Saikat Bose</span>
													</li>

													</a>


												</ul>



											</div>

											<hr>

										</div>

										<div class="notification-row">

											<div class="px-3 py-3">
												<h6 class="text-sm text-muted m-0">
													You have <strong class="text-primary">72</strong>
													notifications from <span>Webinar</span>
												</h6>
											</div>

											<div class="list-group list-group-flush">


												<ul>




													<a href="javascript:void(0);" class="addDetailswebinar"
														id="26">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="27">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="28">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="29">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="30">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="31">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="45">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="46">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="47">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="48">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="50">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="51">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="52">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="53">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="54">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="55">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="56">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="57">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="60">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="61">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="62">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="64">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="65">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="66">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="67">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="68">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="70">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="71">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="74">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="75">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="76">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="77">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="78">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="80">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="81">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="82">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="83">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="84">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="85">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="86">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="87">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="88">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="90">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="91">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="92">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="93">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="94">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="95">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="96">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="97">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="99">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="100">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="101">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="102">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="103">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="104">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="105">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="106">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="107">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="108">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="109">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="110">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="111">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="112">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="113">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="114">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="115">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="116">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="117">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="119">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="120">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailswebinar"
														id="122">
														<li>New notifications</li>

													</a>





													<input type="hidden" name="" id="idslist"
														value="26,27,28,29,30,31,45,46,47,48,50,51,52,53,54,55,56,57,60,61,62,64,65,66,67,68,70,71,74,75,76,77,78,80,81,82,83,84,85,86,87,88,90,91,92,93,94,95,96,97,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,119,120,122">

												</ul>



											</div>

											<hr>

										</div>








										<div class="notification-row">

											<div class="px-3 py-3">
												<h6 class="text-sm text-muted m-0">
													You have <strong class="text-primary">1</strong>
													notifications from <span>Announcement</span>
												</h6>
											</div>

											<div class="list-group list-group-flush">


												<ul>




													<a href="javascript:void(0);" class="addDetailsannounce"
														id="80">
														<li>New notifications</li>

													</a>





													<input type="hidden" name="" id="idslistannounce"
														value="80">

												</ul>



											</div>

											<hr>

										</div>





										<div class="notification-row">

											<div class="px-3 py-3">
												<h6 class="text-sm text-muted m-0">
													You have <strong class="text-primary">119</strong>
													notifications from <span>Download</span>
												</h6>
											</div>

											<div class="list-group list-group-flush">


												<ul>




													<a href="javascript:void(0);" class="addDetailsdownload"
														id="3">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="5">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="7">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="8">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="9">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="10">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="11">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="12">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="13">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="14">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="15">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="16">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="17">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="26">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="27">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="28">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="29">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="31">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="32">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="33">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="34">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="35">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="36">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="37">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="38">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="39">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="40">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="41">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="42">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="44">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="45">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="46">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="49">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="50">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="51">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="52">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="53">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="55">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="56">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="57">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="58">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="59">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="60">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="61">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="62">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="63">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="64">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="65">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="66">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="67">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="68">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="69">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="70">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="73">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="74">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="75">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="80">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="81">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="82">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="83">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="84">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="85">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="86">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="87">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="88">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="89">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="90">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="91">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="96">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="97">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="99">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="100">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="102">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="103">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="107">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="108">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="109">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="110">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="111">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="112">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="113">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="114">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="115">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="116">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="117">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="118">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="119">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="120">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="121">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="122">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="123">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="127">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="128">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="129">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="130">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="131">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="132">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="133">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="134">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="135">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="136">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="139">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="140">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="141">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="142">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="143">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="144">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="145">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="146">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="147">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="148">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="149">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="150">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="152">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="153">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="154">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="155">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="156">
														<li>New notifications</li>

													</a>







													<a href="javascript:void(0);" class="addDetailsdownload"
														id="157">
														<li>New notifications</li>

													</a>





													<input type="hidden" name="" id="idslistdownload"
														value="3,5,7,8,9,10,11,12,13,14,15,16,17,26,27,28,29,31,32,33,34,35,36,37,38,39,40,41,42,44,45,46,49,50,51,52,53,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,73,74,75,80,81,82,83,84,85,86,87,88,89,90,91,96,97,99,100,102,103,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,127,128,129,130,131,132,133,134,135,136,139,140,141,142,143,144,145,146,147,148,149,150,152,153,154,155,156,157">

												</ul>



											</div>

											<hr>

										</div>


										<div class="notification-row">

											<div class="px-3 py-3">
												<h6 class="text-sm text-muted m-0">
													You have <strong class="text-primary">1</strong>
													notifications from <span>Marketing</span>
												</h6>
											</div>

											<div class="list-group list-group-flush">
												<ul>
													<a href="javascript:void(0);" class="addDetailsmarketing"
														id="31">
														<li>New notifications</li>

													</a>
													<input type="hidden" name="" id="idslistmarketing"
														value="31">

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
											
											  <%
                                          //String imagefilename ="Aliona.jpg";
                                          String profileimg = (String) request.getSession().getAttribute("profileimg");
                                          %>
											
											<span class="avatar avatar-sm rounded-circle avatar-bg" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/<%=profileimg%>')">	
												<!--<img src="https://www.gofounders.net/uploads/1118697793saikat.jpg"
                                                                  width="50px" height="35px">-->
											</span>
											<div class="media-body ml-2">
											
											 <%
                                             String username = (String) request.getSession().getAttribute("username");
                                             
                                             %>      
												<span class="mb-0 text-sm  font-weight-bold"><%=username%></span>
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
.library-thumb {
	height: 180px;
	background-size: cover;
	background-position: center center;
	margin: 15px 0;
	box-shadow: 0px 0px 19px #a0a0a0;
	border: 1px solid #ccc;
}

.library-thumb img {
	height: 100%;
	opacity: 0;
}

.cust {
	border-right: 1px solid #ccc;
}

input#file:focus {
	outline: none;
}
</style>


				<div class="header pt-5 pt-lg-8 d-flex align-items-center">
					<!-- Mask -->
					<span class="mask bg-gradient-default opacity-8"></span>
					<!-- Header container -->
					<div class="container" style="margin-top: -68px;">
						<div class="row" style="margin-left: -7px;">
							<div class="col-lg-12 col-md-12">
								<br>
							</div>
							<div class="col-lg-4 col-md-4"></div>
							<div class="col-lg-4 col-md-4"></div>
							<div class="col-lg-7 col-md-10 row">

								<h1 class="display-2 text-white">Hello Saikat</h1>
							</div>
						</div>
					</div>
				</div>
				<!-- Page content -->
				<div class="container-fluid"></div>
				<!--<div class="col-xl-8 order-xl-1">-->
				<div>
					<div class="card bg-secondary shadow">







						<div class="card-body">
							<h1>Choose Default Profile Picture:</h1>
							<div class="row avatars">
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img class="img-thumbnail" id="101"
										src="https://d1iy5wifs53qnq.cloudfront.net/avtar1.png" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6  col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);">
									 <img src="<c:url value="/images/avtar2.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>

								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar3.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);">
									<img src="<c:url value="/images/avtar4.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar5.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>



								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar6.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-6 col-sm-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar7.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
							</div>
							<div class="row avatars">

								<div class="col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar8.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>



								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar9.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar11.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar12.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>


								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar13.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>


								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar14.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar15.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar16.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar17.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);">
									<img src="<c:url value="/images/avtar18.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar19.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar20.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar21.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar22.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar23.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar24.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar25.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar26.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar27.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar28.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar29.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar30.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>

								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar31.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>

								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar32.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>
								<div class=" col-lg-2 col-sm-6 col-6 thumb padding">
									<a class="thumbnail" href="JavaScript:Void(0);"> 
									<img src="<c:url value="/images/avtar33.png"/>" class="img-thumbnail" alt="">
									</a>
								</div>


							</div>




							<div class="row">
								<div class="col-12 formblock">


									<form method="post" action="uploadFile" enctype="multipart/form-data"
										style="padding: 20px;">

										<div class="row">

											<div class="col-lg-7">

												<div class=" cust pr-lg-4">
													<h1>Choose Profile Picture:</h1>
													<div class="row">
														<div class="col-12">
															<div class="form-group">
																<!--  <label class="form-control-label" for="input-username">Profile Picture</label> -->

																<div class="">
																	<!-- <label class="upload-label" for="file">
                                                      <span class="upload">Upload a file <img src="https://www.gofounders.net/assests/emoji/img/upload.png"> </span>
                                                      <input type="file" name="userfile" id="file" required="">
                                                  </label> -->


																	<div class="box-input">
																		<input type="file" id="file" name="file" multiple size="50"
																			onchange="myFunction()">
																		<p id="demo"></p>

																		<!-- <input type="file" name="userfile" id="file-7"
																			class="inputfile inputfile-6"
																			data-multiple-caption="{count} files selected">
																		<label for="file-7"><span>No file
																				choosen</span> <strong><svg
																					xmlns="http://www.w3.org/2000/svg" width="20"
																					height="17" viewBox="0 0 20 17">
                                                <path
																						d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg>
																				Upload a file</strong></label> -->
																	</div>
																	<p class="mb-0 mt--2"
																		style="font-size: 14px; color: #d80202; font-weight: 350;">
																		<b>*(Use .jpg, .png or .gif format for Profile
																			Picture.)</b>
																	</p>
																</div>
															</div>
														</div>

													</div>



													<div class="row">


														<input type="hidden" name="huserid" id="huserid"
															value=" 29980">
													</div>

													<input type="submit" class="btn btn-primary mr-2"
														name="save" value="Save"> <a
														href="user_profile.html"><input type="button"
														class="btn btn-primary" name="cancel" value="Cancel"></a>

												</div>

											</div>

											<div class="col-lg-5">

												<h1>Choose Library Picture:</h1>
												<button type="button" class="btn btn-primary mr-2"
													data-toggle="modal" data-target="#myModal">Open
													Library</button>
											</div>
										</div>
									</form>
									<!-- Modal -->

									<div class="modal fade" id="myModal" role="dialog">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<!--<div class="modal-header">
                                                             
                                                              <h4 class="modal-title">Modal Header</h4>
                                                            </div>-->
												<div class="modal-body">
													<button type="button" class="close" data-dismiss="modal">×</button>
													<h2>My Library</h2>

													<div class="row">
													
													<!-- start for each loop -->
													
													
													  <%
                                          //String imagefilename ="Aliona.jpg";
                                          List<String> lists = (List) request.getSession().getAttribute("lists");
                                          %>
													<c:forEach var="listValue" items="${lists}">
													
														<div class="col-lg-3 col-md-4 col-6">
															<a class="thumbnail" href="JavaScript:Void(0);">
																<div class="library-thumb"
																	style="background-image: url(https://d1iy5wifs53qnq.cloudfront.net/${listValue})">
																	<img class="img-thumbnail"
																		src="https://d1iy5wifs53qnq.cloudfront.net/${listValue}"
																		alt="">
																</div>
															</a>
														</div>
														
														<!-- end for each loop -->
														   </c:forEach>
														
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary mr-2"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Footer -->
				<footer class="footer col-12">

					<div class="row align-items-center justify-content-xl-between">
						<div class="col-xl-12">

							<p style="text-align: center;" class="ftn-txt">© All Rights
								Reserved GoFounders 2018-2028</p>

						</div>

						<input type="hidden" name="userid" id="userid" value="29980">
					</div>

				</footer>
			</div>
		</div>
	</div>
	


<script type="text/javascript">

 $(document).ready(function() {

   // alert('hi');

  $('.img-thumbnail').click(function(){
	swal({
  title: "Do you want to upload this image?",
  
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
    swal("Profile picture updated successfully.", {
      icon: "success",
    });

   

    var idimg = $(this).attr('id');
    var srcimg =$(this).attr('src');
    var tarr = srcimg.split('/');     
    var file = tarr[tarr.length-1]; 
    
   // var huserid=$("#huserid").val();
   // var huserid=83759;
   
   			var name = file;
            var lastname = '';
    

   $.ajax({
	   type : "POST",
		//contentType : "application/json",
		url : "postDfltProfilePic",
		//data : JSON.stringify(employeeData),
		data:'name='+ name+'&lastname='+ lastname,
		//dataType : 'json',				
		success : function(data) {
			//$('#processedData').html(JSON.stringify(data));
			//$('#displayDiv').show();
			window.location.href='http://localhost:8080/SpringMVCExample/profilepic';
		}
   });

    



    }
 });




  });
});
</script>
	

	
	<script>
		function myFunction() {
			var x = document.getElementById("myFile");
			var txt = "";//Select one or more files.
			if ('files' in x) {
				if (x.files.length == 0) {
					txt = "";
				} else {
					for (var i = 0; i < x.files.length; i++) {
						txt += "<br><strong>" + (i + 1) + ". file</strong><br>";
						var file = x.files[i];
						if ('name' in file) {
							txt += "name: " + file.name + "<br>";
						}
						/* if ('size' in file) {
							txt += "size: " + file.size + " bytes <br>";
						} */
					}
				}
			} else {
				if (x.value == "") {
					txt += " ";//Select one or more files.
				} else {
					txt += "The files property is not supported by your browser!";
					txt += "<br>The path of the selected file: " + x.value; // If the browser does not support the files property, it will return the path of the selected file instead. 
				}
			}
			document.getElementById("demo").innerHTML = txt;
		}
	</script>




</body>
</html>