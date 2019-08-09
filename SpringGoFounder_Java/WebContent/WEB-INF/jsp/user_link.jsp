<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <title> My Links | GoFounders</title>
      <link rel="icon" href="https://d1iy5wifs53qnq.cloudfront.net/assests/img/favgofounder.png" type="image/png"
         sizes="16x16">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
         integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
      <link
         href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Oswald:400,500,600,700&display=swap"
         rel="stylesheet">
      <script src="https://cdn.ckeditor.com/4.10.1/basic/ckeditor.js"></script>
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
      <link href="https://www.gofounders.net/assests/css/video-js2.css" rel="stylesheet" type="text/css">
      <link type="text/css" href="https://www.gofounders.net/assests/css/dataTables.bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="https://www.gofounders.net/assests/css/jquery-ui.css">
      <link href="https://www.gofounders.net/assests/css/pagination.css" rel="stylesheet" type="text/css">
      <link href="https://www.gofounders.net/assests/css/nucleo.css" rel="stylesheet">
      <!-- <link href="assests/all.min.css" rel="stylesheet"> -->
      <!-- Argon CSS -->
      <link type="text/css" href="https://www.gofounders.net/assests/css/gofounders2.css" rel="stylesheet">
      <!--all inline css moved file link here-->
      <link href="https://www.gofounders.net/assests/css/inline5.css" rel="stylesheet" type="text/css">
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
         type="text/css">
      <!-- <link href="https://www.gofounders.net/assests/css/errormsg.css" rel="stylesheet" type="text/css">
         -->
      <link href="https://www.gofounders.net/assests/css/responsive2.css" rel="stylesheet" type="text/css">
      <script src="https://www.gofounders.net/assests/js/jquery.min.js"></script>
      <script async src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      <script async
         src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/emojione/libs/emojione/emojione.min.js"></script>
      <script async type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
      <!-- Include Date Range Picker -->
      <script async type="text/javascript"
         src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
      <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
      <script async src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>
      <!-- <style>
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
         .avatar-bg {
         background-size: cover;
         background-position: center center;
         }
         @import url('https://fonts.googleapis.com/css?family=Nunito:300,400,600,700');
         .swal-modal * {
         font-family: 'Nunito', sans-serif;
         font-weight: bold;
         text-align: center;
         font-size: 20px;
         }
         .swal-modal {}
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
      </style> -->
      
   </head>
   <body class="user_link user_body">
      <!-- Sidenav -->
      <!-- <style type="text/css">
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
         @media (min-width: 992px) {
         .animate {
         animation-duration: 0.3s;
         -webkit-animation-duration: 0.3s;
         animation-fill-mode: both;
         -webkit-animation-fill-mode: both;
         }
         }
         @keyframes slideIn {
         0% {
         transform: translateY(1rem);
         opacity: 0;
         }
         100% {
         transform: translateY(0rem);
         opacity: 1;
         }
         0% {
         transform: translateY(1rem);
         opacity: 0;
         }
         }
         @-webkit-keyframes slideIn {
         0% {
         -webkit-transform: transform;
         -webkit-opacity: 0;
         }
         100% {
         -webkit-transform: translateY(0);
         -webkit-opacity: 1;
         }
         0% {
         -webkit-transform: translateY(1rem);
         -webkit-opacity: 0;
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
 -->

   
      <div class="sidebar">
         <div class="sidebar-inner">
            <div class="sidebar-logo" style="">
               <a class="td-n" href="https://www.gofounders.net/users/dashboard" style="padding:0;">
                  <div class="logo">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/css/logo.png" alt="" class="">
                  </div>
               </a>
            </div>
            <a href="#" class="menu-bar d-md-none navbar-toggler" data-toggle="collapse" data-target="#g-toogler"
               aria-controls="g-toogler" aria-expanded="false" aria-label="Toggle navigation">
            <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/menuburger.png" width="22">
            </a>
            <div class="collapse navbar-collapse" id="g-toogler">
               <ul class="sidebar-menu mb-0" style="">
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/users/dashboard">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/1.png" alt="" />
                     </span>
                     <span class="title">
                     Dashboard
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/user_profile">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/3.png" alt="" />
                     </span>
                     <span class="title">
                     My Profile
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/announcements">
                        <span class="icon-holder">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/2.png" alt="" />
                        </span>
                        <span class="title">
                           Announcements
                           <!--                                <img id="announ" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;">-->
                        </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link  " href="https://www.gofounders.net/community">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/16.png" alt="" />
                     </span>
                     <span class="title">
                     Community
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/webinars">
                        <span class="icon-holder">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/4.png" alt="" />
                        </span>
                        <span class="title">
                           Webinars
                           <!--                                <img id="webniar" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;"></span>-->
                        </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link activenow" href="https://www.gofounders.net/user_link">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/9.png" alt="" />
                     </span>
                     <span class="title">
                     My Links
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/download">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/11.png" alt="" />
                     </span>
                     <span class="title">
                     Downloads
                     </span>
                     <span style="color:rgb(255, 205, 23);"> &nbsp;<b>(120)</b></span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/invitations">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/5.png" alt="" />
                     </span>
                     <span class="title">
                     My Invitations
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/invitees/index/?info=10">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/6.png" alt="" />
                     </span>
                     <span class="title">
                     My Invitees
                     </span>
                     <span style="color:rgb(255, 205, 23);">
                     &nbsp;<b>(0)</b></span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/member/index/?info=10">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/7.png" alt="" />
                     </span>
                     <span class="title">
                     My Team
                     </span>
                     <span style="color:rgb(255, 205, 23);">
                     &nbsp;<b>(1)</b></span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/alfounders">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/8.png" alt="" />
                     </span>
                     <span class="title">
                     Team Summary
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/marketing">
                        <span class="icon-holder">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/10.png" alt="" />
                        </span>
                        <span class="title">
                           Marketing
                           <!--                                <img id="marketing" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;">-->
                        </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link  " href="https://www.gofounders.net/tutorials">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/12.png" alt="" />
                     </span>
                     <span class="title">
                     Tutorials
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/testimonials">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/15.png" alt="" />
                     </span>
                     <span class="title">
                     Testimonials
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/faq">
                        <span class="icon-holder">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/13.png" alt="" />
                        </span>
                        <span class="title">
                           FAQs
                           <!--                                <img id="faq1" src="https://www.gofounders.net/assests/img/icon_notifications.gif"
                              style="width: 27%;border-radius: 20px;">-->
                        </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link " href="https://www.gofounders.net/support">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/14.png" alt="" />
                     </span>
                     <span class="title">
                     Support
                     </span>
                     </a>
                  </li>
               </ul>
            </div>
         </div>
      </div>
 
      

      <div class="page-container">
         
         <div class="main-content">
            <!-- Top navbar -->
            <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
               <div class="container-fluid">
                  <div class="col-12 d-flex justify-content-between align-items-center flex-wrap">
                     <!-- Brand -->
                     <a class="h4 mb-0 text-white text-uppercase main-title  d-flex">My Links</a>
                     <ul class="navbar-nav align-items-center ml-md-auto" id="ul_community_head_id">
                        <li class="nav-item dropdown community-list-item">
                           <span class="total-notifiocation" id="com_count_total_not">47</span>
                           <a class="nav-link position-relative notification-icon community-notifiocation" href="#"
                              role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="fa fa-users"></i>
                           <span class="kt-pulse__ring"></span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0 overflow-hidden">
                              <div class="notification-row " id="notify_com_popup_bx">
                                 <div class="px-3 py-3" id="com_noti_headlines">
                                    <h6 class="text-sm text-muted m-0">New <strong class="text-primary"
                                       id="count_community">24</strong> communities posted by
                                       <span>Administrator</span>
                                    </h6>
                                    <h6 class="text-sm text-muted m-0">You have <strong id="count_comment_reply"
                                       class="text-primary">8</strong> New replies for
                                       <span>Comments</span>
                                    </h6>
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary"
                                       id="count_comment_likes">15</strong> New likes for
                                       <span>Comments</span>
                                    </h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul id="all_ul">
                                       <li onclick="fn_update_community('1475531', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1475531 community-new-popup" id="1475531">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="color:#0000CD;"><strong><span
                                                   style="font-size:28px;">The Movement Has
                                                   Begun</span></strong></span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             09:08pm on Thursday, August 1st, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1441050', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1441050 community-new-popup" id="1441050">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:20px;">Let&#39;s Celebrate
                                                   Again!</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:10am on Tuesday, July 30th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1406882', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1406882 community-new-popup" id="1406882">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="color:#008000;"><span
                                                   style="font-size:24px;">Gooooo Algeria
                                                   Gooooooo<br />
                                                   If everyone is moving forward together, then
                                                   success takes care of itself</span></span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:35am on Saturday, July 27th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1372874', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1372874 community-new-popup" id="1372874">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:26px;"><strong>You have within:
                                                   the strength, the patience, and the passion to
                                                   reach for the stars to change the
                                                   world.</strong></span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             01:35am on Friday, July 26th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1339012', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1339012 community-new-popup" id="1339012">
                                             Adminstrator posted community 
                                             <span>
                                                <p><strong>The future belongs to those who believe in the
                                                   beauty of their dreams</strong>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:32am on Thursday, July 25th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1305149', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1305149 community-new-popup" id="1305149">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:20px;"><strong>Every great dream
                                                   begins with a dreamer</strong></span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:28am on Thursday, July 25th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1261132', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1261132 community-new-popup" id="1261132">
                                             Adminstrator posted community 
                                             <span>
                                                <p>Thank You!</p>
                                             </span>
                                             <br>Posted on : <label>
                                             10:47pm on Wednesday, July 24th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1205111', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1205111 community-new-popup" id="1205111">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:24px;">Let&#39;s PLAY BIG All The
                                                   Way</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:42am on Friday, July 19th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1141058', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1141058 community-new-popup" id="1141058">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:36px;">Life is
                                                   Goooooooooooood</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             06:34am on Friday, July 5th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1109080', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1109080 community-new-popup" id="1109080">
                                             Adminstrator posted community 
                                             <span>
                                                <p><img height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                   title="Fireworks" width="30" /><img height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                   title="Fireworks" width="30" /><img height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                   title="Fireworks" width="30" />&nbsp;<img
                                                   height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                   title="Fireworks" width="30" /><img height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                   title="Fireworks" width="30" /><img height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                   title="Fireworks" width="30" /><span
                                                   style="color:#0000CD;"><strong><span
                                                   style="font-size:22px;">WE ARE IN IT TO WIN
                                                   IT&nbsp;</span></strong></span><img
                                                      height="30"
                                                      src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                      title="Fireworks" width="30" /><img height="30"
                                                      src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                      title="Fireworks" width="30" /><img height="30"
                                                      src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                      title="Fireworks" width="30" /><img height="30"
                                                      src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                      title="Fireworks" width="30" /><img height="30"
                                                      src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                      title="Fireworks" width="30" /><img height="30"
                                                      src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/travel/fireworks.png"
                                                      title="Fireworks" width="30" />
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             01:54am on Friday, July 5th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1077176', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1077176 community-new-popup" id="1077176">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:28px;">FREEDOM&nbsp;<img
                                                   height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/flags/united-states.png"
                                                   title="United states"
                                                   width="30" />&nbsp;FREEDOM&nbsp;<img height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/flags/united-states.png"
                                                   title="United states"
                                                   width="30" />&nbsp;FREEDOM&nbsp;<img height="30"
                                                   src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/sticker/flags/united-states.png"
                                                   title="United states" width="30" /></span></p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:19pm on Thursday, July 4th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('102125', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/WIN_20170401_17_34_25_Pro.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_102125 comment-like-new-popup" id="102125">
                                          Your comment is liked by <span>Robert Rioux</span> <br>Posted on
                                          : <label>
                                          11:46pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11750', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/DSC03269.JPG - 1.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11750 comment-reply-new-popup" id="11750">
                                          A reply for a comment is posted by <span>John E.
                                          Stratmann</span> <br>Posted on : <label>
                                          09:27pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101950', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/DSC03269.JPG - 1.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101950 comment-like-new-popup" id="101950">
                                          Your comment is liked by <span>John E. Stratmann</span>
                                          <br>Posted on : <label>
                                          09:25pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101845', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/Deb NMB 2.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101845 comment-like-new-popup" id="101845">
                                          Your comment is liked by <span>Debra Baxter</span> <br>Posted on
                                          : <label>
                                          08:08pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11713', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/ME1.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11713 comment-reply-new-popup" id="11713">
                                          A reply for a comment is posted by <span>Willie Lewis
                                          Combs</span> <br>Posted on : <label>
                                          07:24pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11707', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/734637869B8E957F7-FBE7-41BD-BC90-ABA0AF7C959D.jpeg)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11707 comment-reply-new-popup" id="11707">
                                          A reply for a comment is posted by <span>Colin Stein</span>
                                          <br>Posted on : <label>
                                          06:43pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101713', '29980');"> <span
                                          class="notif-thumb">AT</span> <a href="javascript:void(0);"
                                          class="comment_like_101713 comment-like-new-popup" id="101713">
                                          Your comment is liked by <span>Alayne Tribolet</span> <br>Posted
                                          on : <label>
                                          06:29pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101671', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/FB_IMG_1541620126671.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101671 comment-like-new-popup" id="101671">
                                          Your comment is liked by <span>Angela Nycz</span> <br>Posted on
                                          : <label>
                                          06:20pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101539', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/Bonnie_Swift_Johnson.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101539 comment-like-new-popup" id="101539">
                                          Your comment is liked by <span>LaVonne Johnson</span> <br>Posted
                                          on : <label>
                                          05:39pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101533', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/1883199439matt.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101533 comment-like-new-popup" id="101533">
                                          Your comment is liked by <span>Matt Mihalicz</span> <br>Posted
                                          on : <label>
                                          05:35pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11692', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/3601168188F321F69-DF92-4C38-B9B7-FD62269D7E36.jpeg)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11692 comment-reply-new-popup" id="11692">
                                          A reply for a comment is posted by <span>Robert James
                                          Guenther</span> <br>Posted on : <label>
                                          05:20pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101501', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/1667531100NandC.PNG)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101501 comment-like-new-popup" id="101501">
                                          Your comment is liked by <span>Clara Nolt</span> <br>Posted on :
                                          <label>
                                          04:54pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101492', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/523773445Timm Guitar2.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101492 comment-like-new-popup" id="101492">
                                          Your comment is liked by <span>Timm Johnson</span> <br>Posted on
                                          : <label>
                                          04:39pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11684', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/93887246820190621_174858.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11684 comment-reply-new-popup" id="11684">
                                          A reply for a comment is posted by <span>James Williams</span>
                                          <br>Posted on : <label>
                                          03:46pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11681', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/214661496901.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11681 comment-reply-new-popup" id="11681">
                                          A reply for a comment is posted by <span>Pierre Nortier</span>
                                          <br>Posted on : <label>
                                          03:36pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11672', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/Victoria.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11672 comment-reply-new-popup" id="11672">
                                          A reply for a comment is posted by <span>Victoria Leal</span>
                                          <br>Posted on : <label>
                                          02:33pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101354', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/1935042225dreamcatcher owl.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101354 comment-like-new-popup" id="101354">
                                          Your comment is liked by <span>Valerie Griffith</span>
                                          <br>Posted on : <label>
                                          12:37pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_reply('11666', '29980');">
                                          <span class="notif-thumb"
                                             style="background:url(https://d1iy5wifs53qnq.cloudfront.net/1244931821stuart.png)"></span>
                                          <a href="javascript:void(0);"
                                             class="reply_detail_11666 comment-reply-new-popup" id="11666">
                                          A reply for a comment is posted by <span>Stuart Clark</span>
                                          <br>Posted on : <label>
                                          12:33pm on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101315', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/Michael Carden.png)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101315 comment-like-new-popup" id="101315">
                                          Your comment is liked by <span>Michael Carden</span> <br>Posted
                                          on : <label>
                                          11:57am on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101304', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/19773527581545543_1398169693764903_1088984184_n(4).jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101304 comment-like-new-popup" id="101304">
                                          Your comment is liked by <span>Laszlo Szabo</span> <br>Posted on
                                          : <label>
                                          11:46am on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101300', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/avtar13.png)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101300 comment-like-new-popup" id="101300">
                                          Your comment is liked by <span>Mr. Ash</span> <br>Posted on :
                                          <label>
                                          11:36am on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101286', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/1085021743IMG_20190616_204638.jpg)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101286 comment-like-new-popup" id="101286">
                                          Your comment is liked by <span>Pongrac Gal</span> <br>Posted on
                                          : <label>
                                          11:20am on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_comment_like('101283', '29980');"> <span
                                          class="notif-thumb"
                                          style="background:url(https://d1iy5wifs53qnq.cloudfront.net/1690416466IMG_0006.JPG)"></span>
                                          <a href="javascript:void(0);"
                                             class="comment_like_101283 comment-like-new-popup" id="101283">
                                          Your comment is liked by <span>Mpumelelo Khumalo</span>
                                          <br>Posted on : <label>
                                          11:03am on Friday, June 28th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1045971', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1045971 community-new-popup" id="1045971">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:24px;">The <strong>BEST DAYS
                                                   </strong>in our Life are ahead</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             11:27pm on Thursday, June 27th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('1014998', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_1014998 community-new-popup" id="1014998">
                                             Adminstrator posted community 
                                             <span>
                                                <p><strong><span style="font-size:20px;">It&#39;s Real -
                                                   It&#39;s Happening&nbsp;</span></strong>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:49pm on Tuesday, June 25th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('984344', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_984344 community-new-popup" id="984344">
                                             Adminstrator posted community 
                                             <span>
                                                <p>Go Go Go&nbsp;Argentina!!! YOU DID IT&nbsp;</p>
                                             </span>
                                             <br>Posted on : <label>
                                             10:03pm on Friday, June 21st, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('924397', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_924397 community-new-popup" id="924397">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:24px;">30,000 + Stars&nbsp;</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             03:31am on Tuesday, June 25th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('894987', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_894987 community-new-popup" id="894987">
                                             Adminstrator posted community 
                                             <span>
                                                <p><strong><span style="font-size:20px;">It&#39;s Real -
                                                   It&#39;s Happening&nbsp;</span></strong>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:49pm on Tuesday, June 25th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('865648', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_865648 community-new-popup" id="865648">
                                             Adminstrator posted community 
                                             <span>
                                                <p>Go Go Go&nbsp;Argentina!!! YOU DID IT&nbsp;</p>
                                             </span>
                                             <br>Posted on : <label>
                                             10:03pm on Friday, June 21st, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('807099', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_807099 community-new-popup" id="807099">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:24px;">30,000 + Stars&nbsp;</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             03:31am on Tuesday, June 25th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('749099', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_749099 community-new-popup" id="749099">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span font-size:24px="" style="\">We Believe In You .. We
                                                   Appreciate You</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             12:50am on Thursday, June 13th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('721003', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_721003 community-new-popup" id="721003">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="color:#0066ff;"><span
                                                   style="font-size:26px;">Onward And
                                                   Upward</span></span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             11:53am on Wednesday, June 12th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('693100', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_693100 community-new-popup" id="693100">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:20px;">To Our&nbsp;Fellow
                                                   Americans...Founders and Families&nbsp;</span>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             04:26pm on Wednesday, June 12th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('665687', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_665687 community-new-popup" id="665687">
                                             Adminstrator posted community 
                                             <span>
                                                <p><span style="font-size:26px;">Raw Uncut
                                                   Interview&nbsp;</span><br />
                                                   <strong><span style="font-size:26px;">Eric Green<br />
                                                   Scott Nelson<br />
                                                   Ash Mufareh</span></strong>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             09:24am on Wednesday, June 12th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('256297', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_256297 community-new-popup" id="256297">
                                             Adminstrator posted community 
                                             <span>
                                                <p><strong><span style="color:#3366ff;"><span
                                                   style="font-size:20px;">We Believe in
                                                   YOU</span></span></strong>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             05:20am on Thursday, June 13th, 2019</label>
                                          </a>
                                       </li>
                                       <li onclick="fn_update_community('45881', '29980');">
                                          <span class="notif-thumb"></span>
                                          <a href="javascript:void(0);"
                                             class="poscom_45881 community-new-popup" id="45881">
                                             Adminstrator posted community 
                                             <span>
                                                <p><strong><span style="font-size:20px"><span
                                                   style="color:#3366ff">Go Founders
                                                   Goooooooooooooo</span></span></strong>
                                                </p>
                                             </span>
                                             <br>Posted on : <label>
                                             01:12am on Thursday, June 13th, 2019</label>
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                           </div>
                        </li>
                     </ul>
                     <ul class="navbar-nav align-items-center ml-md-auto n-menu"
                        style="margin-left: 20px !important;">
                        <li class="nav-item dropdown">
                           <span class="total-notifiocation totalnoti">
                              <div class="plus_sign">99+</div>
                           </span>
                           <a class="position-relative notification-icon" href="#" role="button"
                              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="fa fa-bell"></i>
                           <span class="kt-pulse__ring"></span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0 overflow-hidden">
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary inviteesnoti">0</strong> notifications from
                                       <span>Invitees :</span>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary inviteesnoti">1</strong> notifications from
                                       <span>Team :</span>
                                    </h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                       <a href="javascript:void(0);" class="addDetailsuser"
                                          id="saikat@inventiotechnologies.com">
                                          <li>
                                             Your new team member is <span>sachin deoo</span>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary inviteesnoti">0</strong> notifications from
                                       <span>Pending Founders :</span>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary inviteesnoti">1</strong> notifications from
                                       <span>Webinar Invitees :</span>
                                    </h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                       <a href="javascript:void(0);" class="addDetailwebinar">
                                          <li>
                                             Your new team member is <span>Saikat Bose</span>
                                          </li>
                                       </a>
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary">72</strong> notifications from
                                       <span>Webinar</span>
                                    </h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="26">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="27">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="28">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="29">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="30">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="31">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="45">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="46">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="47">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="48">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="50">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="51">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="52">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="53">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="54">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="55">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="56">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="57">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="60">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="61">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="62">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="64">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="65">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="66">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="67">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="68">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="70">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="71">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="74">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="75">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="76">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="77">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="78">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="80">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="81">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="82">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="83">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="84">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="85">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="86">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="87">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="88">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="90">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="91">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="92">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="93">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="94">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="95">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="96">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="97">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="99">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="100">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="101">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="102">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="103">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="104">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="105">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="106">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="107">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="108">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="109">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="110">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="111">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="112">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="113">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="114">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="115">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="116">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="117">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="119">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="120">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailswebinar" id="122">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <input type="hidden" name="" id="idslist"
                                          value="26,27,28,29,30,31,45,46,47,48,50,51,52,53,54,55,56,57,60,61,62,64,65,66,67,68,70,71,74,75,76,77,78,80,81,82,83,84,85,86,87,88,90,91,92,93,94,95,96,97,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,119,120,122">
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary">1</strong> notifications from
                                       <span>Announcement</span>
                                    </h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                       <a href="javascript:void(0);" class="addDetailsannounce" id="80">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <input type="hidden" name="" id="idslistannounce" value="80">
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary">120</strong> notifications from
                                       <span>Download</span>
                                    </h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="3">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="5">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="7">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="8">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="9">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="10">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="11">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="12">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="13">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="14">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="15">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="16">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="17">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="26">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="27">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="28">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="29">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="31">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="32">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="33">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="34">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="35">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="36">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="37">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="38">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="39">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="40">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="41">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="42">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="44">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="45">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="46">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="49">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="50">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="51">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="52">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="53">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="55">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="56">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="57">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="58">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="59">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="60">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="61">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="62">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="63">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="64">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="65">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="66">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="67">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="68">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="69">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="70">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="73">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="74">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="75">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="80">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="81">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="82">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="83">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="84">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="85">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="86">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="87">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="88">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="89">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="90">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="91">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="96">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="97">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="99">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="100">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="102">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="103">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="107">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="108">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="109">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="110">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="111">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="112">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="113">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="114">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="115">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="116">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="117">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="118">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="119">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="120">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="121">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="122">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="123">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="127">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="128">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="129">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="130">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="131">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="132">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="133">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="134">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="135">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="136">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="139">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="140">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="141">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="142">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="143">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="144">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="145">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="146">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="147">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="148">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="149">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="150">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="152">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="153">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="154">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="155">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="156">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="157">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <a href="javascript:void(0);" class="addDetailsdownload" id="158">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <input type="hidden" name="" id="idslistdownload"
                                          value="3,5,7,8,9,10,11,12,13,14,15,16,17,26,27,28,29,31,32,33,34,35,36,37,38,39,40,41,42,44,45,46,49,50,51,52,53,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,73,74,75,80,81,82,83,84,85,86,87,88,89,90,91,96,97,99,100,102,103,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,127,128,129,130,131,132,133,134,135,136,139,140,141,142,143,144,145,146,147,148,149,150,152,153,154,155,156,157,158">
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong
                                       class="text-primary">1</strong> notifications from
                                       <span>Marketing</span>
                                    </h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                       <a href="javascript:void(0);" class="addDetailsmarketing" id="31">
                                          <li>
                                             New notifications
                                          </li>
                                       </a>
                                       <input type="hidden" name="" id="idslistmarketing" value="31">
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                           </div>
                        </li>
                     </ul>
                     <!-- User -->
                     <ul class="navbar-nav align-items-center d-flex p-menu">
                        <li class="nav-item dropdown">
                           <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false">
                              <div class="media align-items-center">
                                 <!--<span class="avatar avatar-sm rounded-circle">-->
                                 <!--  <span class="avatar avatar-sm rounded-circle" id="profileImage1"></span>-->
                                 <!--</span>-->
                                 <span class="avatar avatar-sm rounded-circle avatar-bg"
                                    style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/8561705301118697793saikat.jpg')">
                                    <!--<img src="https://www.gofounders.net/uploads/8561705301118697793saikat.jpg"
                                       width="50px" height="35px">-->
                                 </span>
                                 <div class="media-body ml-2">
                                    <span class="mb-0 text-sm  font-weight-bold">Saikat&nbsp;
                                    Bose</span>
                                 </div>
                              </div>
                           </a>
                           <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                              <div class=" dropdown-header noti-title">
                                 <h6 class="text-overflow m-0">Welcome!</h6>
                              </div>
                              <a href="https://www.gofounders.net/user_profile" class="dropdown-item">
                              <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/profle.png"
                                 alt="">
                              <span>My profile</span>
                              </a>
                              <div class="dropdown-divider"></div>
                              <a href="https://www.gofounders.net/users/logout" class="dropdown-item">
                              <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/sign-out.png"
                                 alt="">
                              <span>Logout</span>
                              </a>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </nav>
            <style>
               .cke_chrome,
               .cke {
               width: 100%;
               }
               .new-gif_one {
               position: absolute;
               left: -13px;
               top: -1px;
               width: 48px;
               transform: rotate(-38deg);
               -webkit-transform: rotate(-38deg);
               -ms-transform: rotate(-38deg);
               -o-transform: rotate(-38deg);
               }
               .nav-tabs .nav-link {
               /* border: 1px solid #ffffff; */
               /* border-top-left-radius: .375rem; */
               /* border-top-right-radius: .375rem; */
               font-size: 16px;
               font-weight: 600;
               padding: 15px 22px;
               background: #11bf9d;
               /* border-radius: 10px; */
               color: #ffffff;
               /* box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.53); */
               margin-right: 6px;
               }
               .nav-tabs .nav-link.active,
               .nav-tabs .nav-item.show .nav-link {
               color: #ffcf1d !important;
               border-color: #ffcf1d #ffcf1d #ffcf1d;
               background-color: rgb(11, 119, 99) !important;
               font-weight: 600;
               font-size: 16px;
               border-bottom: 4px solid #085446 !important;
               }
               .active:after {
               background-image: url(https://d1iy5wifs53qnq.cloudfront.net/assests/images/yeah2.gif);
               position: absolute;
               content: "";
               top: -88px;
               left: 50%;
               width: 100px;
               height: 100px;
               background-repeat: no-repeat;
               background-size: 100%;
               transform: translate(-50%);
               -webkit-transform: translate(-50%);
               -moz-transform: translate(-50%);
               -o-transform: translate(-50%);
               -ms-transform: translate(-50%);
               }
               .nav-tabs {
               /* margin: 0 .8%; */
               margin-bottom: 5px;
               border-bottom: 1px solid #53e3a600 !important;
               padding: 0 1% !important;
               }
               .nav-tabs .second-child .nav-link {
               background: #15b192;
               color: rgba(255, 255, 255, 0.99);
               border-bottom-color: #0f8870;
               }
               .nav-tabs .fourth-child .nav-link {
               background: #15d2ad;
               color: rgb(255, 255, 255);
               border-bottom-color: #13b192;
               }
               .nav-tabs .nav-link {
               border: none;
               border-radius: 0;
               border-bottom: 4px solid #0aa285;
               }
               .nav-tabs .nav-link:hover {
               color: #ffcf1d !important;
               border-color: #ffcf1d #ffcf1d #ffcf1d;
               background-color: rgb(11, 119, 99) !important;
               font-weight: 600;
               font-size: 16px;
               border-bottom: 4px solid #085446 !important;
               }
               .new-gif img {
               left: -5px;
               position: absolute;
               width: 68px;
               top: 2px;
               transform: rotate(-25deg);
               -wedkit-transform: rotate(-25deg);
               -ms-transform: rotate(-25deg);
               -o-transform: rotate(-25deg);
               }
               @media(min-width:1800px) {
               .nav-tabs {
               padding: 0 1.5% !important;
               }
               }
               .modal-body .form-group {
               margin-bottom: 0rem;
               margin-top: 1rem;
               }
               .modal-body {
               padding-top: 27px;
               padding-bottom: 0;
               }
               .cke_contents {
               min-height: 316px !important;
               }
               .modal-footer {
               padding-top: 0;
               }
               img.yeah {
               position: absolute;
               width: 100px;
               left: 20px;
               top: -90px;
               display: none;
               }
               @media screen and (max-width:992px) {
               .active:after {
               display: none;
               }
               }
               @media (max-width:570px) {
               ul.nav.nav-tabs {
               margin-top: 38px;
               }
               }
            </style>
            <style>
               label.form-control-label {
               color: #fff !important;
               margin: 36px 10px !important;
               font-size: 18px !important;
               }
               @media (min-width: 992px) {
               .col-lg-2 {
               /* max-width: 16.66667%; */
               max-width: 16.667%;
               flex: 0 0 16.66667%;
               }
               }
               .newbg_grand {
               border: 1px dashed rgba(208, 208, 208, 0.38) !important;
               background: #02337c;
               }
               .newbg_grand a {
               display: block;
               }
               .btn-primary:hover {
               background-color: #5eebcf;
               }
               .btn-primarys {
               background-color: #5eebcf;
               }
               .btn-primarys:hover {
               background-color: #ffcf1d;
               }
               @media (max-width: 576px) {
               .newbg_grand {
               padding: 16px 10px !important;
               border-bottom: 0 !important;
               }
               label.form-control-label {
               margin: 0px 10px !important;
               }
               }
               .new {
               width: 34%;
               margin-top: -3rem;
               margin-left: -1.2rem;
               }
               /*.newbg_grand1{
               background-image:url(../assests/img/trimlink.png);
               background-size: cover;
               }*/
               @media (min-width: 320px) and (max-width: 480px) {
               .new {
               width: 30%;
               margin-top: -2rem;
               margin-left: -1.2rem;
               }
               }
               .bullet-icon {
               height: 40px;
               width: 40px;
               border-radius: 50%;
               background-color: #043575;
               position: absolute;
               z-index: 9;
               left: 14%;
               top: 70px;
               font-size: 20px;
               color: white;
               font-weight: 600;
               line-height: 40px;
               }
               @media (min-width: 1500px) {
               .new {
               width: 28%;
               margin-top: -1.2rem;
               margin-left: -0.8rem;
               }
               .bullet-icon {
               height: 60px;
               width: 60px;
               border-radius: 50%;
               background-color: #043575;
               position: absolute;
               z-index: 9;
               left: 16%;
               top: 46%;
               font-size: 20px;
               color: white;
               font-weight: 600;
               line-height: 60px;
               }
               }
               @media (min-width:1450px) {
               .col-lg-4.firstgap.newbg_grand {
               /* display: block; */
               max-width: 23.33333%;
               flex: 0 0 23.33333%;
               }
               .col-lg-4.newbg_grand {
               /* display: none; */
               max-width: 43.33333%;
               flex: 0 0 43.33333%;
               }
               .row.trim-row .col-lg-4.newbg_grand {
               max-width: 33.33333%;
               flex: 0 0 33.33333%;
               }
               }
            </style>
            <!-- Page content -->
            <!--<div class="col-xl-8 order-xl-1">-->
            <!-- <div class="card-header" style="background: #fff">
               <div class="row align-items-center">
               
                 <div class="col-8">
               
                   <h3 class="mb-0"></h3>
               
                 </div>
               
               
               
               </div>
               
               </div>-->
            <div class="card-body my-5 user_link_wrapper">
               <div class="row">
                  <div class="col-lg-2 ml-auto pr-lg-0">
                     <!-- <a href="https://www.trimurl.co/shorten/trimdesign/Mjk5ODA=" style="" target="_blank"
                        class="btn btn-primary btn-lg btn-block">
                        
                        trim url <svg aria-hidden="true" data-prefix="fas" data-icon="envelope-open-text"
                        
                            class="svg-inline--fa fa-envelope-open-text fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg"
                        
                            viewBox="0 0 512 512" width="16px" height="16px"> 
                        
                            <path fill="currentColor"
                        
                                d="M176 216h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16c0 8.84 7.16 16 16 16zm-16 80c0 8.84 7.16 16 16 16h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16zm96 121.13c-16.42 0-32.84-5.06-46.86-15.19L0 250.86V464c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V250.86L302.86 401.94c-14.02 10.12-30.44 15.19-46.86 15.19zm237.61-254.18c-8.85-6.94-17.24-13.47-29.61-22.81V96c0-26.51-21.49-48-48-48h-77.55c-3.04-2.2-5.87-4.26-9.04-6.56C312.6 29.17 279.2-.35 256 0c-23.2-.35-56.59 29.17-73.41 41.44-3.17 2.3-6 4.36-9.04 6.56H96c-26.51 0-48 21.49-48 48v44.14c-12.37 9.33-20.76 15.87-29.61 22.81A47.995 47.995 0 0 0 0 200.72v10.65l96 69.35V96h320v184.72l96-69.35v-10.65c0-14.74-6.78-28.67-18.39-37.77z">
                        
                            </path>
                        
                        </svg>
                        
                        </a> -->
                     <a href="#" style=""
                        class="btn btn-primary btn-lg btn-block">
                        Share History 
                        <svg aria-hidden="true" data-prefix="fas" data-icon="envelope-open-text"
                           class="svg-inline--fa fa-envelope-open-text fa-w-16" role="img"
                           xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="16px" height="16px">
                           <path fill="currentColor"
                              d="M176 216h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16c0 8.84 7.16 16 16 16zm-16 80c0 8.84 7.16 16 16 16h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16zm96 121.13c-16.42 0-32.84-5.06-46.86-15.19L0 250.86V464c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V250.86L302.86 401.94c-14.02 10.12-30.44 15.19-46.86 15.19zm237.61-254.18c-8.85-6.94-17.24-13.47-29.61-22.81V96c0-26.51-21.49-48-48-48h-77.55c-3.04-2.2-5.87-4.26-9.04-6.56C312.6 29.17 279.2-.35 256 0c-23.2-.35-56.59 29.17-73.41 41.44-3.17 2.3-6 4.36-9.04 6.56H96c-26.51 0-48 21.49-48 48v44.14c-12.37 9.33-20.76 15.87-29.61 22.81A47.995 47.995 0 0 0 0 200.72v10.65l96 69.35V96h320v184.72l96-69.35v-10.65c0-14.74-6.78-28.67-18.39-37.77z">
                           </path>
                        </svg>
                     </a>
                  </div>
               </div>
            </div>
            <ul class="nav nav-tabs" role="tablist">
               <li class="nav-item">
                  <a class="nav-link active" href="#invite" role="tab" data-toggle="tab">Invite Links</a>
                  <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif_one" alt="" />
                  <!--<img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif_one" alt=""/>-->
                  <!-- <img src="/assests/images/yeah.gif" alt="" class="yeah"/>-->
               </li>
               <li class="nav-item second-child">
                  <a class="nav-link" href="#invitation" role="tab" data-toggle="tab">Invitation Links</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="#webinar" role="tab" data-toggle="tab">Webinar Links</a>
                  <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif_one" alt="" />
               </li>
               <li class="nav-item fourth-child">
                  <a class="nav-link" href="#presentation" role="tab" data-toggle="tab">Presentation Links</a>
                  <!--    <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif_one" alt=""/>-->
               </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
               <div role="tabpanel" class="tab-pane fade in active" id="invite">
                  <div class="card-body user_link_wrapper">
                     <div class="row">
                        <div class="col-lg-4 firstgap newbg_grand" style=" 
                           border: 1px solid #1b4ad1;">
                           <label class="form-control-label" for="input-username" style="margin-top: 26px; margin-bottom: 26px;
                              color: #ffcd17; font-size: 15px;">1. My Invite Link:</label>
                        </div>
                        <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                           padding: 26px 18px 20px 18px;">
                           <input type="text" class="form-control form-control-alternative mycopy29980" readonly=""
                              value="https://www.gofounders.net/founderinvite/invite/29980" id="#mycopy29980">
                        </div>
                        <div class="col-lg-2 newbg_grand col-6" style="  border: 1px solid #315cd5;
                           padding:26px 0;">
                           <a>
                              <center><button class="btn btn-primary" data-clipboard-action="copy"
                                 data-clipboard-target=".mycopy29980">
                                 Copy Link
                                 <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                                    style="margin: 0 4px;">
                                 </button>
                              </center>
                           </a>
                        </div>
                        <div class="col-lg-2 newbg_grand col-6" style="border: 1px solid #315cd5;
                           padding: 26px 0;">
                           <center>
                           <a href="#" data-toggle="modal" data-target="#myModal129980">
                              <center>
                                 <button class="btn btn-primary" style=" margin-top: 0px;">
                                    Share Link
                                    <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                       class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                       xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                                       width="16px" height="16px">
                                       <path fill="currentColor"
                                          d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                       </path>
                                    </svg>
                                 </button>
                              </center>
                           </a>
                           </center >
                        </div>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="   
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17; font-size: 15px;">2. My Invite 2 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mycopy129980"
                           readonly="" value="https://www.gofounders.net/founderinvite/invite2/29980"
                           id="myInput2">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding:26px 0;">
                        <center>
                           <button class="btn btn-primary" data-clipboard-action="copy"
                              data-clipboard-target=".mycopy129980">
                              Copy Link
                              <!--<i class="fas fa-copy"></i>-->
                              <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                                 style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="   
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17; font-size: 15px;">3. My Invite 3 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my3" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite3/29980" id="myInput3">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my3">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style=" 
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">4. My Invite 4 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my4" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite4/29980" id="myInput4">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my4">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal429980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style=" 
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">5. My Invite 5 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my5" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite5/29980" id="myInput5">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my5">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style=" 
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">6. My Invite 6 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my6" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite6/29980" id="myInput6">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my6">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">7. My Invite 7 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi11" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite7/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi11">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">8. My Invite 8 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi12" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite8/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi12">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">9. My Invite 9 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi13" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite9/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi13">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ; border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3729980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">10. My Invite 10 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi20" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite10/29980" id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi20">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">11. My Invite 11 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi24" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite11/29980" id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi24">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4729980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">12. My Invite 12 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi25" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite12/29980" id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi25">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4829980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">13. My Invite 13 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi27" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite13/29980" id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi27">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">14. My Invite 14 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi34" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite14/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi34">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5729980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">15. My Invite 15 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi35" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite15/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi35">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5829980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">16. My Invite 16 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi36" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite16/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi36">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5929980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">17. My Invite 17 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi37" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite17/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi37">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">18. My Invite 18 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi38" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite18/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi38">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">19. My Invite 19 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi39" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite19/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi39">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">20. My Invite 20 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi40" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite20/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi40">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">21. My Invite 21 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi51" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite21/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi51">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7429980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">22. My Invite 22 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi52" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite22/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi52">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">23. My Invite 23 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi54" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite23/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi54">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7729980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">24. My Invite 24 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi170" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite24/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi170">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal17729980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">25. My Invite 25 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi171" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite25/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi171">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal17829980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">26. My Invite 26 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi172" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite26/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi172">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal17929980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--  <img src="/assests/img/new.gif" class="new-gif" alt=""/>-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">27. My Invite 27 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi173" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite27/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi173">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal18029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!-- <img src="/assests/img/new.gif" class="new-gif" alt=""/> -->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">28. My Invite 28 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi174" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite28/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi174">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal18129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--<img src="/assests/img/new.gif" class="new-gif" alt=""/>-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">29. My Invite 29 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi175" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite29/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi175">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal18229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--  <img src="/assests/img/new.gif" class="new-gif" alt=""/> -->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">30. My Invite 30 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi176" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite30/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi176">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal18329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--<img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif" alt=""/>-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">31. My Invite 31 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi177" readonly=""
                           value="https://www.gofounders.net/founderinvite/invite31/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi177">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal18629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif"
                           alt="" />
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">32. My Invite 32 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi177_invite32"
                           readonly="" value="https://www.gofounders.net/founderinvite/invite32/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi177_invite32">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal186_invite3229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="invite24" style="display: none;">
                        <div class="col-lg-4 firstgap newbg_grand" style="
                           border: 1px solid #1b4ad1;">
                           <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                              color: #ffcd17;
                              font-size: 15px;">24. My Invite 24 Link:</label>
                        </div>
                        <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                           padding: 26px 18px 20px 18px;">
                           <input type="text" class="form-control form-control-alternative mi55" readonly=""
                              value="https://www.gofounders.net/founderinvite/invite24/29980" id="myInput15">
                        </div>
                        <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                           padding: 26px 0 ;">
                           <center><button class="btn btn-primary" data-clipboard-action="copy"
                              data-clipboard-target=".mi55">
                              Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                                 style="margin: 0 4px;">
                              </button>
                           </center>
                        </div>
                        <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                           ">
                           <center>
                              <a href="#" data-toggle="modal" data-target="#myModal7829980">
                                 <button class="btn btn-primary" style=" margin-top: 0px;">
                                    Share Link
                                    <!--<i class="fas fa-share-alt"></i>-->
                                    <!-- <i class="fas fa-share-square"></i> -->
                                    <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                    <!--<i class="fas fa-share-alt"></i>-->
                                    <svg aria-hidden="true"
                                       data-prefix="fas" data-icon="share-alt"
                                       class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                       xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                                       width="16px" height="16px">
                                       <path fill="currentColor"
                                          d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                       </path>
                                    </svg>
                                 </button>
                              </a>
                           </center>
                        </div>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="   margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">33. My Registration Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my7" readonly=""
                           value="https://www.gofounders.net/users/registration/29980" id="myInput7">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my7">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style=" padding: 26px 0 ; border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal729980">
                              <button class="btn btn-primary" style=" 
                                 margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                  </div>
                  <div class="row trim-row">
                     <!--<div class="col-lg-2" style="">
                        </div>-->
                     <!--   <div class="col-lg-12" style="">
                        <p><br><br><br></p>
                        
                        <center>
                        
                            <h3 style="color:#fff;">Congratulations to all current active Founders. </h3>
                        
                        </center>
                        
                        </div>-->
                     <!--    <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 36px; color: #ffcd17;font-size: 14px;">Enjoy watching this Video:</label>
                          </div>
                        
                        <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1; padding: 26px 18px 20px 18px;">
                            <input type="text" class="form-control form-control-alternative mi-video" readonly=""value="https://www.gofounders.net/uploads/Founders-List.mp4" id="myInput16">
                            </div>
                               <div class="col-lg-4 newbg_grand" style="border: 1px solid #315cd5;padding: 0;">
                                 <center><button class="btn btn-primary" data-clipboard-action="copy" data-clipboard-target=".mi-video"style=" margin-top: 25px; margin-bottom: 25px;">
                                      Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png" style="margin: 0 4px;"></button>
                                      </center>
                                          </div>-->
                     <!-------------------------------------------->
                     <!--           <div class="col-lg-2" style="">
                        </div>-->
                     <!--    <div class="col-lg-8 mt-3" style="">
                        <marquee>
                        
                            <h4 style="margin-left: 14%;
                        
                                                                            color: white;">*Not intended for publishing or
                        
                                promotions only
                        
                                for entertainment.This has no effect on your actual account or structure.</h4>
                        
                        </marquee>
                        
                        </div>-->
                     <!-- <div class="col-lg-2" style="">
                        </div>-->
                     <!-------------------------------------------->
                     <!---------------------TrimUrl---------------------------------------------->
                     <div class="col-lg-4 newbg_grand mt-5" style="border: 3px solid #ffcf1d !important;">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.png" class="new">
                        <label class="form-control-label" for="input-username"
                           style="margin-top: 36px; color: #ffcd17;font-size: 14px;">TrimURL</label>
                     </div>
                     <div class="col-lg-8 newbg_grand mt-5"
                        style="border: 3px solid #ffcf1d !important;padding: 0;">
                        <center><a href="https://www.trimurl.co/gofounders/
                           Mjk5ODA=           " class="btn btn-primary" style="    padding: 1rem 1rem 1rem 1rem;
                           margin-top: 25px;
                           margin-bottom: 25px;
                           width: 50%;" target=_blank>
                           Trim Your Link</a>
                        </center>
                     </div>
                     <!--------------------------------------------------------------->
                     <!--<div class="col-lg-2" style="">
                        </div>
                        
                        <div class="col-lg-8 mt-3" style="">
                        
                        
                        
                            <marquee>
                        
                                <h4 style="margin-left: 14%;
                        
                                                                                color: white;">*Not intended for publishing or
                        
                                    promotions only
                        
                                    for entertainment.This has no effect on your actual account or structure.</h4>
                        
                            </marquee>
                        
                        </div>-->
                     <div class="col-lg-2" style="">
                     </div>
                     <div class="col-lg-12">
                        <div class="row">
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">1 </div>
                                 <a href="https://www.onpassive.com/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;     padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="  color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM</span>
                                 </a>
                              </center>
                           </div>
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">2 </div>
                                 <a href="https://www.onpassive.com/1/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="  color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM/1</span>
                                 </a>
                              </center>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="invitation">
               <div class="card-body user_link_wrapper">
                  <div class="row">
                     <div class="col-lg-4 firstgap newbg_grand" style="   
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">1. My Invitation Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my8" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation/29980" id="myInput8">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my8">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal829980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">2. My Invitation 2 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my9" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation2/29980"
                           id="myInput9">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my9">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal929980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">3. My Invitation 3 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative my10" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation3/29980"
                           id="myInput10">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".my10">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal1029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">4. My Invitation 4 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;                         
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi1" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation4/29980"
                           id="myInput11">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi1">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal1129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="   border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">5. My Invitation 5 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi2" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation5/29980"
                           id="myInput12">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi2">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal1229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">6. My Invitation 6 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi14" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation6/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi14">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3829980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">7. My Invitation 7 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi15" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation7/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi15">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3929980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">8. My Invitation 8 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi18" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation8/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi18">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">9. My Invitation 9 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi21" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation9/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi21">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4429980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">10. My Invitation 10 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi23" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation10/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi23">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">11. My Invitation 11 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi30" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation11/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi30">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">12. My Invitation 12 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi31" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation12/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi31">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5429980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">13. My Invitation 13 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi43" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation13/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi43">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">14. My Invitation 14 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi48" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation14/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi48">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">15. My Invitation 15 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi49" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation15/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi49">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">16. My Invitation 16 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi50" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation16/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi50">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">17. My Invitation 17 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi53" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation17/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi53">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">18. My Invitation 18 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi56" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation18/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi56">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7929980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">19. My Invitation 19 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi199" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation19/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi199">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal18429980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--<img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif" alt="">-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">20. My Invitation 20 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi178" readonly=""
                           value="https://www.gofounders.net/founderinvitation/invitation20/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi178">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal18529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!-- <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif" alt=""> -->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">21. My Invitation 21 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi179_invitation"
                           readonly="" value="https://www.gofounders.net/founderinvitation/invitation21/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi179_invitation">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal186_invitation29980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">22. My Invitation 22 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi180_invitation"
                           readonly="" value="https://www.gofounders.net/founderinvitation/invitation22/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi180_invitation">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal187_invitation29980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif"
                           alt="">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">23. My Invitation 23 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi181_invitation"
                           readonly="" value="https://www.gofounders.net/founderinvitation/invitation23/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi181_invitation">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal188_invitation29980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                  </div>
                  <div class="row trim-row">
                     <!--<div class="col-lg-2" style="">
                        </div>-->
                     <!--   <div class="col-lg-12" style="">
                        <p><br><br><br></p>
                        
                        <center>
                        
                            <h3 style="color:#fff;">Congratulations to all current active Founders. </h3>
                        
                        </center>
                        
                        </div>-->
                     <!--    <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 36px; color: #ffcd17;font-size: 14px;">Enjoy watching this Video:</label>
                          </div>
                        
                        <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1; padding: 26px 18px 20px 18px;">
                            <input type="text" class="form-control form-control-alternative mi-video" readonly=""value="https://www.gofounders.net/uploads/Founders-List.mp4" id="myInput16">
                            </div>
                               <div class="col-lg-4 newbg_grand" style="border: 1px solid #315cd5;padding: 0;">
                                 <center><button class="btn btn-primary" data-clipboard-action="copy" data-clipboard-target=".mi-video"style=" margin-top: 25px; margin-bottom: 25px;">
                                      Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png" style="margin: 0 4px;"></button>
                                      </center>
                                          </div>-->
                     <!-------------------------------------------->
                     <!--           <div class="col-lg-2" style="">
                        </div>-->
                     <!--    <div class="col-lg-8 mt-3" style="">
                        <marquee>
                        
                            <h4 style="margin-left: 14%;
                        
                                                                            color: white;">*Not intended for publishing or
                        
                                promotions only
                        
                                for entertainment.This has no effect on your actual account or structure.</h4>
                        
                        </marquee>
                        
                        </div>-->
                     <!-- <div class="col-lg-2" style="">
                        </div>-->
                     <!-------------------------------------------->
                     <!---------------------TrimUrl---------------------------------------------->
                     <div class="col-lg-4 newbg_grand mt-5" style="border: 3px solid #ffcf1d !important;">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.png" class="new">
                        <label class="form-control-label" for="input-username"
                           style="margin-top: 36px; color: #ffcd17;font-size: 14px;">TrimURL</label>
                     </div>
                     <div class="col-lg-8 newbg_grand mt-5"
                        style="border: 3px solid #ffcf1d !important;padding: 0;">
                        <center><a href="https://www.trimurl.co/gofounders/
                           Mjk5ODA=           " class="btn btn-primary" style="    padding: 1rem 1rem 1rem 1rem;
                           margin-top: 25px;
                           margin-bottom: 25px;
                           width: 50%;" target=_blank>
                           Trim Your Link</a>
                        </center>
                     </div>
                     <!--------------------------------------------------------------->
                     <!--<div class="col-lg-2" style="">
                        </div>
                        
                        <div class="col-lg-8 mt-3" style="">
                        
                        
                        
                            <marquee>
                        
                                <h4 style="margin-left: 14%;
                        
                                                                                color: white;">*Not intended for publishing or
                        
                                    promotions only
                        
                                    for entertainment.This has no effect on your actual account or structure.</h4>
                        
                            </marquee>
                        
                        </div>-->
                     <div class="col-lg-2" style="">
                     </div>
                     <div class="col-lg-12">
                        <div class="row">
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">1 </div>
                                 <a href="https://www.onpassive.com/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;     padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="  color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM</span>
                                 </a>
                              </center>
                           </div>
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">2 </div>
                                 <a href="https://www.onpassive.com/1/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="  color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM/1</span>
                                 </a>
                              </center>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="webinar">
               <div class="card-body user_link_wrapper">
                  <div class="row">
                     <div class="col-lg-4 firstgap newbg_grand" style=" 
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">1. My Webinar Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi3" readonly=""
                           value="https://www.gofounders.net/founderwebinar/webinar/29980" id="myInput13">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi3">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal1329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style=" 
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">2. My Webinar 2 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi4" readonly=""
                           value="https://www.gofounders.net/founderwebinar/webinar2/29980" id="myInput14">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi4">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0;border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal1429980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">3. My Webinar 3 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi5" readonly=""
                           value="https://www.gofounders.net/founderwebinar/webinar3/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi5">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal1529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">4. My Webinar 4 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi28" readonly=""
                           value="https://www.gofounders.net/founderwebinar/webinar4/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi28">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--<img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif" alt="">-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">5. My Webinar 5 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi29" readonly=""
                           value="https://www.gofounders.net/founderwebinar/webinar5/29980" id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi29">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModa_webl5229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--<img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif" alt="">-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">6. My Webinar 6 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi30_webinar6"
                           readonly="" value="https://www.gofounders.net/founderwebinar/webinar6/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi30_webinar6">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModa_webl52_webinar629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif"
                           alt="">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">7. My Webinar 7 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi30_webinar7"
                           readonly="" value="https://www.gofounders.net/founderwebinar/webinar7/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi30_webinar7">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModa_webl52_webinar729980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                  </div>
                  <div class="row trim-row">
                     <!--<div class="col-lg-2" style="">
                        </div>-->
                     <!--   <div class="col-lg-12" style="">
                        <p><br><br><br></p>
                        
                        <center>
                        
                            <h3 style="color:#fff;">Congratulations to all current active Founders. </h3>
                        
                        </center>
                        
                        </div>-->
                     <!--    <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 36px; color: #ffcd17;font-size: 14px;">Enjoy watching this Video:</label>
                          </div>
                        
                        <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1; padding: 26px 18px 20px 18px;">
                            <input type="text" class="form-control form-control-alternative mi-video" readonly=""value="https://www.gofounders.net/uploads/Founders-List.mp4" id="myInput16">
                            </div>
                               <div class="col-lg-4 newbg_grand" style="border: 1px solid #315cd5;padding: 0;">
                                 <center><button class="btn btn-primary" data-clipboard-action="copy" data-clipboard-target=".mi-video"style=" margin-top: 25px; margin-bottom: 25px;">
                                      Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png" style="margin: 0 4px;"></button>
                                      </center>
                                          </div>-->
                     <!-------------------------------------------->
                     <!--           <div class="col-lg-2" style="">
                        </div>-->
                     <!--    <div class="col-lg-8 mt-3" style="">
                        <marquee>
                        
                            <h4 style="margin-left: 14%;
                        
                                                                            color: white;">*Not intended for publishing or
                        
                                promotions only
                        
                                for entertainment.This has no effect on your actual account or structure.</h4>
                        
                        </marquee>
                        
                        </div>-->
                     <!-- <div class="col-lg-2" style="">
                        </div>-->
                     <!-------------------------------------------->
                     <!---------------------TrimUrl---------------------------------------------->
                     <div class="col-lg-4 newbg_grand mt-5" style="border: 3px solid #ffcf1d !important;">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.png" class="new">
                        <label class="form-control-label" for="input-username"
                           style="margin-top: 36px; color: #ffcd17;font-size: 14px;">TrimURL</label>
                     </div>
                     <div class="col-lg-8 newbg_grand mt-5"
                        style="border: 3px solid #ffcf1d !important;padding: 0;">
                        <center><a href="https://www.trimurl.co/gofounders/
                           Mjk5ODA=           " class="btn btn-primary" style="    padding: 1rem 1rem 1rem 1rem;
                           margin-top: 25px;
                           margin-bottom: 25px;
                           width: 50%;" target=_blank>
                           Trim Your Link</a>
                        </center>
                     </div>
                     <!--------------------------------------------------------------->
                     <!--<div class="col-lg-2" style="">
                        </div>
                        
                        <div class="col-lg-8 mt-3" style="">
                        
                        
                        
                            <marquee>
                        
                                <h4 style="margin-left: 14%;
                        
                                                                                color: white;">*Not intended for publishing or
                        
                                    promotions only
                        
                                    for entertainment.This has no effect on your actual account or structure.</h4>
                        
                            </marquee>
                        
                        </div>-->
                     <div class="col-lg-2" style="">
                     </div>
                     <div class="col-lg-12">
                        <div class="row">
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">1 </div>
                                 <a href="https://www.onpassive.com/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;     padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="  color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM</span>
                                 </a>
                              </center>
                           </div>
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">2 </div>
                                 <a href="https://www.onpassive.com/1/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="  color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM/1</span>
                                 </a>
                              </center>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="presentation">
               <div class="card-body user_link_wrapper">
                  <div class="row">
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">1. My Presentation 1 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi6" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation1/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi6">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">2. My Presentation 2 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi7" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation2/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi7">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">3. My Presentation 3 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi8" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation3/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi8">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">4. My Presentation 4 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi9" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation4/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi9">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">5. My Presentation 5 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi10" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation5/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi10">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal3429980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <svg aria-hidden="true" data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">6. My Presentation 6 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi16" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation6/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi16">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">7. My Presentation 7 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi19" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation7/29980"
                           id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi19">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">8. My Presentation 8 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi22" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation8/29980"
                           id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi22">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">9. My Presentation 9 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi26" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation9/29980"
                           id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi26">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal4929980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">10. My Presentation 10 Link :</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mp29" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation10/29980"
                           id="myInput17">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mp29">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">11. My presentation 11 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi32" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation11/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi32">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">12. My presentation 12 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi33" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation12/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi33">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal5629980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">13. My Presentation 13 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi42" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation13/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi42">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6529980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">14. My Presentation 14 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi44" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation14/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi44">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6729980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">15. My Presentation 15 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi45" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation15/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi45">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6829980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">16. My Presentation 16 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi46" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation16/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi46">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal6929980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">17. My Presentation 17 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi47" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation17/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi47">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal7029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">18. My Presentation 18 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi57" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation18/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi57">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal8029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">19. My Presentation 19 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi_pres57" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation19/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi_pres57">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal_pres8029980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!--<img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif" alt="">-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">20. My Presentation 20 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi_pres58" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation20/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi_pres58">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal_pres8129980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <!-- <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.gif" class="new-gif" alt="">-->
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">21. My Presentation 21 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi_pres59" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation21/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi_pres59">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal_pres8229980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                     <div class="col-lg-4 firstgap newbg_grand new-gif" style="
                        border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 26px;  margin-bottom: 26px;
                           color: #ffcd17;
                           font-size: 15px;">22. My Presentation 22 Link:</label>
                     </div>
                     <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;
                        padding: 26px 18px 20px 18px;">
                        <input type="text" class="form-control form-control-alternative mi_pres60" readonly=""
                           value="https://www.gofounders.net/my_presentation/presentation22/29980"
                           id="myInput15">
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="    border: 1px solid #315cd5;
                        padding: 26px 0 ;">
                        <center><button class="btn btn-primary" data-clipboard-action="copy"
                           data-clipboard-target=".mi_pres60">
                           Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png"
                              style="margin: 0 4px;">
                           </button>
                        </center>
                     </div>
                     <div class="col-lg-2 newbg_grand col-6" style="padding: 26px 0 ;    border: 1px solid #315cd5;
                        ">
                        <center>
                           <a href="#" data-toggle="modal" data-target="#myModal_pres8329980">
                              <button class="btn btn-primary" style=" margin-top: 0px;">
                                 Share Link
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <!-- <i class="fas fa-share-square"></i> -->
                                 <!-- <img src="https://img.icons8.com/material/16/ffffff/share.png"> -->
                                 <!--<i class="fas fa-share-alt"></i>-->
                                 <svg aria-hidden="true"
                                    data-prefix="fas" data-icon="share-alt"
                                    class="svg-inline--fa fa-share-alt fa-w-14" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px"
                                    height="16px">
                                    <path fill="currentColor"
                                       d="M352 320c-22.608 0-43.387 7.819-59.79 20.895l-102.486-64.054a96.551 96.551 0 0 0 0-41.683l102.486-64.054C308.613 184.181 329.392 192 352 192c53.019 0 96-42.981 96-96S405.019 0 352 0s-96 42.981-96 96c0 7.158.79 14.13 2.276 20.841L155.79 180.895C139.387 167.819 118.608 160 96 160c-53.019 0-96 42.981-96 96s42.981 96 96 96c22.608 0 43.387-7.819 59.79-20.895l102.486 64.054A96.301 96.301 0 0 0 256 416c0 53.019 42.981 96 96 96s96-42.981 96-96-42.981-96-96-96z">
                                    </path>
                                 </svg>
                              </button>
                           </a>
                        </center>
                     </div>
                  </div>
                  <div class="row trim-row">
                     <!--<div class="col-lg-2" style="">
                        </div>-->
                     <!--   <div class="col-lg-12" style="">
                        <p><br><br><br></p>
                        
                        <center>
                        
                            <h3 style="color:#fff;">Congratulations to all current active Founders. </h3>
                        
                        </center>
                        
                        </div>-->
                     <!--    <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1;">
                        <label class="form-control-label" for="input-username" style="margin-top: 36px; color: #ffcd17;font-size: 14px;">Enjoy watching this Video:</label>
                          </div>
                        
                        <div class="col-lg-4 newbg_grand" style="border: 1px solid #1b4ad1; padding: 26px 18px 20px 18px;">
                            <input type="text" class="form-control form-control-alternative mi-video" readonly=""value="https://www.gofounders.net/uploads/Founders-List.mp4" id="myInput16">
                            </div>
                               <div class="col-lg-4 newbg_grand" style="border: 1px solid #315cd5;padding: 0;">
                                 <center><button class="btn btn-primary" data-clipboard-action="copy" data-clipboard-target=".mi-video"style=" margin-top: 25px; margin-bottom: 25px;">
                                      Copy Link <img src="https://img.icons8.com/ios/14/000000/copy-filled.png" style="margin: 0 4px;"></button>
                                      </center>
                                          </div>-->
                     <!-------------------------------------------->
                     <!--           <div class="col-lg-2" style="">
                        </div>-->
                     <!--    <div class="col-lg-8 mt-3" style="">
                        <marquee>
                        
                            <h4 style="margin-left: 14%;
                        
                                                                            color: white;">*Not intended for publishing or
                        
                                promotions only
                        
                                for entertainment.This has no effect on your actual account or structure.</h4>
                        
                        </marquee>
                        
                        </div>-->
                     <!-- <div class="col-lg-2" style="">
                        </div>-->
                     <!-------------------------------------------->
                     <!---------------------TrimUrl---------------------------------------------->
                     <div class="col-lg-4 newbg_grand mt-5" style="border: 3px solid #ffcf1d !important;">
                        <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/new.png" class="new">
                        <label class="form-control-label" for="input-username"
                           style="margin-top: 36px; color: #ffcd17;font-size: 14px;">TrimURL</label>
                     </div>
                     <div class="col-lg-8 newbg_grand mt-5"
                        style="border: 3px solid #ffcf1d !important;padding: 0;">
                        <center><a href="https://www.trimurl.co/gofounders/
                           Mjk5ODA=           " class="btn btn-primary" style="    padding: 1rem 1rem 1rem 1rem;
                           margin-top: 25px;
                           margin-bottom: 25px;
                           width: 50%;" target=_blank>
                           Trim Your Link</a>
                        </center>
                     </div>
                     <!--------------------------------------------------------------->
                     <!--<div class="col-lg-2" style="">
                        </div>
                        
                        <div class="col-lg-8 mt-3" style="">
                        
                        
                        
                            <marquee>
                        
                                <h4 style="margin-left: 14%;
                        
                                                                                color: white;">*Not intended for publishing or
                        
                                    promotions only
                        
                                    for entertainment.This has no effect on your actual account or structure.</h4>
                        
                            </marquee>
                        
                        </div>-->
                     <div class="col-lg-2" style="">
                     </div>
                     <div class="col-lg-12">
                        <div class="row">
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">1 </div>
                                 <a href="https://www.onpassive.com/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;     padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM</span>
                                 </a>
                              </center>
                           </div>
                           <div class="col-lg-6">
                              <p><br></p>
                              <p><br></p>
                              <center>
                                 <div class="bullet-icon">2 </div>
                                 <a href="https://www.onpassive.com/1/" target="_blank"
                                    class="btn btn-primary passivelogo"
                                    style="margin: 0 auto;padding-bottom: 15px;"><img
                                    src="https://d1iy5wifs53qnq.cloudfront.net/assests/img/onpassive-logo.png"
                                    style="width:50%;">
                                 <br><span
                                    style="  color: #3167b4;font-weight: 700;font-size: 1rem;">WWW.ONPASSIVE.COM/1</span>
                                 </a>
                              </center>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script src="https://www.gofounders.net/assests/js/clipboard.min.js"></script>
      <script>
         var clipboard = new ClipboardJS('.btn');
         
         
         
         clipboard.on('success', function (e) {
         
             console.log(e);
         
         });
         
         
         
         clipboard.on('error', function (e) {
         
             console.log(e);
         
         });
         
      </script>
      <!-- Modal -->
      <div class="modal fade" id="myModal129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Here you go" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor1"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

              <p>Per your request, here is your personalized invitation</p> 

          <p>Please check it out right away and get back with me </p>

          <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>


            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

              <p> <strong>8515928306</strong></p>





                                </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor2"
                                 placeholder="Enter your message" required readonly="">

        <p>Saikat Bose here with you</p>

        <p>Per your request, here is your personalized invitation</p> 

        <p>Please check it out right away and get back with me </p>

        <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite2/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
        Let me know what you think? 

        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>

                                                                                        </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite2/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor3"
                                 placeholder="Enter your message" required readonly="">

        <p>Saikat Bose here with you</p>

        <p>Per your request, here is your personalized invitation</p> 

        <p>Please check it out right away and get back with me </p>

        <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite3/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
        Let me know what you think? 

        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>

                                                                                                            </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite3/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor4"
                                 placeholder="Enter your message" required readonly="">

                <p>Saikat Bose here with you</p>

                <p>Per your request, here is your personalized invitation</p> 

                <p>Please check it out right away and get back with me </p>

                <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite4/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                Let me know what you think? 

                <p> <strong>Saikat Bose</strong></p>

                <p><strong>saikat@inventiotechnologies.com</strong></p>

                <p> <strong>8515928306</strong></p>

                                                                                                                    </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite4/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor5"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>
 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite5/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>


            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

                                                                                                                </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite5/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor6"
                                 placeholder="Enter your message" required readonly="">

        <p>Saikat Bose here with you</p>

        <p>Per your request, here is your personalized invitation</p> 

        <p>Please check it out right away and get back with me </p>

        <p>



 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite6/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
        Let me know what you think? 

        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>

                                                                                                            </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite6/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your direct registration link" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor7"
                                 placeholder="Enter your message" required readonly="">

        <p>Hello!</p>

        <p>I would like to invite you to claim your position.</p>

        <p>Here is the direct registration link for you -  &nbsp; <a href="https://www.gofounders.net/users/registration/29980">Click Here</a></p> 



        <p>You can get back to me anytime.</p>



        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>



      </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/users/registration/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal829980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor8"
                                 placeholder="Enter your message" required readonly="">

              <p>Saikat Bose here with you</p>

              <p>Per your request, here is your personalized invitation</p> 

              <p>Please check it out right away and get back with me </p>

              <p>



 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
              Let me know what you think? 

              <p> <strong>Saikat Bose</strong></p>

              <p><strong>saikat@inventiotechnologies.com</strong></p>

              <p> <strong>8515928306</strong></p>

                                                                                                                  </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal929980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor9"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation2/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>


            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation2/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal1029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor10"
                                 placeholder="Enter your message" required readonly="">

        <p>Saikat Bose here with you</p>

        <p>Per your request, here is your personalized invitation</p> 

        <p>Please check it out right away and get back with me </p>

        <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation3/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
        Let me know what you think? 

        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>

      </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation3/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal1129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor11"
                                 placeholder="Enter your message" required readonly="">

          <p>Saikat Bose here with you</p>

          <p>Per your request, here is your personalized invitation</p> 

          <p>Please check it out right away and get back with me </p>

          <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation4/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
          Let me know what you think? 

          <p> <strong>Saikat Bose</strong></p>

          <p><strong>saikat@inventiotechnologies.com</strong></p>

          <p> <strong>8515928306</strong></p>

        </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation4/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal1229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor12"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation5/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>

            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation5/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal1329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor13"
                                 placeholder="Enter your message" required readonly="">

<p>Saikat Bose here with you</p>

<p>Per your request, here is your personalized invitation</p> 

<p>Please check it out right away and get back with me </p>

<p>


  <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/webinar/29980" 
                                 >
                            Click Here
                          </a>


</p><br>

Let me know what you think? 

<p> <strong>Saikat Bose</strong></p>

<p><strong>saikat@inventiotechnologies.com</strong></p>

<p> <strong>8515928306</strong></p>

</textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderwebinar/webinar/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal1429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor14"
                                 placeholder="Enter your message" required readonly="">

  <p>Saikat Bose here with you</p>

  <p>Per your request, here is your personalized invitation</p> 

  <p>Please check it out right away and get back with me </p>

  <p>
  
    <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/webinar2/29980" 
                                 >
                            Click Here
                          </a>
  </p><br>

  Let me know what you think? 

  <p> <strong>Saikat Bose</strong></p>

  <p><strong>saikat@inventiotechnologies.com</strong></p>

  <p> <strong>8515928306</strong></p>

</textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderwebinar/webinar2/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="myModal1529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor15"
                                 placeholder="Enter your message" required readonly="">

    <p>Saikat Bose here with you</p>

    <p>Per your request, here is your personalized invitation</p> 

    <p>Please check it out right away and get back with me </p>

    <p>
    
    
     <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/webinar3/29980" 
                                 >
                            Click Here
                          </a>
    
    </p><br>

    Let me know what you think? 

    <p> <strong>Saikat Bose</strong></p>

    <p><strong>saikat@inventiotechnologies.com</strong></p>

    <p> <strong>8515928306</strong></p>

  </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderwebinar/webinar3/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor16"
                                 placeholder="Enter your message" required readonly="">

<p>Saikat Bose here with you</p>

<p>Per your request, here is your personalized invitation</p> 

<p>Please check it out right away and get back with me </p>

<p>

  <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation1/29980" 
                                 >
                            Click Here
                          </a>
</p><br>

Let me know what you think? 

<p> <strong>Saikat Bose</strong></p>

<p><strong>saikat@inventiotechnologies.com</strong></p>

<p> <strong>8515928306</strong></p>

</textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation1/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor17"
                                 placeholder="Enter your message" required readonly="">

        <p>Saikat Bose here with you</p>

        <p>Per your request, here is your personalized invitation</p> 

        <p>Please check it out right away and get back with me </p>

        <p>
         <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation2/29980" 
                                 >
                            Click Here
                          </a>
        
        
        
        </p><br>

        Let me know what you think? 

        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>

      </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation2/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor18"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>
            
             <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation3/29980" 
                                 >
                            Click Here
                          </a>
            </p><br>

            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation3/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor19"
                                 placeholder="Enter your message" required readonly="">

        <p>Saikat Bose here with you</p>

        <p>Per your request, here is your personalized invitation</p> 

        <p>Please check it out right away and get back with me </p>

        <p>
             <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation4/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
        Let me know what you think? 

        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>

      </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation4/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor20"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>
             <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation5/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation5/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor21"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>
     <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite7/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite7/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor36"
                                 placeholder="Enter your message" required readonly="">

          <p>Saikat Bose here with you</p>

          <p>Per your request, here is your personalized invitation</p> 

          <p>Please check it out right away and get back with me </p>

          <p>
 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite8/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
          Let me know what you think? 

          <p> <strong>Saikat Bose</strong></p>

          <p><strong>saikat@inventiotechnologies.com</strong></p>

          <p> <strong>8515928306</strong></p>

        </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite8/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor37"
                                 placeholder="Enter your message" required readonly="">

              <p>Saikat Bose here with you</p>

              <p>Per your request, here is your personalized invitation</p> 

              <p>Please check it out right away and get back with me </p>

              <p>
 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite9/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
              Let me know what you think? 

              <p> <strong>Saikat Bose</strong></p>

              <p><strong>saikat@inventiotechnologies.com</strong></p>

              <p> <strong>8515928306</strong></p>

            </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite9/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3829980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor38"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation6/29980" 
                                 >
                            Click Here
                          </a>
</p><br>

            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation6/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal3929980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor39"
                                 placeholder="Enter your message" required readonly="">

      <p>Saikat Bose here with you</p>

      <p>Per your request, here is your personalized invitation</p> 

      <p>Please check it out right away and get back with me </p>

      <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation7/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
      Let me know what you think? 

      <p> <strong>Saikat Bose</strong></p>

      <p><strong>saikat@inventiotechnologies.com</strong></p>

      <p> <strong>8515928306</strong></p>

    </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation7/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor40"
                                 placeholder="Enter your message" required readonly="">

            <p>Saikat Bose here with you</p>

            <p>Per your request, here is your personalized invitation</p> 

            <p>Please check it out right away and get back with me </p>

            <p>
 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation6/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
            Let me know what you think? 

            <p> <strong>Saikat Bose</strong></p>

            <p><strong>saikat@inventiotechnologies.com</strong></p>

            <p> <strong>8515928306</strong></p>

          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation6/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor41"
                                 placeholder="Enter your message" required readonly="">

        <p>Saikat Bose here with you</p>

        <p>Per your request, here is your personalized invitation</p> 

        <p>Please check it out right away and get back with me </p>

        <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation8/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
        Let me know what you think? 

        <p> <strong>Saikat Bose</strong></p>

        <p><strong>saikat@inventiotechnologies.com</strong></p>

        <p> <strong>8515928306</strong></p>

      </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation8/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor42"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation7/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation7/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor43"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                         

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/invite10/29980" 
                                 >
                            Click Here
                          </a>

                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite10/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor44"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>



 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation9/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation9/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor45"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation8/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation8/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor46"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation10/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation10/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor47"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                         
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite11/29980" 
                                 >
                            Click Here
                          </a>


                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite11/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4829980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor48"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite12/29980" 
                                 >
                            Click Here
                          </a>

                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite12/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal4929980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor49"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation9/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation9/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor50"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite13/29980" 
                                 >
                            Click Here
                          </a>
                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite13/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor51"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/webinar4/29980" 
                                 >
                            Click Here
                          </a>
                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderwebinar/webinar4/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModa_webl5229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor51"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/webinar5/29980" 
                                 >
                            Click Here
                          </a>
                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderwebinar/webinar5/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModa_webl52_webinar629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor51"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/webinar6/29980" 
                                 >
                            Click Here
                          </a>
                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderwebinar/webinar6/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModa_webl52_webinar729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor51"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderwebinar/webinar7/29980" 
                                 >
                            Click Here
                          </a>
                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderwebinar/webinar7/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor52"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation10/29980" 
                                 >
                            Click Here
                          </a>

                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation10/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor53"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation11/29980" 
                                 >
                            Click Here
                          </a>

                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation11/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor54"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation12/29980" 
                                 >
                            Click Here
                          </a>

                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation12/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor55"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation11/29980" 
                                 >
                            Click Here
                          </a>


                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation11/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation12/29980" 
                                 >
                            Click Here
                          </a>



                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation12/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite14/29980" 
                                 >
                            Click Here
                          </a>

                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite14/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5829980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite15/29980" 
                                 >
                            Click Here
                          </a>


                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite15/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal5929980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite16/29980" 
                                 >
                            Click Here
                          </a>

                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite16/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite17/29980" 
                                 >
                            Click Here
                          </a>

                         </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite17/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                         

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite18/29980" 
                                 >
                            Click Here
                          </a>


                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite18/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          

                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite19/29980" 
                                 >
                            Click Here
                          </a>


                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite19/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                         
                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite20/29980" 
                                 >
                            Click Here
                          </a>

                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite20/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>Link:  &nbsp; <a href="https://www.gofounders.net/founderinvite/invite21/29980">https://www.gofounders.net/founderinvite/invite21/29980</a><p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite21/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation13/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation13/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation13/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation13/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation14/29980" 
                                 >
                            Click Here
                          </a>
</p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation14/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6829980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation15/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation15/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal6929980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation16/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation16/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation17/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation17/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal8029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation18/29980" 
                                 >
                            Click Here
                          </a>
              <p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation18/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal_pres8029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation19/29980" 
                                 >
                            Click Here
                          </a>
              <p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation19/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal_pres8129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation20/29980" 
                                 >
                            Click Here
                          </a>
              <p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation20/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal_pres8229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation21/29980" 
                                 >
                            Click Here
                          </a>
              <p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation21/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal_pres8329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/my_presentation/presentation22/29980" 
                                 >
                            Click Here
                          </a>
              <p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/my_presentation/presentation22/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation14/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation14/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>


 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation15/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation15/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation16/29980" 
                                 >
                            Click Here
                          </a>

                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation16/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          

                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite21/29980" 
                                 >
                            Click Here
                          </a>

                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite21/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                        
                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite22/29980" 
                                 >
                            Click Here
                          </a>


                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite22/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

 <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation17/29980" 
                                 >
                            Click Here
                          </a>
              </p><br>
                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation17/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                         

                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite23/29980" 
                                 >
                            Click Here
                          </a>

                        </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite23/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal17729980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite24/29980" 
                                 >
                            Click Here
                          </a>

                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite24/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal17829980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                         

                              <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite25/29980" 
                                 >
                            Click Here
                          </a>

                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite25/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal17929980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                         

                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite26/29980" 
                                 >
                            Click Here
                          </a>

                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite26/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal18029980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite27/29980" 
                                 >
                            Click Here
                          </a>
                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite27/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal18129980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>  <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite28/29980" 
                                 >
                            Click Here
                          </a><p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite28/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal18229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>  
                          <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite29/29980" 
                                 >
                            Click Here
                          </a>
                          </p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite29/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal18329980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>  <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite30/29980" 
                                 >
                            Click Here
                          </a></p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite30/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal18629980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>  <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite31/29980" 
                                 >
                            Click Here
                          </a><p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite31/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal186_invite3229980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>  <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite32/29980" 
                                 >
                            Click Here
                          </a><p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite32/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal18529980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation20/29980" 
                                 >
                            Click Here
                          </a>



                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation20/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal186_invitation29980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation21/29980" 
                                 >
                            Click Here
                          </a>



                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation21/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal187_invitation29980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation22/29980" 
                                 >
                            Click Here
                          </a>



                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation22/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal188_invitation29980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                          

                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation23/29980" 
                                 >
                            Click Here
                          </a>



                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation23/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal18429980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>  <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation19/29980" 
                                 >
                            Click Here
                          </a>


                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation19/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7829980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>
                            <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvite/invite25/29980" 
                                 >
                            Click Here
                          </a>


                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvite/invite25/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <div class="modal fade" id="myModal7929980" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-body">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <div class="">
                     <form method="post" action="#">
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="email" placeholder="Send email to"
                                 name="email" value="" required="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-book text-info"></i></div>
                              </div>
                              <input type="text" class="form-control" id="sub" placeholder="Subject"
                                 value="Your invitation is here" name="sub" required="" readonly="">
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                 <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                              </div>
                              <textarea name="msg" class="form-control ck-editor" id="editor56"
                                 placeholder="Enter your message" required readonly="">

                         <p>Saikat Bose here with you</p>

                         <p>Per your request, here is your personalized invitation</p> 

                         <p>Please check it out right away and get back with me </p>

                         <p>

                           <a style="text-decoration: none;background: #fb8b0d;padding: 9px 30px;display: inline-block;color: #fff;border-radius: 4px;
                                 line-height: 23px;" class="btn btn-primary" href="https://www.gofounders.net/founderinvitation/invitation18/29980" 
                                 >
                            Click Here
                          </a>

                          <p><br>

                         Let me know what you think? 

                         <p> <strong>Saikat Bose</strong></p>

                         <p><strong>saikat@inventiotechnologies.com</strong></p>

                         <p> <strong>8515928306</strong></p>

                          </textarea>
                              <input type="hidden" name="link"
                                 value="https://www.gofounders.net/founderinvitation/invitation18/29980">
                           </div>
                        </div>
                        <div class="text-center">
                           <input type="submit" value="Send" name="mylinkbtn"
                              class="btn btn-info btn-block rounded-0 py-2">
                        </div>
                  </div>
                  </form>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <input type="hidden" name="userid" id="userid" value="29980">
      <input type="hidden" id="show" name="" value="">
      <input type="hidden" id="show1" name="" value="">
      <input type="hidden" id="show2" name="" value="">
      <input type="hidden" id="show3" name="" value="">
      <script type="text/javascript">
         CKEDITOR.replaceClass = 'ck-editor';
         
         
         
         // CKEDITOR.replace('editor1');
         
         // CKEDITOR.replace('editor2');
         
         // CKEDITOR.replace('editor3');
         
         // CKEDITOR.replace('editor4');
         
         // CKEDITOR.replace('editor5');
         
         // CKEDITOR.replace('editor6');
         
         // CKEDITOR.replace('editor7');
         
         // CKEDITOR.replace('editor8');
         
         // CKEDITOR.replace('editor9');
         
         // CKEDITOR.replace('editor10');
         
         // CKEDITOR.replace('editor11');
         
         // CKEDITOR.replace('editor12');
         
         // CKEDITOR.replace('editor13');
         
         // CKEDITOR.replace('editor14');
         
         // CKEDITOR.replace('editor15');  
         
         // CKEDITOR.replace('editor30');
         
         // CKEDITOR.replace('editor31');
         
         // CKEDITOR.replace('editor32');
         
         // CKEDITOR.replace('editor33');
         
         // CKEDITOR.replace('editor34');
         
         // CKEDITOR.replace('editor35');
         
         // CKEDITOR.replace('editor36');
         
         // CKEDITOR.replace('editor37');
         
         // CKEDITOR.replace('editor38');
         
         // CKEDITOR.replace('editor39');
         
         // CKEDITOR.replace('editor40');
         
         // CKEDITOR.replace('editor41');
         
         // CKEDITOR.replace('editor42');
         
         // CKEDITOR.replace('editor43');
         
         // CKEDITOR.replace('editor44');
         
         // CKEDITOR.replace('editor45');
         
         // CKEDITOR.replace('editor46');
         
         // CKEDITOR.replace('editor47');
         
         // CKEDITOR.replace('editor48');
         
         // CKEDITOR.replace('editor49');
         
         // CKEDITOR.replace('editor50');
         
         // CKEDITOR.replace('editor51');
         
         // CKEDITOR.replace('editor52');
         
         // CKEDITOR.replace('editor53');
         
         // CKEDITOR.replace('editor54');
         
         // CKEDITOR.replace('editor55');
         
         // CKEDITOR.replace('editor56');
         
         
         
         
         
         
      </script>
      <script>
         function myFunction1() {
         
             var copyText = document.getElementById("myInput1");
         
             // var copyText= document.getElementById("copyInput1");
         
             // var val=copyText.value();
         
             // alert (val);
         
             //  var   copyText="https://www.gofounders.net/founderinvite/invite/7364";
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
         
         
             //   alert(val);
         
         
         
             var tooltip = document.getElementById("myTooltip1");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc1() {
         
             var tooltip = document.getElementById("myTooltip1");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction2() {
         
             var copyText = document.getElementById("myInput2");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip2");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc2() {
         
             var tooltip = document.getElementById("myTooltip2");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction3() {
         
             var copyText = document.getElementById("myInput3");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip3");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc3() {
         
             var tooltip = document.getElementById("myTooltip3");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction4() {
         
             var copyText = document.getElementById("myInput4");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip4");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc4() {
         
             var tooltip = document.getElementById("myTooltip4");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction5() {
         
             var copyText = document.getElementById("myInput5");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip5");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc5() {
         
             var tooltip = document.getElementById("myTooltip5");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction6() {
         
             var copyText = document.getElementById("myInput6");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip6");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc6() {
         
             var tooltip = document.getElementById("myTooltip6");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction7() {
         
             var copyText = document.getElementById("myInput7");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip7");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc7() {
         
             var tooltip = document.getElementById("myTooltip7");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction8() {
         
             var copyText = document.getElementById("myInput8");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip8");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc8() {
         
             var tooltip = document.getElementById("myTooltip8");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction9() {
         
             var copyText = document.getElementById("myInput9");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip9");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc9() {
         
             var tooltip = document.getElementById("myTooltip9");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction10() {
         
             var copyText = document.getElementById("myInput10");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip10");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc10() {
         
             var tooltip = document.getElementById("myTooltip10");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction11() {
         
             var copyText = document.getElementById("myInput11");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip11");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc11() {
         
             var tooltip = document.getElementById("myTooltip11");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction12() {
         
             var copyText = document.getElementById("myInput12");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip12");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc12() {
         
             var tooltip = document.getElementById("myTooltip12");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction13() {
         
             var copyText = document.getElementById("myInput13");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip13");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc13() {
         
             var tooltip = document.getElementById("myTooltip13");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction14() {
         
             var copyText = document.getElementById("myInput14");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip14");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc14() {
         
             var tooltip = document.getElementById("myTooltip14");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction15() {
         
             var copyText = document.getElementById("myInput15");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip15");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc15() {
         
             var tooltip = document.getElementById("myTooltip15");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction16() {
         
             var copyText = document.getElementById("myInput16");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip16");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc16() {
         
             var tooltip = document.getElementById("myTooltip16");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
      <script>
         function myFunction17() {
         
             var copyText = document.getElementById("myInput17");
         
             copyText.select();
         
             document.execCommand("copy");
         
         
         
             var tooltip = document.getElementById("myTooltip17");
         
             tooltip.innerHTML = "Copied: " + copyText.value;
         
         }
         
         
         
         function outFunc17() {
         
             var tooltip = document.getElementById("myTooltip17");
         
             tooltip.innerHTML = "Copy to clipboard";
         
         }
         
      </script>
    
      <script src="https://www.gofounders.net/assests/js/custom-file-input.js"></script>
      <!-- Footer -->
      <footer class="footer col-12">
         <div class="row align-items-center justify-content-xl-between">
            <div class="col-xl-12">
               <p style="text-align:center;" class="ftn-txt">&copy; All Rights Reserved GoFounders 2018-2028</p>
            </div>
            <input type="hidden" name="userid" id="userid" value="29980">
         </div>
      </footer>
      </div>
      </div>
      </div>
   </body>
   <script src="https://www.gofounders.net/assests/js/custom-file-input.js"></script>
</html>
