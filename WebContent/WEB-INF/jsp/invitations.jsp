<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <title> Invitees | GoFounders</title>
      <link rel="icon" href="https://d1iy5wifs53qnq.cloudfront.net/assests/img/favgofounder.png" type="image/png" sizes="16x16">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
      <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Oswald:400,500,600,700&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
      <link href="https://www.gofounders.net/assests/css/video-js2.css" rel="stylesheet" type="text/css" >
      <link type="text/css" href="https://www.gofounders.net/assests/css/dataTables.bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="https://www.gofounders.net/assests/css/jquery-ui.css">
      <link href="https://www.gofounders.net/assests/css/pagination.css" rel="stylesheet" type="text/css">
      <link href="https://www.gofounders.net/assests/css/nucleo.css" rel="stylesheet">
      <!-- <link href="assests/all.min.css" rel="stylesheet"> -->
      <!-- Argon CSS -->
      <link type="text/css" href="https://www.gofounders.net/assests/css/gofounders2.css" rel="stylesheet">
      <!--all inline css moved file link here-->
      <link href="https://www.gofounders.net/assests/css/inline5.css" rel="stylesheet" type="text/css">
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
      <!-- <link href="https://www.gofounders.net/assests/css/errormsg.css" rel="stylesheet" type="text/css">
         -->
      <link href="https://www.gofounders.net/assests/css/responsive2.css" rel="stylesheet" type="text/css">
      <script src="https://www.gofounders.net/assests/js/jquery.min.js"></script>
      <script async src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
      <script async src="https://www.gofounders.net/assests/js/argon.js?v=1.0.0"></script>
      <script src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/ckeditor.js"></script>
      <script async src="https://www.gofounders.net/assests/js/video.min.js"></script>
      <script async src="https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/emojione/libs/emojione/emojione.min.js"></script>
      <script async type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
      <!-- Include Date Range Picker -->
      <script async type="text/javascript" src="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
      <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css"/>
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
   <body  class="invitees user_body">
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
         .community-notification-modal .modal-body{
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
         transform:translateY(0rem);
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
         .nav-item.dropdown{
         display:block;
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
         .icon-right i{
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
         .sidebar::-webkit-scrollbar-track
         {
         -webkit-box-shadow: inset 0 0 0px #fcbb20;
         background-color: #fcbb20;
         }
         .sidebar::-webkit-scrollbar
         {
         width: 2px;
         background-color: #F5F5F5;
         }
         .sidebar::-webkit-scrollbar-thumb
         {
         background-color: #11c09e;
         /* border: 2px solid #555555; */
         }
         .sidebar{
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
      <!-- <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light" id="sidenav-main"> -->
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
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/users/dashboard">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/1.png" alt="" />
                     </span>
                     <span class="title">
                     Dashboard
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/user_profile">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/3.png" alt="" />
                     </span>
                     <span class="title">
                     My Profile
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/announcements">
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
                     <a class="sidebar-link  "
                        href="https://www.gofounders.net/community">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/16.png" alt="" />
                     </span>
                     <span class="title">
                     Community
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/webinars">
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
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/user_link">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/9.png" alt="" />
                     </span>
                     <span class="title">
                     My Links
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/download">
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
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/invitations">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/5.png" alt="" />
                     </span>
                     <span class="title">
                     My Invitations
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link activenow"
                        href="https://www.gofounders.net/invitees/index/?info=10">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/6.png" alt="" />
                     </span>
                     <span class="title">
                     My Invitees
                     </span>
                     <span style="color:rgb(255, 205, 23);">
                     &nbsp;<b>(6)</b></span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/member/index/?info=10">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/7.png" alt="" />
                     </span>
                     <span class="title">
                     My Team
                     </span>
                     <span style="color:rgb(255, 205, 23);">
                     &nbsp;<b>(6)</b></span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/alfounders">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/8.png" alt="" />
                     </span>
                     <span class="title">
                     Team Summary
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/marketing">
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
                     <a class="sidebar-link  "
                        href="https://www.gofounders.net/tutorials">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/12.png" alt="" />
                     </span>
                     <span class="title">
                     Tutorials
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/testimonials">
                     <span class="icon-holder">
                     <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/15.png" alt="" />
                     </span>
                     <span class="title">
                     Testimonials
                     </span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/faq">
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
                     <a class="sidebar-link "
                        href="https://www.gofounders.net/support">
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
                     <a class="h4 mb-0 text-white text-uppercase main-title  d-flex">invitees</a>
                     <ul class="navbar-nav align-items-center ml-md-auto" id="ul_community_head_id">
                        <li class="nav-item dropdown community-list-item">
                           <span class="total-notifiocation" id="com_count_total_not">0</span>
                           <a class="nav-link position-relative notification-icon community-notifiocation" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="fa fa-users"></i>
                           <span class="kt-pulse__ring"></span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0 overflow-hidden">
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
                           </div>
                        </li>
                     </ul>
                     <ul class="navbar-nav align-items-center ml-md-auto n-menu" style="margin-left: 20px !important;">
                        <li class="nav-item dropdown">
                           <span class="total-notifiocation totalnoti"> 0  </span>
                           <a class="position-relative notification-icon" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="fa fa-bell"></i>
                           <span class="kt-pulse__ring"></span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0 overflow-hidden">
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary inviteesnoti">0</strong> notifications from <span>Invitees :</span></h6>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary inviteesnoti">0</strong> notifications from <span>Team :</span></h6>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary inviteesnoti">0</strong> notifications from <span>Pending Founders :</span></h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary inviteesnoti">0</strong> notifications from <span>Webinar Invitees :</span></h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                              <div class="notification-row">
                                 <div class="px-3 py-3">
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary">0</strong> notifications from <span>Webinar</span></h6>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary">0</strong> notifications from <span>Announcement</span></h6>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary">0</strong> notifications from <span>Download</span></h6>
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
                                    <h6 class="text-sm text-muted m-0">You have <strong class="text-primary">0</strong> notifications from <span>Marketing</span></h6>
                                 </div>
                                 <div class="list-group list-group-flush">
                                    <ul>
                                       <input type="hidden" name="" id="idslistmarketing" value=""> 
                                    </ul>
                                 </div>
                                 <hr>
                              </div>
                           </div>
                        </li>
                     </ul>
                     <!-- User -->
                     <ul class="navbar-nav align-items-center d-flex p-menu" >
                        <li class="nav-item dropdown">
                           <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                              <div class="media align-items-center">
                                 <!--<span class="avatar avatar-sm rounded-circle">-->
                                 <!--  <span class="avatar avatar-sm rounded-circle" id="profileImage1"></span>-->
                                 <!--</span>-->
                                 <span class="avatar avatar-sm rounded-circle avatar-bg" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/avtar1.png')">
                                    <!--<img src="https://www.gofounders.net/uploads/avtar1.png"
                                       width="50px" height="35px">-->
                                 </span>
                                 <div class="media-body ml-2">
                                    <span
                                       class="mb-0 text-sm  font-weight-bold">Tanmoy&nbsp;
                                    Paul</span>
                                 </div>
                              </div>
                           </a>
                           <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                              <div class=" dropdown-header noti-title">
                                 <h6 class="text-overflow m-0">Welcome!</h6>
                              </div>
                              <a href="#" class="dropdown-item">
                              <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/profle.png" alt="">
                              <span>My profile</span>
                              </a>
                              <div class="dropdown-divider"></div>
                              <a href="#" class="dropdown-item">
                              <img src="https://d1iy5wifs53qnq.cloudfront.net/assests/emoji/img/sign-out.png" alt="">
                              <span>Logout</span>
                              </a>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </nav>
            <style>
               .grnbtn{
               min-width:0;
               margin: 1% auto 0 auto;
               }
            </style>
            <style>
               .btn{
               width: 100%;
               white-space: normal;
               }    
            </style>
            <!-- Page content -->
            <div class="container mt-6">
               <!-- Table -->
               <div class="row">
                  <div class="col-12">
                     <div class="card shadow">
                        <div class="container mt-3" style="background:#fff">
                           <!-- Tab panes -->
                           <div class="tab-content  mb-3">
                              <center>
                              </center>
                              <center>
                              </center>
                              <div id="home" class="tab-pane active">
                                 <br>
                                 <div class="">
                                    <div class="clearfix"></div>
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                       <div class="row mb-5 invitations-row">
                                          <center><font color="red"></font></center>
                                          <div class="col-lg-6 col-md-6 col-sm-12">
                                             <a href="sentinvitaion.html" class="btn btn-primary btn-lg btn-block">
                                                My Sent Invitations 
                                                <span>
                                                   <svg aria-hidden="true" data-prefix="fas" data-icon="envelope-open-text" class="svg-inline--fa fa-envelope-open-text fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="16px" height="16px">
                                                      <path fill="currentColor" d="M176 216h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16c0 8.84 7.16 16 16 16zm-16 80c0 8.84 7.16 16 16 16h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16zm96 121.13c-16.42 0-32.84-5.06-46.86-15.19L0 250.86V464c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V250.86L302.86 401.94c-14.02 10.12-30.44 15.19-46.86 15.19zm237.61-254.18c-8.85-6.94-17.24-13.47-29.61-22.81V96c0-26.51-21.49-48-48-48h-77.55c-3.04-2.2-5.87-4.26-9.04-6.56C312.6 29.17 279.2-.35 256 0c-23.2-.35-56.59 29.17-73.41 41.44-3.17 2.3-6 4.36-9.04 6.56H96c-26.51 0-48 21.49-48 48v44.14c-12.37 9.33-20.76 15.87-29.61 22.81A47.995 47.995 0 0 0 0 200.72v10.65l96 69.35V96h320v184.72l96-69.35v-10.65c0-14.74-6.78-28.67-18.39-37.77z">
                                                      </path>
                                                   </svg>
                                                </span>
                                             </a>
                                          </div>
                                          <div class="col-lg-6 col-md-6 col-sm-12 text-center ">
                                             <a href="emailtemplate.html" class="btn btn-primary btn-lg btn-block">Create Email Template <i class="fas fa-plus"></i>
                                             </a>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <%-- <form method="post" action="#" id="editClass" class="col-12"> --%>
                                          <form:form class="col-12" id="invitationform" modelAttribute="myinvit" action="sendInvitationemail" method="post">
                                             <h2>Select Email Template</h2>
                                             <div class="form-row">
                                                <div class="col-sm-8">
                                                   <select class="form-control" name="template" id="template" required="">
                                                      <option value="">Select</option>
                                                      <option value="614">
                                                         hello
                                                      </option>
                                                      <option value="691">
                                                         test2
                                                      </option>
                                                      <option value="7">
                                                         How are you doing?
                                                      </option>
                                                      <option value="8">
                                                         What have you been thinking lately ?
                                                      </option>
                                                      <option value="10">
                                                         Have you heard the latest news?
                                                      </option>
                                                      <option value="11">
                                                         Attention, Personal reply is required immediately
                                                      </option>
                                                      <option value="12">
                                                         Have I told you?
                                                      </option>
                                                      <option value="40">
                                                         Noticed that you have been spending most of your time online!
                                                      </option>
                                                      <option value="61">
                                                         Good day!
                                                      </option>
                                                      <option value="62">
                                                         This is an EXCLUSIVE invitation!
                                                      </option>
                                                      <option value="63">
                                                         This is an invitation for a better life! Please open this email
                                                      </option>
                                                      <option value="64">
                                                         Want to help me with something?
                                                      </option>
                                                      <option value="65">
                                                         You will LOVE this.
                                                      </option>
                                                      <option value="66">
                                                         This is why I believe you should try this.
                                                      </option>
                                                      <option value="68">
                                                         I think you better check this out
                                                      </option>
                                                      <option value="69">
                                                         Can I ask you something ?
                                                      </option>
                                                      <option value="70">
                                                         Are you still looking for a solution ?
                                                      </option>
                                                      <option value="71">
                                                         Would You Like to Know?
                                                      </option>
                                                      <option value="72">
                                                         Follow Up
                                                      </option>
                                                      <option value="73">
                                                         What are you doing?
                                                      </option>
                                                      <option value="74">
                                                         What do you think?
                                                      </option>
                                                      <option value="75">
                                                         Here you go
                                                      </option>
                                                   </select>
                                                   <a href="https://www.gofounders.net/invitations" class="res">
                                                   <input type="button" class="btn btn-success " id="preview" name="" value="Preview" style="display: none;">
                                                   </a>
                                                </div>
                                             </div>
                                             <h2> Your Information</h2>
                                             <div class="form-row">
                                         <%
                                          //String imagefilename ="Aliona.jpg"; hardcode
                                          String firstname = (String) request.getSession().getAttribute("firstname");
                                          firstname ="Sudipto";   // hardcode         		 
                                          String lastname = (String) request.getSession().getAttribute("lastname");
                                          lastname="Mukherjee";              		 
                                          String email = (String) request.getSession().getAttribute("email");   
                                          email ="abc@gmail.com";             		 
                                          %>
                                             
                                             
                                                <div class="col-md-3">
                                                   <label for="email">First Name</label>
                                                   <input type="text" class="form-control" name="first_name" value="<%=firstname%>" readonly=""><br>
                                                </div>
                                                <div class="col-md-3">
                                                   <label for="email">Last Name</label>
                                                   <input type="text" class="form-control" name="last_name" value="<%=lastname%>" readonly=""><br>
                                                </div>
                                                <div class="col-md-3">
                                                   <label for="email">Email Address</label>
                                                   <input type="email" class="form-control" name="email" value="<%=email%>" readonly=""><br>
                                                </div>
                                                <input type="hidden" class="form-control" name="phone" value="869685968">
                                             </div>
                                             <h2>Enter Invitees Information</h2>
                                             <div class="form-row">
                                                <div class="col">
                                                   <div class="row" style="margin-bottom: 3px;" id="wrapper">
                                                      <div class="col-md-3">
                                                      <!-- <input type="text" class="form-control fname1" name="firstname[]" placeholder="First Name" required=""> -->
                                                      <form:input path="invitees_firstname" name="invitees_firstname" id="invitees_firstname" 
                                                      placeholder="First Name" class="form-control fname1" required="" />
                                                      </div>
                                                      <div class="col-md-3">
                                                      <!-- <input type="text" class="form-control lname1" name="lastname[]" placeholder="Last Name" required=""> -->
                                                       <form:input path="invitees_lastname" name="invitees_lastname" id="invitees_lastname" 
                                                       placeholder="Last Name" class="form-control lname1" required="" />
                                                      </div>
                                                      <div class="col-md-3">
                                                      <!-- <input type="email" class="form-control custom" name="emailaddress[]" placeholder="Email Address" required=""> -->
                                                      <form:input path="invitees_email" name="invitees_email" id="invitees_email" 
                                                       placeholder="Email Address" class="form-control custom" required="" />
                                                      </div>
                                                      <div class="col-md-3">
                                                         <button class="btn btn-success grnbtn" id="add_field_button">Add More Invitees <i class="fas fa-plus"></i></button>
                                                      </div>
                                                   </div>
                                                   <textarea id="emailtemplate2" name="emailtemplate1" style="display: none;">&lt;p&gt;hello founders&lt;/p&gt;

                                        </textarea>
                                                   <input type="hidden" class="form-control" name="sub" id="sub" value="" readonly="">
                                                   <input type="hidden" name="emailtemplate1" id="emailtemplate1" value="">
                                                   <div class="row justify-content-center">
                                                      <div class="col-md-3">
                                                         <center>
                                                            <input type="submit" class="btn btn-primary btn-lg" name="sbmt" value="Send" id="sendinvitation" style="padding: 6px 32px 8px 32px;font-size: 1.3em;">
                                                         </center>
                                                      </div>
                                                   </div>
                                                   <br>
                                                   <center>
                                                      <div class="custom-control custom-checkbox">
                                                         <input type="checkbox" class="custom-control-input" id="defaultUnchecked" required="">
                                                         <label class="custom-control-label" for="defaultUnchecked" style="color:#f00;    font-size: 18px;"> No spam
                                                         policy: I give my word that I have permission to add
                                                         this person to my invitation list.</label>
                                                      </div>
                                                   </center>
                                                   <br>
                                                </div>
                                                <!-- </div> -->
                                             </div>
                                          </form:form>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <input type="hidden" id="modalid" name="" value="">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog" style="">
               <div class="modal-dialog">
                  <!-- Modal content-->
                  <div class="modal-content">
                     <!--        <div class="modal-header">-->
                     <p style="align:right;margin-right: 24px; margin-top: 15px;">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                     </p>
                     <!--   </div>-->
                     <center>
                        <h4>Subject Line:
                        </h4>
                     </center>
                     <div class="modal-body">
                        <textarea class="form-control" id="editor2" readonly="" style="height: 1000px; visibility: hidden; display: none;">
          
            

          </textarea>
                        <div id="cke_editor2" class="cke_1 cke cke_reset cke_chrome cke_editor_editor2 cke_ltr cke_browser_webkit" dir="ltr" lang="en" role="application" aria-labelledby="cke_editor2_arialbl">
                           <span id="cke_editor2_arialbl" class="cke_voice_label">Rich Text Editor, editor2</span>
                           <div class="cke_inner cke_reset" role="presentation">
                              <span id="cke_1_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; user-select: none;"><span id="cke_10" class="cke_voice_label">Editor toolbars</span><span id="cke_1_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_10" onmousedown="return false;"><span id="cke_15" class="cke_toolbar" aria-labelledby="cke_15_label" role="toolbar"><span id="cke_15_label" class="cke_voice_label">Document</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_16" class="cke_button cke_button__source cke_button_off" href="javascript:void('Source')" title="Source" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_16_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(2,event);" onfocus="return CKEDITOR.tools.callFunction(3,event);" onclick="CKEDITOR.tools.callFunction(4,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1824px;background-size:auto;">&nbsp;</span><span id="cke_16_label" class="cke_button_label cke_button__source_label" aria-hidden="false">Source</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_17" class="cke_button cke_button__save cke_button_disabled " href="javascript:void('Save')" title="Save" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_17_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(5,event);" onfocus="return CKEDITOR.tools.callFunction(6,event);" onclick="CKEDITOR.tools.callFunction(7,this);return false;"><span class="cke_button_icon cke_button__save_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1704px;background-size:auto;">&nbsp;</span><span id="cke_17_label" class="cke_button_label cke_button__save_label" aria-hidden="false">Save</span></a><a id="cke_18" class="cke_button cke_button__newpage cke_button_disabled " href="javascript:void('New Page')" title="New Page" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_18_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(8,event);" onfocus="return CKEDITOR.tools.callFunction(9,event);" onclick="CKEDITOR.tools.callFunction(10,this);return false;"><span class="cke_button_icon cke_button__newpage_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1440px;background-size:auto;">&nbsp;</span><span id="cke_18_label" class="cke_button_label cke_button__newpage_label" aria-hidden="false">New Page</span></a><a id="cke_19" class="cke_button cke_button__preview cke_button_off" href="javascript:void('Preview')" title="Preview" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_19_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(11,event);" onfocus="return CKEDITOR.tools.callFunction(12,event);" onclick="CKEDITOR.tools.callFunction(13,this);return false;"><span class="cke_button_icon cke_button__preview_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1632px;background-size:auto;">&nbsp;</span><span id="cke_19_label" class="cke_button_label cke_button__preview_label" aria-hidden="false">Preview</span></a><a id="cke_20" class="cke_button cke_button__print cke_button_off" href="javascript:void('Print')" title="Print" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_20_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(14,event);" onfocus="return CKEDITOR.tools.callFunction(15,event);" onclick="CKEDITOR.tools.callFunction(16,this);return false;"><span class="cke_button_icon cke_button__print_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1656px;background-size:auto;">&nbsp;</span><span id="cke_20_label" class="cke_button_label cke_button__print_label" aria-hidden="false">Print</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_21" class="cke_button cke_button__templates cke_button_disabled " href="javascript:void('Templates')" title="Templates" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_21_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(17,event);" onfocus="return CKEDITOR.tools.callFunction(18,event);" onclick="CKEDITOR.tools.callFunction(19,this);return false;"><span class="cke_button_icon cke_button__templates_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -456px;background-size:auto;">&nbsp;</span><span id="cke_21_label" class="cke_button_label cke_button__templates_label" aria-hidden="false">Templates</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_22" class="cke_toolbar" aria-labelledby="cke_22_label" role="toolbar"><span id="cke_22_label" class="cke_voice_label">Clipboard/Undo</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_23" class="cke_button cke_button__cut cke_button_disabled " href="javascript:void('Cut')" title="Cut" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_23_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(20,event);" onfocus="return CKEDITOR.tools.callFunction(21,event);" onclick="CKEDITOR.tools.callFunction(22,this);return false;"><span class="cke_button_icon cke_button__cut_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -312px;background-size:auto;">&nbsp;</span><span id="cke_23_label" class="cke_button_label cke_button__cut_label" aria-hidden="false">Cut</span></a><a id="cke_24" class="cke_button cke_button__copy cke_button_disabled " href="javascript:void('Copy')" title="Copy" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_24_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(23,event);" onfocus="return CKEDITOR.tools.callFunction(24,event);" onclick="CKEDITOR.tools.callFunction(25,this);return false;"><span class="cke_button_icon cke_button__copy_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -264px;background-size:auto;">&nbsp;</span><span id="cke_24_label" class="cke_button_label cke_button__copy_label" aria-hidden="false">Copy</span></a><a id="cke_25" class="cke_button cke_button__paste cke_button_disabled " href="javascript:void('Paste')" title="Paste" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_25_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(26,event);" onfocus="return CKEDITOR.tools.callFunction(27,event);" onclick="CKEDITOR.tools.callFunction(28,this);return false;"><span class="cke_button_icon cke_button__paste_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -360px;background-size:auto;">&nbsp;</span><span id="cke_25_label" class="cke_button_label cke_button__paste_label" aria-hidden="false">Paste</span></a><a id="cke_26" class="cke_button cke_button__pastetext cke_button_disabled " href="javascript:void('Paste as plain text')" title="Paste as plain text" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_26_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(29,event);" onfocus="return CKEDITOR.tools.callFunction(30,event);" onclick="CKEDITOR.tools.callFunction(31,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1536px;background-size:auto;">&nbsp;</span><span id="cke_26_label" class="cke_button_label cke_button__pastetext_label" aria-hidden="false">Paste as plain text</span></a><a id="cke_27" class="cke_button cke_button__pastefromword cke_button_disabled " href="javascript:void('Paste from Word')" title="Paste from Word" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_27_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(32,event);" onfocus="return CKEDITOR.tools.callFunction(33,event);" onclick="CKEDITOR.tools.callFunction(34,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1584px;background-size:auto;">&nbsp;</span><span id="cke_27_label" class="cke_button_label cke_button__pastefromword_label" aria-hidden="false">Paste from Word</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_28" class="cke_button cke_button__undo cke_button_disabled " href="javascript:void('Undo')" title="Undo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_28_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(35,event);" onfocus="return CKEDITOR.tools.callFunction(36,event);" onclick="CKEDITOR.tools.callFunction(37,this);return false;"><span class="cke_button_icon cke_button__undo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1992px;background-size:auto;">&nbsp;</span><span id="cke_28_label" class="cke_button_label cke_button__undo_label" aria-hidden="false">Undo</span></a><a id="cke_29" class="cke_button cke_button__redo cke_button_disabled " href="javascript:void('Redo')" title="Redo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_29_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(38,event);" onfocus="return CKEDITOR.tools.callFunction(39,event);" onclick="CKEDITOR.tools.callFunction(40,this);return false;"><span class="cke_button_icon cke_button__redo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1944px;background-size:auto;">&nbsp;</span><span id="cke_29_label" class="cke_button_label cke_button__redo_label" aria-hidden="false">Redo</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_30" class="cke_toolbar" aria-labelledby="cke_30_label" role="toolbar"><span id="cke_30_label" class="cke_voice_label">Editing</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_31" class="cke_button cke_button__find cke_button_off" href="javascript:void('Find')" title="Find" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_31_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(41,event);" onfocus="return CKEDITOR.tools.callFunction(42,event);" onclick="CKEDITOR.tools.callFunction(43,this);return false;"><span class="cke_button_icon cke_button__find_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -528px;background-size:auto;">&nbsp;</span><span id="cke_31_label" class="cke_button_label cke_button__find_label" aria-hidden="false">Find</span></a><a id="cke_32" class="cke_button cke_button__replace cke_button_disabled " href="javascript:void('Replace')" title="Replace" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_32_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(44,event);" onfocus="return CKEDITOR.tools.callFunction(45,event);" onclick="CKEDITOR.tools.callFunction(46,this);return false;"><span class="cke_button_icon cke_button__replace_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -552px;background-size:auto;">&nbsp;</span><span id="cke_32_label" class="cke_button_label cke_button__replace_label" aria-hidden="false">Replace</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_33" class="cke_button cke_button__selectall cke_button_disabled " href="javascript:void('Select All')" title="Select All" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_33_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(47,event);" onfocus="return CKEDITOR.tools.callFunction(48,event);" onclick="CKEDITOR.tools.callFunction(49,this);return false;"><span class="cke_button_icon cke_button__selectall_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1728px;background-size:auto;">&nbsp;</span><span id="cke_33_label" class="cke_button_label cke_button__selectall_label" aria-hidden="false">Select All</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_34" class="cke_button cke_button__scayt cke_button_disabled" href="javascript:void('Spell Checker')" title="Spell Checker" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_34_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(50,event);" onfocus="return CKEDITOR.tools.callFunction(51,event);" onclick="CKEDITOR.tools.callFunction(52,this);return false;" aria-disabled="true"><span class="cke_button_icon cke_button__scayt_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1872px;background-size:auto;">&nbsp;</span><span id="cke_34_label" class="cke_button_label cke_button__scayt_label" aria-hidden="false">Spell Check As You Type</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_35" class="cke_toolbar" aria-labelledby="cke_35_label" role="toolbar"><span id="cke_35_label" class="cke_voice_label">Forms</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_36" class="cke_button cke_button__form cke_button_disabled " href="javascript:void('Form')" title="Form" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_36_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(53,event);" onfocus="return CKEDITOR.tools.callFunction(54,event);" onclick="CKEDITOR.tools.callFunction(55,this);return false;"><span class="cke_button_icon cke_button__form_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -648px;background-size:auto;">&nbsp;</span><span id="cke_36_label" class="cke_button_label cke_button__form_label" aria-hidden="false">Form</span></a><a id="cke_37" class="cke_button cke_button__checkbox cke_button_disabled " href="javascript:void('Checkbox')" title="Checkbox" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_37_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(56,event);" onfocus="return CKEDITOR.tools.callFunction(57,event);" onclick="CKEDITOR.tools.callFunction(58,this);return false;"><span class="cke_button_icon cke_button__checkbox_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -624px;background-size:auto;">&nbsp;</span><span id="cke_37_label" class="cke_button_label cke_button__checkbox_label" aria-hidden="false">Checkbox</span></a><a id="cke_38" class="cke_button cke_button__radio cke_button_disabled " href="javascript:void('Radio Button')" title="Radio Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_38_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(59,event);" onfocus="return CKEDITOR.tools.callFunction(60,event);" onclick="CKEDITOR.tools.callFunction(61,this);return false;"><span class="cke_button_icon cke_button__radio_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -720px;background-size:auto;">&nbsp;</span><span id="cke_38_label" class="cke_button_label cke_button__radio_label" aria-hidden="false">Radio Button</span></a><a id="cke_39" class="cke_button cke_button__textfield cke_button_disabled " href="javascript:void('Text Field')" title="Text Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_39_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(62,event);" onfocus="return CKEDITOR.tools.callFunction(63,event);" onclick="CKEDITOR.tools.callFunction(64,this);return false;"><span class="cke_button_icon cke_button__textfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -864px;background-size:auto;">&nbsp;</span><span id="cke_39_label" class="cke_button_label cke_button__textfield_label" aria-hidden="false">Text Field</span></a><a id="cke_40" class="cke_button cke_button__textarea cke_button_disabled " href="javascript:void('Textarea')" title="Textarea" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_40_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(65,event);" onfocus="return CKEDITOR.tools.callFunction(66,event);" onclick="CKEDITOR.tools.callFunction(67,this);return false;"><span class="cke_button_icon cke_button__textarea_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -816px;background-size:auto;">&nbsp;</span><span id="cke_40_label" class="cke_button_label cke_button__textarea_label" aria-hidden="false">Textarea</span></a><a id="cke_41" class="cke_button cke_button__select cke_button_disabled " href="javascript:void('Selection Field')" title="Selection Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_41_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(68,event);" onfocus="return CKEDITOR.tools.callFunction(69,event);" onclick="CKEDITOR.tools.callFunction(70,this);return false;"><span class="cke_button_icon cke_button__select_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -768px;background-size:auto;">&nbsp;</span><span id="cke_41_label" class="cke_button_label cke_button__select_label" aria-hidden="false">Selection Field</span></a><a id="cke_42" class="cke_button cke_button__button cke_button_disabled " href="javascript:void('Button')" title="Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_42_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(71,event);" onfocus="return CKEDITOR.tools.callFunction(72,event);" onclick="CKEDITOR.tools.callFunction(73,this);return false;"><span class="cke_button_icon cke_button__button_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -600px;background-size:auto;">&nbsp;</span><span id="cke_42_label" class="cke_button_label cke_button__button_label" aria-hidden="false">Button</span></a><a id="cke_43" class="cke_button cke_button__imagebutton cke_button_disabled " href="javascript:void('Image Button')" title="Image Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_43_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(74,event);" onfocus="return CKEDITOR.tools.callFunction(75,event);" onclick="CKEDITOR.tools.callFunction(76,this);return false;"><span class="cke_button_icon cke_button__imagebutton_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -696px;background-size:auto;">&nbsp;</span><span id="cke_43_label" class="cke_button_label cke_button__imagebutton_label" aria-hidden="false">Image Button</span></a><a id="cke_44" class="cke_button cke_button__hiddenfield cke_button_disabled " href="javascript:void('Hidden Field')" title="Hidden Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_44_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(77,event);" onfocus="return CKEDITOR.tools.callFunction(78,event);" onclick="CKEDITOR.tools.callFunction(79,this);return false;"><span class="cke_button_icon cke_button__hiddenfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -672px;background-size:auto;">&nbsp;</span><span id="cke_44_label" class="cke_button_label cke_button__hiddenfield_label" aria-hidden="false">Hidden Field</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_45" class="cke_toolbar" aria-labelledby="cke_45_label" role="toolbar"><span id="cke_45_label" class="cke_voice_label">Basic Styles</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_46" class="cke_button cke_button__bold cke_button_disabled " href="javascript:void('Bold')" title="Bold" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_46_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(80,event);" onfocus="return CKEDITOR.tools.callFunction(81,event);" onclick="CKEDITOR.tools.callFunction(82,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -24px;background-size:auto;">&nbsp;</span><span id="cke_46_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">Bold</span></a><a id="cke_47" class="cke_button cke_button__italic cke_button_disabled " href="javascript:void('Italic')" title="Italic" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_47_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(83,event);" onfocus="return CKEDITOR.tools.callFunction(84,event);" onclick="CKEDITOR.tools.callFunction(85,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_47_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">Italic</span></a><a id="cke_48" class="cke_button cke_button__underline cke_button_disabled " href="javascript:void('Underline')" title="Underline" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_48_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(86,event);" onfocus="return CKEDITOR.tools.callFunction(87,event);" onclick="CKEDITOR.tools.callFunction(88,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_48_label" class="cke_button_label cke_button__underline_label" aria-hidden="false">Underline</span></a><a id="cke_49" class="cke_button cke_button__strike cke_button_disabled " href="javascript:void('Strikethrough')" title="Strikethrough" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_49_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(89,event);" onfocus="return CKEDITOR.tools.callFunction(90,event);" onclick="CKEDITOR.tools.callFunction(91,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_49_label" class="cke_button_label cke_button__strike_label" aria-hidden="false">Strikethrough</span></a><a id="cke_50" class="cke_button cke_button__subscript cke_button_disabled " href="javascript:void('Subscript')" title="Subscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_50_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(92,event);" onfocus="return CKEDITOR.tools.callFunction(93,event);" onclick="CKEDITOR.tools.callFunction(94,this);return false;"><span class="cke_button_icon cke_button__subscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -96px;background-size:auto;">&nbsp;</span><span id="cke_50_label" class="cke_button_label cke_button__subscript_label" aria-hidden="false">Subscript</span></a><a id="cke_51" class="cke_button cke_button__superscript cke_button_disabled " href="javascript:void('Superscript')" title="Superscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_51_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(95,event);" onfocus="return CKEDITOR.tools.callFunction(96,event);" onclick="CKEDITOR.tools.callFunction(97,this);return false;"><span class="cke_button_icon cke_button__superscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -120px;background-size:auto;">&nbsp;</span><span id="cke_51_label" class="cke_button_label cke_button__superscript_label" aria-hidden="false">Superscript</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_52" class="cke_button cke_button__removeformat cke_button_disabled " href="javascript:void('Remove Format')" title="Remove Format" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_52_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(98,event);" onfocus="return CKEDITOR.tools.callFunction(99,event);" onclick="CKEDITOR.tools.callFunction(100,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1680px;background-size:auto;">&nbsp;</span><span id="cke_52_label" class="cke_button_label cke_button__removeformat_label" aria-hidden="false">Remove Format</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_53" class="cke_toolbar" aria-labelledby="cke_53_label" role="toolbar"><span id="cke_53_label" class="cke_voice_label">Paragraph</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_54" class="cke_button cke_button__numberedlist cke_button_disabled " href="javascript:void('Insert/Remove Numbered List')" title="Insert/Remove Numbered List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_54_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(101,event);" onfocus="return CKEDITOR.tools.callFunction(102,event);" onclick="CKEDITOR.tools.callFunction(103,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1368px;background-size:auto;">&nbsp;</span><span id="cke_54_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">Insert/Remove Numbered List</span></a><a id="cke_55" class="cke_button cke_button__bulletedlist cke_button_disabled " href="javascript:void('Insert/Remove Bulleted List')" title="Insert/Remove Bulleted List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_55_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(104,event);" onfocus="return CKEDITOR.tools.callFunction(105,event);" onclick="CKEDITOR.tools.callFunction(106,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1320px;background-size:auto;">&nbsp;</span><span id="cke_55_label" class="cke_button_label cke_button__bulletedlist_label" aria-hidden="false">Insert/Remove Bulleted List</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_56" class="cke_button cke_button__outdent cke_button_disabled " href="javascript:void('Decrease Indent')" title="Decrease Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_56_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(107,event);" onfocus="return CKEDITOR.tools.callFunction(108,event);" onclick="CKEDITOR.tools.callFunction(109,this);return false;"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1032px;background-size:auto;">&nbsp;</span><span id="cke_56_label" class="cke_button_label cke_button__outdent_label" aria-hidden="false">Decrease Indent</span></a><a id="cke_57" class="cke_button cke_button__indent cke_button_disabled " href="javascript:void('Increase Indent')" title="Increase Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_57_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(110,event);" onfocus="return CKEDITOR.tools.callFunction(111,event);" onclick="CKEDITOR.tools.callFunction(112,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -984px;background-size:auto;">&nbsp;</span><span id="cke_57_label" class="cke_button_label cke_button__indent_label" aria-hidden="false">Increase Indent</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_58" class="cke_button cke_button__blockquote cke_button_disabled " href="javascript:void('Block Quote')" title="Block Quote" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_58_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(113,event);" onfocus="return CKEDITOR.tools.callFunction(114,event);" onclick="CKEDITOR.tools.callFunction(115,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -216px;background-size:auto;">&nbsp;</span><span id="cke_58_label" class="cke_button_label cke_button__blockquote_label" aria-hidden="false">Block Quote</span></a><a id="cke_59" class="cke_button cke_button__creatediv cke_button_disabled " href="javascript:void('Create Div Container')" title="Create Div Container" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_59_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(116,event);" onfocus="return CKEDITOR.tools.callFunction(117,event);" onclick="CKEDITOR.tools.callFunction(118,this);return false;"><span class="cke_button_icon cke_button__creatediv_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -480px;background-size:auto;">&nbsp;</span><span id="cke_59_label" class="cke_button_label cke_button__creatediv_label" aria-hidden="false">Create Div Container</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_60" class="cke_button cke_button__justifyleft cke_button_disabled " href="javascript:void('Align Left')" title="Align Left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_60_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(119,event);" onfocus="return CKEDITOR.tools.callFunction(120,event);" onclick="CKEDITOR.tools.callFunction(121,this);return false;"><span class="cke_button_icon cke_button__justifyleft_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1128px;background-size:auto;">&nbsp;</span><span id="cke_60_label" class="cke_button_label cke_button__justifyleft_label" aria-hidden="false">Align Left</span></a><a id="cke_61" class="cke_button cke_button__justifycenter cke_button_disabled " href="javascript:void('Center')" title="Center" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_61_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(122,event);" onfocus="return CKEDITOR.tools.callFunction(123,event);" onclick="CKEDITOR.tools.callFunction(124,this);return false;"><span class="cke_button_icon cke_button__justifycenter_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1104px;background-size:auto;">&nbsp;</span><span id="cke_61_label" class="cke_button_label cke_button__justifycenter_label" aria-hidden="false">Center</span></a><a id="cke_62" class="cke_button cke_button__justifyright cke_button_disabled " href="javascript:void('Align Right')" title="Align Right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_62_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(125,event);" onfocus="return CKEDITOR.tools.callFunction(126,event);" onclick="CKEDITOR.tools.callFunction(127,this);return false;"><span class="cke_button_icon cke_button__justifyright_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1152px;background-size:auto;">&nbsp;</span><span id="cke_62_label" class="cke_button_label cke_button__justifyright_label" aria-hidden="false">Align Right</span></a><a id="cke_63" class="cke_button cke_button__justifyblock cke_button_disabled " href="javascript:void('Justify')" title="Justify" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_63_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(128,event);" onfocus="return CKEDITOR.tools.callFunction(129,event);" onclick="CKEDITOR.tools.callFunction(130,this);return false;"><span class="cke_button_icon cke_button__justifyblock_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1080px;background-size:auto;">&nbsp;</span><span id="cke_63_label" class="cke_button_label cke_button__justifyblock_label" aria-hidden="false">Justify</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_64" class="cke_button cke_button__bidiltr cke_button_disabled " href="javascript:void('Text direction from left to right')" title="Text direction from left to right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_64_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(131,event);" onfocus="return CKEDITOR.tools.callFunction(132,event);" onclick="CKEDITOR.tools.callFunction(133,this);return false;"><span class="cke_button_icon cke_button__bidiltr_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -168px;background-size:auto;">&nbsp;</span><span id="cke_64_label" class="cke_button_label cke_button__bidiltr_label" aria-hidden="false">Text direction from left to right</span></a><a id="cke_65" class="cke_button cke_button__bidirtl cke_button_disabled " href="javascript:void('Text direction from right to left')" title="Text direction from right to left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_65_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(134,event);" onfocus="return CKEDITOR.tools.callFunction(135,event);" onclick="CKEDITOR.tools.callFunction(136,this);return false;"><span class="cke_button_icon cke_button__bidirtl_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -192px;background-size:auto;">&nbsp;</span><span id="cke_65_label" class="cke_button_label cke_button__bidirtl_label" aria-hidden="false">Text direction from right to left</span></a><a id="cke_66" class="cke_button cke_button__language cke_button_disabled " href="javascript:void('Set language')" title="Set language" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_66_label" aria-haspopup="true" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(137,event);" onfocus="return CKEDITOR.tools.callFunction(138,event);" onclick="CKEDITOR.tools.callFunction(139,this);return false;"><span class="cke_button_icon cke_button__language_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1176px;background-size:auto;">&nbsp;</span><span id="cke_66_label" class="cke_button_label cke_button__language_label" aria-hidden="false">Set language</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_67" class="cke_toolbar" aria-labelledby="cke_67_label" role="toolbar"><span id="cke_67_label" class="cke_voice_label">Links</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_68" class="cke_button cke_button__link cke_button_disabled " href="javascript:void('Link')" title="Link" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_68_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(140,event);" onfocus="return CKEDITOR.tools.callFunction(141,event);" onclick="CKEDITOR.tools.callFunction(142,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1248px;background-size:auto;">&nbsp;</span><span id="cke_68_label" class="cke_button_label cke_button__link_label" aria-hidden="false">Link</span></a><a id="cke_69" class="cke_button cke_button__unlink cke_button_disabled " href="javascript:void('Unlink')" title="Unlink" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_69_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(143,event);" onfocus="return CKEDITOR.tools.callFunction(144,event);" onclick="CKEDITOR.tools.callFunction(145,this);return false;"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1272px;background-size:auto;">&nbsp;</span><span id="cke_69_label" class="cke_button_label cke_button__unlink_label" aria-hidden="false">Unlink</span></a><a id="cke_70" class="cke_button cke_button__anchor cke_button_disabled " href="javascript:void('Anchor')" title="Anchor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_70_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(146,event);" onfocus="return CKEDITOR.tools.callFunction(147,event);" onclick="CKEDITOR.tools.callFunction(148,this);return false;"><span class="cke_button_icon cke_button__anchor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1224px;background-size:auto;">&nbsp;</span><span id="cke_70_label" class="cke_button_label cke_button__anchor_label" aria-hidden="false">Anchor</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_71" class="cke_toolbar" aria-labelledby="cke_71_label" role="toolbar"><span id="cke_71_label" class="cke_voice_label">Insert</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_72" class="cke_button cke_button__image cke_button_disabled " href="javascript:void('Image')" title="Image" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_72_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(149,event);" onfocus="return CKEDITOR.tools.callFunction(150,event);" onclick="CKEDITOR.tools.callFunction(151,this);return false;"><span class="cke_button_icon cke_button__image_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -936px;background-size:auto;">&nbsp;</span><span id="cke_72_label" class="cke_button_label cke_button__image_label" aria-hidden="false">Image</span></a><a id="cke_73" class="cke_button cke_button__flash cke_button_disabled " href="javascript:void('Flash')" title="Flash" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_73_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(152,event);" onfocus="return CKEDITOR.tools.callFunction(153,event);" onclick="CKEDITOR.tools.callFunction(154,this);return false;"><span class="cke_button_icon cke_button__flash_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -576px;background-size:auto;">&nbsp;</span><span id="cke_73_label" class="cke_button_label cke_button__flash_label" aria-hidden="false">Flash</span></a><a id="cke_74" class="cke_button cke_button__table cke_button_disabled " href="javascript:void('Table')" title="Table" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_74_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(155,event);" onfocus="return CKEDITOR.tools.callFunction(156,event);" onclick="CKEDITOR.tools.callFunction(157,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1896px;background-size:auto;">&nbsp;</span><span id="cke_74_label" class="cke_button_label cke_button__table_label" aria-hidden="false">Table</span></a><a id="cke_75" class="cke_button cke_button__horizontalrule cke_button_disabled " href="javascript:void('Insert Horizontal Line')" title="Insert Horizontal Line" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_75_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(158,event);" onfocus="return CKEDITOR.tools.callFunction(159,event);" onclick="CKEDITOR.tools.callFunction(160,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -888px;background-size:auto;">&nbsp;</span><span id="cke_75_label" class="cke_button_label cke_button__horizontalrule_label" aria-hidden="false">Insert Horizontal Line</span></a><a id="cke_76" class="cke_button cke_button__smiley cke_button_disabled " href="javascript:void('Smiley')" title="Smiley" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_76_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(161,event);" onfocus="return CKEDITOR.tools.callFunction(162,event);" onclick="CKEDITOR.tools.callFunction(163,this);return false;"><span class="cke_button_icon cke_button__smiley_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1056px;background-size:auto;">&nbsp;</span><span id="cke_76_label" class="cke_button_label cke_button__smiley_label" aria-hidden="false">Smiley</span></a><a id="cke_77" class="cke_button cke_button__specialchar cke_button_disabled " href="javascript:void('Insert Special Character')" title="Insert Special Character" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_77_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(164,event);" onfocus="return CKEDITOR.tools.callFunction(165,event);" onclick="CKEDITOR.tools.callFunction(166,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1848px;background-size:auto;">&nbsp;</span><span id="cke_77_label" class="cke_button_label cke_button__specialchar_label" aria-hidden="false">Insert Special Character</span></a><a id="cke_78" class="cke_button cke_button__pagebreak cke_button_disabled " href="javascript:void('Insert Page Break for Printing')" title="Insert Page Break for Printing" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_78_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(167,event);" onfocus="return CKEDITOR.tools.callFunction(168,event);" onclick="CKEDITOR.tools.callFunction(169,this);return false;"><span class="cke_button_icon cke_button__pagebreak_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1488px;background-size:auto;">&nbsp;</span><span id="cke_78_label" class="cke_button_label cke_button__pagebreak_label" aria-hidden="false">Insert Page Break for Printing</span></a><a id="cke_79" class="cke_button cke_button__iframe cke_button_disabled " href="javascript:void('IFrame')" title="IFrame" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_79_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(170,event);" onfocus="return CKEDITOR.tools.callFunction(171,event);" onclick="CKEDITOR.tools.callFunction(172,this);return false;"><span class="cke_button_icon cke_button__iframe_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -912px;background-size:auto;">&nbsp;</span><span id="cke_79_label" class="cke_button_label cke_button__iframe_label" aria-hidden="false">IFrame</span></a><a id="cke_80" class="cke_button cke_button__hkemoji cke_button_disabled " href="javascript:void('Insert emoji')" title="Insert emoji" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_80_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(173,event);" onfocus="return CKEDITOR.tools.callFunction(174,event);" onclick="CKEDITOR.tools.callFunction(175,this);return false;"><span class="cke_button_icon cke_button__hkemoji_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/icons/hkemoji.png?t=G4CD');background-position:0 0px;background-size:16px;">&nbsp;</span><span id="cke_80_label" class="cke_button_label cke_button__hkemoji_label" aria-hidden="false">Insert emoji</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_81" class="cke_toolbar" aria-labelledby="cke_81_label" role="toolbar"><span id="cke_81_label" class="cke_voice_label">Styles</span><span class="cke_toolbar_start"></span><span id="cke_11" class="cke_combo cke_combo__styles cke_combo_disabled" role="presentation" aria-disabled="true"><span id="cke_11_label" class="cke_combo_label">Styles</span><a class="cke_combo_button" title="Formatting Styles" tabindex="-1" href="javascript:void('Formatting Styles')" hidefocus="true" role="button" aria-labelledby="cke_11_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(177,event,this);" onfocus="return CKEDITOR.tools.callFunction(178,event);" onclick="CKEDITOR.tools.callFunction(176,this);return false;"><span id="cke_11_text" class="cke_combo_text cke_combo_inlinelabel">Styles</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_12" class="cke_combo cke_combo__format cke_combo_disabled" role="presentation" aria-disabled="true"><span id="cke_12_label" class="cke_combo_label">Format</span><a class="cke_combo_button" title="Paragraph Format" tabindex="-1" href="javascript:void('Paragraph Format')" hidefocus="true" role="button" aria-labelledby="cke_12_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(180,event,this);" onfocus="return CKEDITOR.tools.callFunction(181,event);" onclick="CKEDITOR.tools.callFunction(179,this);return false;"><span id="cke_12_text" class="cke_combo_text cke_combo_inlinelabel">Format</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_13" class="cke_combo cke_combo__font cke_combo_disabled" role="presentation" aria-disabled="true"><span id="cke_13_label" class="cke_combo_label">Font</span><a class="cke_combo_button" title="Font Name" tabindex="-1" href="javascript:void('Font Name')" hidefocus="true" role="button" aria-labelledby="cke_13_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(183,event,this);" onfocus="return CKEDITOR.tools.callFunction(184,event);" onclick="CKEDITOR.tools.callFunction(182,this);return false;"><span id="cke_13_text" class="cke_combo_text cke_combo_inlinelabel">Font</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_14" class="cke_combo cke_combo__fontsize cke_combo_disabled" role="presentation" aria-disabled="true"><span id="cke_14_label" class="cke_combo_label">Size</span><a class="cke_combo_button" title="Font Size" tabindex="-1" href="javascript:void('Font Size')" hidefocus="true" role="button" aria-labelledby="cke_14_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(186,event,this);" onfocus="return CKEDITOR.tools.callFunction(187,event);" onclick="CKEDITOR.tools.callFunction(185,this);return false;"><span id="cke_14_text" class="cke_combo_text cke_combo_inlinelabel">Size</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_82" class="cke_toolbar" aria-labelledby="cke_82_label" role="toolbar"><span id="cke_82_label" class="cke_voice_label">Colors</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_83" class="cke_button cke_button__textcolor cke_button_disabled" href="javascript:void('Text Color')" title="Text Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_83_label" aria-haspopup="true" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(188,event);" onfocus="return CKEDITOR.tools.callFunction(189,event);" onclick="CKEDITOR.tools.callFunction(190,this);return false;"><span class="cke_button_icon cke_button__textcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -408px;background-size:auto;">&nbsp;</span><span id="cke_83_label" class="cke_button_label cke_button__textcolor_label" aria-hidden="false">Text Color</span><span class="cke_button_arrow"></span></a><a id="cke_84" class="cke_button cke_button__bgcolor cke_button_disabled" href="javascript:void('Background Color')" title="Background Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_84_label" aria-haspopup="true" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(191,event);" onfocus="return CKEDITOR.tools.callFunction(192,event);" onclick="CKEDITOR.tools.callFunction(193,this);return false;"><span class="cke_button_icon cke_button__bgcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -384px;background-size:auto;">&nbsp;</span><span id="cke_84_label" class="cke_button_label cke_button__bgcolor_label" aria-hidden="false">Background Color</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_85" class="cke_toolbar" aria-labelledby="cke_85_label" role="toolbar"><span id="cke_85_label" class="cke_voice_label">Tools</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_86" class="cke_button cke_button__maximize cke_button_off" href="javascript:void('Maximize')" title="Maximize" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_86_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(194,event);" onfocus="return CKEDITOR.tools.callFunction(195,event);" onclick="CKEDITOR.tools.callFunction(196,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1392px;background-size:auto;">&nbsp;</span><span id="cke_86_label" class="cke_button_label cke_button__maximize_label" aria-hidden="false">Maximize</span></a><a id="cke_87" class="cke_button cke_button__showblocks cke_button_off" href="javascript:void('Show Blocks')" title="Show Blocks" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_87_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(197,event);" onfocus="return CKEDITOR.tools.callFunction(198,event);" onclick="CKEDITOR.tools.callFunction(199,this);return false;"><span class="cke_button_icon cke_button__showblocks_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1776px;background-size:auto;">&nbsp;</span><span id="cke_87_label" class="cke_button_label cke_button__showblocks_label" aria-hidden="false">Show Blocks</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_88" class="cke_toolbar" aria-labelledby="cke_88_label" role="toolbar"><span id="cke_88_label" class="cke_voice_label">about</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_89" class="cke_button cke_button__about cke_button_off" href="javascript:void('About CKEditor')" title="About CKEditor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_89_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(200,event);" onfocus="return CKEDITOR.tools.callFunction(201,event);" onclick="CKEDITOR.tools.callFunction(202,this);return false;"><span class="cke_button_icon cke_button__about_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 0px;background-size:auto;">&nbsp;</span><span id="cke_89_label" class="cke_button_label cke_button__about_label" aria-hidden="false">About CKEditor</span></a></span><span class="cke_toolbar_end"></span></span></span></span>
                              <div id="cke_1_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><span id="cke_93" class="cke_voice_label">Press ALT 0 for help</span><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" style="width: 100%; height: 100%;" title="Rich Text Editor, editor2" aria-describedby="cke_93" tabindex="0" allowtransparency="true"></iframe></div>
                              <span id="cke_1_bottom" class="cke_bottom cke_reset_all" role="presentation" style="user-select: none;"><span id="cke_1_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="Resize" onmousedown="CKEDITOR.tools.callFunction(0, event)">◢</span><span id="cke_1_path_label" class="cke_voice_label">Elements path</span><span id="cke_1_path" class="cke_path" role="group" aria-labelledby="cke_1_path_label"><span class="cke_path_empty">&nbsp;</span></span></span>
                           </div>
                        </div>
                     </div>
                     <div class="modal-footer">
                        <a href="" class="btn btn-default" data-dismiss="modal">Close</a>
                     </div>
                  </div>
               </div>
            </div>
            <input type="hidden" name="userid" id="userid" value="7364">
            <input type="hidden" id="show" name="" value="">
            <input type="hidden" id="show1" name="" value="">
            <input type="hidden" id="show2" name="" value="">
            <input type="hidden" id="show3" name="" value="">
            <script type="text/javascript">
               CKEDITOR.replace('editor2');
               
                
            </script>
            <script>
               $(document).ready(function() {
               
               
               
               
               
                   $("#preview").hide();
               
               
               
                   $('select').on('change', function() {
                       var val = this.value;
               
                       if (val != "") {
                           $("#preview").show();
               
                           //swal(val);
               
                           $("#preview").click(function() {
               
               
               
                               var string = "https://www.gofounders.net/invitations?modalid=" + val;
               
                               $("a").attr("href", string);
               
               
               
                               $(".res").attr("href", string);
               
                           });
               
                       }
               
                   });
               
               });
               
                
            </script>
            <script>
               $(document).ready(function() {
               
               
               
                   $("#preview").hide();
               
                   $('select').on('change', function() {
               
               
               
                       var val = this.value;
               
                       if (val != "") {
               
               
               
                           $("#preview").show();
               
               
               
                           $.ajax({
               
                               url: "https://www.gofounders.net/invitations/templatechoose",
               
                               method: "get",
               
                               data: {
               
                                   val: val
               
                               },
               
                               dataType: "JSON",
               
                               success: function(data) {
               
               
               
                                   //swal(data);
               
               
               
                                   var JSONString = JSON.stringify(data);
               
                                   var JSONObject = JSON.parse(JSONString);
               
               
               
                                   //swal(JSONObject["imagename"]); // Access Object data
               
               
               
                                   //var image=JSONObject["imagename"];
               
                                   var template = JSONObject["names"];
               
                                   var title1 = JSONObject["duplicate_title"];
               
               
               
                                  // swal(template);          
               
               
               
                                   $("#emailtemplate1").val(template);
               
                                   $("#emailtemplate2").val(template);
               
                                   $("#sub").val(title1);
               
               
               
                               }
               
                           });
               
                       }
               
               
               
                   });
               
               });
               
                
            </script>
            <script type="text/javascript">
               $(document).ready(function() {
               
                   var max_fields = 24; //maximum input boxes allowed
               
                   var wrapper = $("#wrapper"); //Fields wrapper
               
                   var add_button = $("#add_field_button"); //Add button ID
               
               
               
                   var x = 1; //initlal text box count
               
                   $(add_button).click(function(e) { //on add input button click
               
                       e.preventDefault();
               
               
               
               
               
                       var f=new Array();
               
                       var element1 = $('.fname1');
               
                       for (var i = 0; i < element1.length; i++) {
               
                           //swal($(element1[i]).val());
               
                           f[0] = $(element1[i]).val();
               
                       }
               
               
               
                        //swal(f.join("\n"));
               
               
               
                       var l=new Array();
               
                       var element2 = $('.lname1');
               
                       for (var i = 0; i < element2.length; i++) {
               
                           //swal($(element2[i]).val());
               
                           l[0] = $(element2[i]).val();
               
                       }
               
               
               
                        //swal(l.join("\n"));
               
               
               
               
               
               
               
               
               
                       var p = new Array();
               
               
               
                       var element = $('.custom');
               
                       for (var i = 0; i < element.length; i++) {
               
                           //swal($(element[i]).val());
               
                           p[0] = $(element[i]).val();
               
                       }
               
                       //swal(p.join("\n"));
               
                       var val = p.join("\n");
               
                       var fname=f.join("\n");
               
                       var lname=l.join("\n");
               
                       var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
               
                       var emailcheck=regex.test(val);
               
               
                      // alert(val);
               
               
               
                      if(fname==""){
                   
               
                               
                           swal("First name is mandatory.");
               
                           $( ".fname1" ).focus();
               
                      }
               
                       else if(lname==""){
               
               
               
                            swal("Last name is mandatory.");
               
                             $( ".lname1" ).focus();
               
                      }
                      else if(val==""){
               
                            swal("Email is mandatory.");
               
                             $( ".custom" ).focus();
               
                      }
                      else if(emailcheck==false){
               
                            swal("Invalid email format");
               
                            $( ".custom" ).focus();
               
                      }  
                      else{
               
                       if (x < max_fields) {
               
                           x++;
               
                           $(wrapper).append(
               
                               '<div class="col-md-12 cst"><div class="row" style="margin-bottom: 3px;"><div class="col-md-3"><input type="text" class="form-control fname1" name="firstname[]" placeholder="First Name" required/></div><div class="col-md-3"> <input type="text" class="form-control lname1" name="lastname[]" placeholder="Last Name" required /></div><div class="col-md-3"> <input type="email" name="emailaddress[]" class="form-control custom" placeholder="Email Address" required /></div><div class="col-md-3"><a href="#" class="btn btn-danger" id="remove_field">Remove</a></div></div></div>'
               
                               );
               
                           $("#sendinvitation").removeAttr("disabled");
               
                       }           
               
                       }
               
               
                   });
               
               
               
               
               
                   $(wrapper).on("click", "#remove_field", function(e) { //user click on remove text
               
                       e.preventDefault();
               
                       $(this).parents('.cst').remove();
               
                       x--;
               
                   })
               
               });
               
                
            </script>
            <script>
               $(document).ready(function() {
               
               
               
                   var modalid = $("#modalid").val();
               
               
               
                   if (modalid != "") {
               
               
               
                       $("#myModal").modal('show');
               
                   }
               
               });
               
                
            </script>
            <!-- Footer -->
            <footer class="footer col-12">
               <div class="row align-items-center justify-content-xl-between">
                  <div class="col-xl-12">
                     <p style="text-align:center;" class="ftn-txt">© All Rights Reserved GoFounders 2018-2028</p>
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