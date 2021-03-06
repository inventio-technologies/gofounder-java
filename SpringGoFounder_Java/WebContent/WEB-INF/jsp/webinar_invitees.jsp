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
                        href="invitees.html">
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
         <div class="page-bg"></div>
            <div class="main-content">
                <!-- Top navbar -->
                <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
                    <div class="container-fluid">
                        <div class="col-12 d-flex justify-content-between align-items-center flex-wrap">
                        <!-- Brand -->
                        <a class="h4 mb-0 text-white text-uppercase main-title  d-flex">Webinar Invitees</a>

            
                
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
                                                                        <div align="center"><h4>No Notification found!!</h4></div>
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
                        <ul class="navbar-nav align-items-center d-flex p-menu">
                            <li class="nav-item dropdown">
                                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="media align-items-center">
                                        <!--<span class="avatar avatar-sm rounded-circle">-->
                                        <!--  <span class="avatar avatar-sm rounded-circle" id="profileImage1"></span>-->
                                        <!--</span>-->
                                        

                                                                            


                                        
                                        
                                    
                                        <span class="avatar avatar-sm rounded-circle avatar-bg" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/avtar1.png')">
                                            <!--<img src="https://www.gofounders.net/uploads/avtar1.png"
                                                width="50px" height="35px">-->
                                        </span>
                                                                                <div class="media-body ml-2">
                                            <span class="mb-0 text-sm  font-weight-bold">Tanmoy&nbsp;
                                                Paul</span>
                                        </div>
                                        
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                                    <div class=" dropdown-header noti-title">
                                        <h6 class="text-overflow m-0">Welcome!</h6>
                                    </div>                                                                     <a href="https://www.gofounders.net/user_profile" class="dropdown-item">

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
    .spam-count td {
        font-size: 14px;
        text-align: left;
        font-weight: 600;
    }

    .modal-header {
    background: #ffcf1d;
        color: #fff;
    }

    .spam-count p {font-weight: 600;color: #000;}

    .modal-title {
        color: #172b4d !important;
    }

    .modal-body tr:nth-of-type(odd) {
        background: #264477;
    }
    .modal_heading
    {
        
        
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

    .check{
            font-weight: 700;
        font-size: 20px;
        color: #064fab;
    }
    /*hr.new1 {
        width: 80%;
        border-top: 1px solid red;
    }
    */

    </style>
    



    



    <!-- Page content -->



    <div class="container mt-6" style="">



        <!-- Table -->



        <div class="row">



            <div class="col">



                <div class="card shadow">

                    


                    <div class="container mt-3">







                        <!-- Tab panes -->



                        <p align="right" class="invitees-m member-p">



                        <a href="/invitees/index/?info=10" style="padding: 0px">
                        <button class="btn btn-primary frm_top_btn mb-0 "> 
                        Back To My Invitees  <img src="https://www.gofounders.net/assests/emoji/img/group.png" style="height:12px;"> 
                        </button>
                        </a>



                            <a href="#" data-toggle="modal" data-target="#myModal_a" style="padding: 0% 0% 0% 0%;"><button class="btn btn-primary" style=""> Broadcast <i class="fa fa-envelope"></i></button></a>







                            <button data-toggle="modal" data-target="#myModal00" class="btn btn-primary" style=""> Export
                                CSV File <svg aria-hidden="true" data-prefix="far" data-icon="file-excel" class="svg-inline--fa fa-file-excel fa-w-12" role="img" xmlns="http://www.w3.org/20/svg" viewBox="0 0 384 512" width="16px" height="16px">



                                    <path fill="currentColor" d="M369.9 97.9L286 14C277 5 264.8-.1 252.1-.1H48C21.5 0 0 21.5 0 48v416c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48V131.9c0-12.7-5.1-25-14.1-34zM332.1 128H256V51.9l76.1 76.1zM48 464V48h160v104c0 13.3 10.7 24 24 24h104v288H48zm212-240h-28.8c-4.4 0-8.4 2.4-10.5 6.3-18 33.1-22.2 42.4-28.6 57.7-13.9-29.1-6.9-17.3-28.6-57.7-2.1-3.9-6.2-6.3-10.6-6.3H124c-9.3 0-15 10-10.4 18l46.3 78-46.3 78c-4.7 8 1.1 18 10.4 18h28.9c4.4 0 8.4-2.4 10.5-6.3 21.7-40 23-45 28.6-57.7 14.9 30.2 5.9 15.9 28.6 57.7 2.1 3.9 6.2 6.3 10.6 6.3H260c9.3 0 15-10 10.4-18L224 320c.7-1.1 30.3-50.5 46.3-78 4.7-8-1.1-18-10.3-18z">
                                    </path>
                                </svg>







                                <!--<i class="fas fa-file-excel"></i>-->
                                <!-- <i class="fa fa-file-excel"></i> -->
                                <!--<i class="fas fa-file-export"></i>-->
                                <!--<img src="https://img.icons8.com/material/18/ffffff/export.png">--></button>



                        </p>

                        <div class="col-lg-3 align-items-center d-flex ">



                            Show

                            <select name="limitval" id="limitval" class="form-control my-2 mx-2">

                                
                                <option selected="10">10</option>
                                <option>10</option>
                                <option>25</option>
                                <option>50</option>
                                <option>100</option>
                            </select>

                            entries



                        </div>


                        <div class="row mb-3">
                            <div class="col-sm-4"></div>

                            <div class="col-sm-8">


                                <form action="#" method="post">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search with First Name, Last Name, Email Address" name="search_val" required="">

                                        <button class="btn btn-default" type="submit" id="btn"><img src="https://www.gofounders.net/assests/admin/emoji/img/search_white.png" class="searchicon"></button>

                                    </div>

                                </form>



                            </div>
                        </div>
                        <div class="modal fade s-modal" id="myModal00" role="dialog">
                            <div class="modal-dialog modal-sm modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">

                                        <h2 class="modal-title">Export invitees to CSV?</h2>
                                    </div>

                                    <div class="modal-footer">
                                        <button onclick="Export()" data-dismiss="modal" type="button" class="btn btn-success">Yes</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="tab-content border mb-3">



                            <div id="home" class="container tab-pane active"><br>







                                <div class="modal fade s-modal" id="myModal0011" role="dialog">
                                            <div class="modal-dialog modal-sm modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">

                                                        <h2 class="modal-title">Are you sure delete it?</h2>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <a href="#"><button type="button" class="btn btn-danger">Yes delete
                                                                it!</button></a>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="modal fade" id="myModal1" role="dialog">



                                            <div class="modal-dialog">







                                                <!-- Modal content-->



                                                <div class="modal-content">







                                                    <div class="modal-body">

                                                        <button type="button" class="close" data-dismiss="modal">×</button>





                                                        <div class="">















                                                            <form method="post" action="#" enctype="multipart/form-data" onsubmit="return validateBadText1();"></form>



                                                                <!--Body-->



                                                                <div class="form-group focused">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text">

                                                                                <i class="fa fa-user text-info"></i>

                                                                            </div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="name" value="subhradip sinha" name="name" readonly="">



                                                                    </div>



                                                                </div>







                                                                <div class="form-group focused">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-book text-info"></i></div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="sub" placeholder="Subject" value="New Message For subhradip sinha" name="sub" readonly="">



                                                                    </div>



                                                                </div>











                                                                <input type="hidden" class="form-control" id="email" name="email" value="subhradip6@yahoo.com">











                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i>
                                                                            </div>



                                                                        </div>



                                                                        <textarea name="msg" class="form-control" id="editor_1" placeholder="Enter your message" style="visibility: hidden; display: none;"></textarea><div id="cke_editor_1" class="cke_1 cke cke_reset cke_chrome cke_editor_editor_1 cke_ltr cke_browser_webkit" dir="ltr" lang="en" role="application" aria-labelledby="cke_editor_1_arialbl"><span id="cke_editor_1_arialbl" class="cke_voice_label">Rich Text Editor, editor_1</span><div class="cke_inner cke_reset" role="presentation"><span id="cke_1_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; user-select: none;"><span id="cke_26" class="cke_voice_label">Editor toolbars</span><span id="cke_1_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_26" onmousedown="return false;"><span id="cke_31" class="cke_toolbar" aria-labelledby="cke_31_label" role="toolbar"><span id="cke_31_label" class="cke_voice_label">Document</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_32" class="cke_button cke_button__source cke_button_off" href="javascript:void('Source')" title="Source" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_32_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(2,event);" onfocus="return CKEDITOR.tools.callFunction(3,event);" onclick="CKEDITOR.tools.callFunction(4,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1824px;background-size:auto;">&nbsp;</span><span id="cke_32_label" class="cke_button_label cke_button__source_label" aria-hidden="false">Source</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_33" class="cke_button cke_button__save cke_button_off" href="javascript:void('Save')" title="Save" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_33_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(5,event);" onfocus="return CKEDITOR.tools.callFunction(6,event);" onclick="CKEDITOR.tools.callFunction(7,this);return false;"><span class="cke_button_icon cke_button__save_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1704px;background-size:auto;">&nbsp;</span><span id="cke_33_label" class="cke_button_label cke_button__save_label" aria-hidden="false">Save</span></a><a id="cke_34" class="cke_button cke_button__newpage cke_button_off" href="javascript:void('New Page')" title="New Page" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_34_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(8,event);" onfocus="return CKEDITOR.tools.callFunction(9,event);" onclick="CKEDITOR.tools.callFunction(10,this);return false;"><span class="cke_button_icon cke_button__newpage_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1440px;background-size:auto;">&nbsp;</span><span id="cke_34_label" class="cke_button_label cke_button__newpage_label" aria-hidden="false">New Page</span></a><a id="cke_35" class="cke_button cke_button__preview cke_button_off" href="javascript:void('Preview')" title="Preview" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_35_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(11,event);" onfocus="return CKEDITOR.tools.callFunction(12,event);" onclick="CKEDITOR.tools.callFunction(13,this);return false;"><span class="cke_button_icon cke_button__preview_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1632px;background-size:auto;">&nbsp;</span><span id="cke_35_label" class="cke_button_label cke_button__preview_label" aria-hidden="false">Preview</span></a><a id="cke_36" class="cke_button cke_button__print cke_button_off" href="javascript:void('Print')" title="Print" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_36_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(14,event);" onfocus="return CKEDITOR.tools.callFunction(15,event);" onclick="CKEDITOR.tools.callFunction(16,this);return false;"><span class="cke_button_icon cke_button__print_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1656px;background-size:auto;">&nbsp;</span><span id="cke_36_label" class="cke_button_label cke_button__print_label" aria-hidden="false">Print</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_37" class="cke_button cke_button__templates cke_button_off" href="javascript:void('Templates')" title="Templates" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_37_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(17,event);" onfocus="return CKEDITOR.tools.callFunction(18,event);" onclick="CKEDITOR.tools.callFunction(19,this);return false;"><span class="cke_button_icon cke_button__templates_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -456px;background-size:auto;">&nbsp;</span><span id="cke_37_label" class="cke_button_label cke_button__templates_label" aria-hidden="false">Templates</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_38" class="cke_toolbar" aria-labelledby="cke_38_label" role="toolbar"><span id="cke_38_label" class="cke_voice_label">Clipboard/Undo</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_39" class="cke_button cke_button__cut cke_button_disabled " href="javascript:void('Cut')" title="Cut" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_39_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(20,event);" onfocus="return CKEDITOR.tools.callFunction(21,event);" onclick="CKEDITOR.tools.callFunction(22,this);return false;"><span class="cke_button_icon cke_button__cut_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -312px;background-size:auto;">&nbsp;</span><span id="cke_39_label" class="cke_button_label cke_button__cut_label" aria-hidden="false">Cut</span></a><a id="cke_40" class="cke_button cke_button__copy cke_button_disabled " href="javascript:void('Copy')" title="Copy" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_40_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(23,event);" onfocus="return CKEDITOR.tools.callFunction(24,event);" onclick="CKEDITOR.tools.callFunction(25,this);return false;"><span class="cke_button_icon cke_button__copy_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -264px;background-size:auto;">&nbsp;</span><span id="cke_40_label" class="cke_button_label cke_button__copy_label" aria-hidden="false">Copy</span></a><a id="cke_41" class="cke_button cke_button__paste cke_button_off" href="javascript:void('Paste')" title="Paste" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_41_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(26,event);" onfocus="return CKEDITOR.tools.callFunction(27,event);" onclick="CKEDITOR.tools.callFunction(28,this);return false;"><span class="cke_button_icon cke_button__paste_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -360px;background-size:auto;">&nbsp;</span><span id="cke_41_label" class="cke_button_label cke_button__paste_label" aria-hidden="false">Paste</span></a><a id="cke_42" class="cke_button cke_button__pastetext cke_button_off" href="javascript:void('Paste as plain text')" title="Paste as plain text" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_42_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(29,event);" onfocus="return CKEDITOR.tools.callFunction(30,event);" onclick="CKEDITOR.tools.callFunction(31,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1536px;background-size:auto;">&nbsp;</span><span id="cke_42_label" class="cke_button_label cke_button__pastetext_label" aria-hidden="false">Paste as plain text</span></a><a id="cke_43" class="cke_button cke_button__pastefromword cke_button_off" href="javascript:void('Paste from Word')" title="Paste from Word" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_43_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(32,event);" onfocus="return CKEDITOR.tools.callFunction(33,event);" onclick="CKEDITOR.tools.callFunction(34,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1584px;background-size:auto;">&nbsp;</span><span id="cke_43_label" class="cke_button_label cke_button__pastefromword_label" aria-hidden="false">Paste from Word</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_44" class="cke_button cke_button__undo cke_button_disabled " href="javascript:void('Undo')" title="Undo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_44_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(35,event);" onfocus="return CKEDITOR.tools.callFunction(36,event);" onclick="CKEDITOR.tools.callFunction(37,this);return false;"><span class="cke_button_icon cke_button__undo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1992px;background-size:auto;">&nbsp;</span><span id="cke_44_label" class="cke_button_label cke_button__undo_label" aria-hidden="false">Undo</span></a><a id="cke_45" class="cke_button cke_button__redo cke_button_disabled " href="javascript:void('Redo')" title="Redo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_45_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(38,event);" onfocus="return CKEDITOR.tools.callFunction(39,event);" onclick="CKEDITOR.tools.callFunction(40,this);return false;"><span class="cke_button_icon cke_button__redo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1944px;background-size:auto;">&nbsp;</span><span id="cke_45_label" class="cke_button_label cke_button__redo_label" aria-hidden="false">Redo</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_46" class="cke_toolbar" aria-labelledby="cke_46_label" role="toolbar"><span id="cke_46_label" class="cke_voice_label">Editing</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_47" class="cke_button cke_button__find cke_button_off" href="javascript:void('Find')" title="Find" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_47_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(41,event);" onfocus="return CKEDITOR.tools.callFunction(42,event);" onclick="CKEDITOR.tools.callFunction(43,this);return false;"><span class="cke_button_icon cke_button__find_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -528px;background-size:auto;">&nbsp;</span><span id="cke_47_label" class="cke_button_label cke_button__find_label" aria-hidden="false">Find</span></a><a id="cke_48" class="cke_button cke_button__replace cke_button_off" href="javascript:void('Replace')" title="Replace" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_48_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(44,event);" onfocus="return CKEDITOR.tools.callFunction(45,event);" onclick="CKEDITOR.tools.callFunction(46,this);return false;"><span class="cke_button_icon cke_button__replace_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -552px;background-size:auto;">&nbsp;</span><span id="cke_48_label" class="cke_button_label cke_button__replace_label" aria-hidden="false">Replace</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_49" class="cke_button cke_button__selectall cke_button_off" href="javascript:void('Select All')" title="Select All" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_49_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(47,event);" onfocus="return CKEDITOR.tools.callFunction(48,event);" onclick="CKEDITOR.tools.callFunction(49,this);return false;"><span class="cke_button_icon cke_button__selectall_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1728px;background-size:auto;">&nbsp;</span><span id="cke_49_label" class="cke_button_label cke_button__selectall_label" aria-hidden="false">Select All</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_50" class="cke_button cke_button__scayt cke_button_off" href="javascript:void('Spell Checker')" title="Spell Checker" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_50_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(50,event);" onfocus="return CKEDITOR.tools.callFunction(51,event);" onclick="CKEDITOR.tools.callFunction(52,this);return false;"><span class="cke_button_icon cke_button__scayt_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1872px;background-size:auto;">&nbsp;</span><span id="cke_50_label" class="cke_button_label cke_button__scayt_label" aria-hidden="false">Spell Check As You Type</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_51" class="cke_toolbar" aria-labelledby="cke_51_label" role="toolbar"><span id="cke_51_label" class="cke_voice_label">Forms</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_52" class="cke_button cke_button__form cke_button_off" href="javascript:void('Form')" title="Form" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_52_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(53,event);" onfocus="return CKEDITOR.tools.callFunction(54,event);" onclick="CKEDITOR.tools.callFunction(55,this);return false;"><span class="cke_button_icon cke_button__form_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -648px;background-size:auto;">&nbsp;</span><span id="cke_52_label" class="cke_button_label cke_button__form_label" aria-hidden="false">Form</span></a><a id="cke_53" class="cke_button cke_button__checkbox cke_button_off" href="javascript:void('Checkbox')" title="Checkbox" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_53_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(56,event);" onfocus="return CKEDITOR.tools.callFunction(57,event);" onclick="CKEDITOR.tools.callFunction(58,this);return false;"><span class="cke_button_icon cke_button__checkbox_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -624px;background-size:auto;">&nbsp;</span><span id="cke_53_label" class="cke_button_label cke_button__checkbox_label" aria-hidden="false">Checkbox</span></a><a id="cke_54" class="cke_button cke_button__radio cke_button_off" href="javascript:void('Radio Button')" title="Radio Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_54_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(59,event);" onfocus="return CKEDITOR.tools.callFunction(60,event);" onclick="CKEDITOR.tools.callFunction(61,this);return false;"><span class="cke_button_icon cke_button__radio_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -720px;background-size:auto;">&nbsp;</span><span id="cke_54_label" class="cke_button_label cke_button__radio_label" aria-hidden="false">Radio Button</span></a><a id="cke_55" class="cke_button cke_button__textfield cke_button_off" href="javascript:void('Text Field')" title="Text Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_55_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(62,event);" onfocus="return CKEDITOR.tools.callFunction(63,event);" onclick="CKEDITOR.tools.callFunction(64,this);return false;"><span class="cke_button_icon cke_button__textfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -864px;background-size:auto;">&nbsp;</span><span id="cke_55_label" class="cke_button_label cke_button__textfield_label" aria-hidden="false">Text Field</span></a><a id="cke_56" class="cke_button cke_button__textarea cke_button_off" href="javascript:void('Textarea')" title="Textarea" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_56_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(65,event);" onfocus="return CKEDITOR.tools.callFunction(66,event);" onclick="CKEDITOR.tools.callFunction(67,this);return false;"><span class="cke_button_icon cke_button__textarea_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -816px;background-size:auto;">&nbsp;</span><span id="cke_56_label" class="cke_button_label cke_button__textarea_label" aria-hidden="false">Textarea</span></a><a id="cke_57" class="cke_button cke_button__select cke_button_off" href="javascript:void('Selection Field')" title="Selection Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_57_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(68,event);" onfocus="return CKEDITOR.tools.callFunction(69,event);" onclick="CKEDITOR.tools.callFunction(70,this);return false;"><span class="cke_button_icon cke_button__select_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -768px;background-size:auto;">&nbsp;</span><span id="cke_57_label" class="cke_button_label cke_button__select_label" aria-hidden="false">Selection Field</span></a><a id="cke_58" class="cke_button cke_button__button cke_button_off" href="javascript:void('Button')" title="Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_58_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(71,event);" onfocus="return CKEDITOR.tools.callFunction(72,event);" onclick="CKEDITOR.tools.callFunction(73,this);return false;"><span class="cke_button_icon cke_button__button_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -600px;background-size:auto;">&nbsp;</span><span id="cke_58_label" class="cke_button_label cke_button__button_label" aria-hidden="false">Button</span></a><a id="cke_59" class="cke_button cke_button__imagebutton cke_button_off" href="javascript:void('Image Button')" title="Image Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_59_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(74,event);" onfocus="return CKEDITOR.tools.callFunction(75,event);" onclick="CKEDITOR.tools.callFunction(76,this);return false;"><span class="cke_button_icon cke_button__imagebutton_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -696px;background-size:auto;">&nbsp;</span><span id="cke_59_label" class="cke_button_label cke_button__imagebutton_label" aria-hidden="false">Image Button</span></a><a id="cke_60" class="cke_button cke_button__hiddenfield cke_button_off" href="javascript:void('Hidden Field')" title="Hidden Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_60_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(77,event);" onfocus="return CKEDITOR.tools.callFunction(78,event);" onclick="CKEDITOR.tools.callFunction(79,this);return false;"><span class="cke_button_icon cke_button__hiddenfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -672px;background-size:auto;">&nbsp;</span><span id="cke_60_label" class="cke_button_label cke_button__hiddenfield_label" aria-hidden="false">Hidden Field</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_61" class="cke_toolbar" aria-labelledby="cke_61_label" role="toolbar"><span id="cke_61_label" class="cke_voice_label">Basic Styles</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_62" class="cke_button cke_button__bold cke_button_off" href="javascript:void('Bold')" title="Bold" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_62_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(80,event);" onfocus="return CKEDITOR.tools.callFunction(81,event);" onclick="CKEDITOR.tools.callFunction(82,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -24px;background-size:auto;">&nbsp;</span><span id="cke_62_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">Bold</span></a><a id="cke_63" class="cke_button cke_button__italic cke_button_off" href="javascript:void('Italic')" title="Italic" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_63_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(83,event);" onfocus="return CKEDITOR.tools.callFunction(84,event);" onclick="CKEDITOR.tools.callFunction(85,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_63_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">Italic</span></a><a id="cke_64" class="cke_button cke_button__underline cke_button_off" href="javascript:void('Underline')" title="Underline" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_64_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(86,event);" onfocus="return CKEDITOR.tools.callFunction(87,event);" onclick="CKEDITOR.tools.callFunction(88,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_64_label" class="cke_button_label cke_button__underline_label" aria-hidden="false">Underline</span></a><a id="cke_65" class="cke_button cke_button__strike cke_button_off" href="javascript:void('Strikethrough')" title="Strikethrough" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_65_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(89,event);" onfocus="return CKEDITOR.tools.callFunction(90,event);" onclick="CKEDITOR.tools.callFunction(91,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_65_label" class="cke_button_label cke_button__strike_label" aria-hidden="false">Strikethrough</span></a><a id="cke_66" class="cke_button cke_button__subscript cke_button_off" href="javascript:void('Subscript')" title="Subscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_66_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(92,event);" onfocus="return CKEDITOR.tools.callFunction(93,event);" onclick="CKEDITOR.tools.callFunction(94,this);return false;"><span class="cke_button_icon cke_button__subscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -96px;background-size:auto;">&nbsp;</span><span id="cke_66_label" class="cke_button_label cke_button__subscript_label" aria-hidden="false">Subscript</span></a><a id="cke_67" class="cke_button cke_button__superscript cke_button_off" href="javascript:void('Superscript')" title="Superscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_67_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(95,event);" onfocus="return CKEDITOR.tools.callFunction(96,event);" onclick="CKEDITOR.tools.callFunction(97,this);return false;"><span class="cke_button_icon cke_button__superscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -120px;background-size:auto;">&nbsp;</span><span id="cke_67_label" class="cke_button_label cke_button__superscript_label" aria-hidden="false">Superscript</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_68" class="cke_button cke_button__removeformat cke_button_off" href="javascript:void('Remove Format')" title="Remove Format" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_68_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(98,event);" onfocus="return CKEDITOR.tools.callFunction(99,event);" onclick="CKEDITOR.tools.callFunction(100,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1680px;background-size:auto;">&nbsp;</span><span id="cke_68_label" class="cke_button_label cke_button__removeformat_label" aria-hidden="false">Remove Format</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_69" class="cke_toolbar" aria-labelledby="cke_69_label" role="toolbar"><span id="cke_69_label" class="cke_voice_label">Paragraph</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_70" class="cke_button cke_button__numberedlist cke_button_off" href="javascript:void('Insert/Remove Numbered List')" title="Insert/Remove Numbered List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_70_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(101,event);" onfocus="return CKEDITOR.tools.callFunction(102,event);" onclick="CKEDITOR.tools.callFunction(103,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1368px;background-size:auto;">&nbsp;</span><span id="cke_70_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">Insert/Remove Numbered List</span></a><a id="cke_71" class="cke_button cke_button__bulletedlist cke_button_off" href="javascript:void('Insert/Remove Bulleted List')" title="Insert/Remove Bulleted List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_71_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(104,event);" onfocus="return CKEDITOR.tools.callFunction(105,event);" onclick="CKEDITOR.tools.callFunction(106,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1320px;background-size:auto;">&nbsp;</span><span id="cke_71_label" class="cke_button_label cke_button__bulletedlist_label" aria-hidden="false">Insert/Remove Bulleted List</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_72" class="cke_button cke_button__outdent cke_button_disabled " href="javascript:void('Decrease Indent')" title="Decrease Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_72_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(107,event);" onfocus="return CKEDITOR.tools.callFunction(108,event);" onclick="CKEDITOR.tools.callFunction(109,this);return false;"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1032px;background-size:auto;">&nbsp;</span><span id="cke_72_label" class="cke_button_label cke_button__outdent_label" aria-hidden="false">Decrease Indent</span></a><a id="cke_73" class="cke_button cke_button__indent cke_button_off" href="javascript:void('Increase Indent')" title="Increase Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_73_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(110,event);" onfocus="return CKEDITOR.tools.callFunction(111,event);" onclick="CKEDITOR.tools.callFunction(112,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -984px;background-size:auto;">&nbsp;</span><span id="cke_73_label" class="cke_button_label cke_button__indent_label" aria-hidden="false">Increase Indent</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_74" class="cke_button cke_button__blockquote cke_button_off" href="javascript:void('Block Quote')" title="Block Quote" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_74_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(113,event);" onfocus="return CKEDITOR.tools.callFunction(114,event);" onclick="CKEDITOR.tools.callFunction(115,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -216px;background-size:auto;">&nbsp;</span><span id="cke_74_label" class="cke_button_label cke_button__blockquote_label" aria-hidden="false">Block Quote</span></a><a id="cke_75" class="cke_button cke_button__creatediv cke_button_off" href="javascript:void('Create Div Container')" title="Create Div Container" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_75_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(116,event);" onfocus="return CKEDITOR.tools.callFunction(117,event);" onclick="CKEDITOR.tools.callFunction(118,this);return false;"><span class="cke_button_icon cke_button__creatediv_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -480px;background-size:auto;">&nbsp;</span><span id="cke_75_label" class="cke_button_label cke_button__creatediv_label" aria-hidden="false">Create Div Container</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_76" class="cke_button cke_button__justifyleft cke_button_off" href="javascript:void('Align Left')" title="Align Left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_76_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(119,event);" onfocus="return CKEDITOR.tools.callFunction(120,event);" onclick="CKEDITOR.tools.callFunction(121,this);return false;"><span class="cke_button_icon cke_button__justifyleft_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1128px;background-size:auto;">&nbsp;</span><span id="cke_76_label" class="cke_button_label cke_button__justifyleft_label" aria-hidden="false">Align Left</span></a><a id="cke_77" class="cke_button cke_button__justifycenter cke_button_off" href="javascript:void('Center')" title="Center" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_77_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(122,event);" onfocus="return CKEDITOR.tools.callFunction(123,event);" onclick="CKEDITOR.tools.callFunction(124,this);return false;"><span class="cke_button_icon cke_button__justifycenter_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1104px;background-size:auto;">&nbsp;</span><span id="cke_77_label" class="cke_button_label cke_button__justifycenter_label" aria-hidden="false">Center</span></a><a id="cke_78" class="cke_button cke_button__justifyright cke_button_off" href="javascript:void('Align Right')" title="Align Right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_78_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(125,event);" onfocus="return CKEDITOR.tools.callFunction(126,event);" onclick="CKEDITOR.tools.callFunction(127,this);return false;"><span class="cke_button_icon cke_button__justifyright_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1152px;background-size:auto;">&nbsp;</span><span id="cke_78_label" class="cke_button_label cke_button__justifyright_label" aria-hidden="false">Align Right</span></a><a id="cke_79" class="cke_button cke_button__justifyblock cke_button_off" href="javascript:void('Justify')" title="Justify" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_79_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(128,event);" onfocus="return CKEDITOR.tools.callFunction(129,event);" onclick="CKEDITOR.tools.callFunction(130,this);return false;"><span class="cke_button_icon cke_button__justifyblock_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1080px;background-size:auto;">&nbsp;</span><span id="cke_79_label" class="cke_button_label cke_button__justifyblock_label" aria-hidden="false">Justify</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_80" class="cke_button cke_button__bidiltr cke_button_off" href="javascript:void('Text direction from left to right')" title="Text direction from left to right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_80_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(131,event);" onfocus="return CKEDITOR.tools.callFunction(132,event);" onclick="CKEDITOR.tools.callFunction(133,this);return false;"><span class="cke_button_icon cke_button__bidiltr_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -168px;background-size:auto;">&nbsp;</span><span id="cke_80_label" class="cke_button_label cke_button__bidiltr_label" aria-hidden="false">Text direction from left to right</span></a><a id="cke_81" class="cke_button cke_button__bidirtl cke_button_off" href="javascript:void('Text direction from right to left')" title="Text direction from right to left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_81_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(134,event);" onfocus="return CKEDITOR.tools.callFunction(135,event);" onclick="CKEDITOR.tools.callFunction(136,this);return false;"><span class="cke_button_icon cke_button__bidirtl_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -192px;background-size:auto;">&nbsp;</span><span id="cke_81_label" class="cke_button_label cke_button__bidirtl_label" aria-hidden="false">Text direction from right to left</span></a><a id="cke_82" class="cke_button cke_button__language cke_button_off" href="javascript:void('Set language')" title="Set language" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_82_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(137,event);" onfocus="return CKEDITOR.tools.callFunction(138,event);" onclick="CKEDITOR.tools.callFunction(139,this);return false;"><span class="cke_button_icon cke_button__language_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1176px;background-size:auto;">&nbsp;</span><span id="cke_82_label" class="cke_button_label cke_button__language_label" aria-hidden="false">Set language</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_83" class="cke_toolbar" aria-labelledby="cke_83_label" role="toolbar"><span id="cke_83_label" class="cke_voice_label">Links</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_84" class="cke_button cke_button__link cke_button_off" href="javascript:void('Link')" title="Link" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_84_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(140,event);" onfocus="return CKEDITOR.tools.callFunction(141,event);" onclick="CKEDITOR.tools.callFunction(142,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1248px;background-size:auto;">&nbsp;</span><span id="cke_84_label" class="cke_button_label cke_button__link_label" aria-hidden="false">Link</span></a><a id="cke_85" class="cke_button cke_button__unlink cke_button_disabled " href="javascript:void('Unlink')" title="Unlink" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_85_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(143,event);" onfocus="return CKEDITOR.tools.callFunction(144,event);" onclick="CKEDITOR.tools.callFunction(145,this);return false;"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1272px;background-size:auto;">&nbsp;</span><span id="cke_85_label" class="cke_button_label cke_button__unlink_label" aria-hidden="false">Unlink</span></a><a id="cke_86" class="cke_button cke_button__anchor cke_button_off" href="javascript:void('Anchor')" title="Anchor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_86_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(146,event);" onfocus="return CKEDITOR.tools.callFunction(147,event);" onclick="CKEDITOR.tools.callFunction(148,this);return false;"><span class="cke_button_icon cke_button__anchor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1224px;background-size:auto;">&nbsp;</span><span id="cke_86_label" class="cke_button_label cke_button__anchor_label" aria-hidden="false">Anchor</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_87" class="cke_toolbar" aria-labelledby="cke_87_label" role="toolbar"><span id="cke_87_label" class="cke_voice_label">Insert</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_88" class="cke_button cke_button__image cke_button_off" href="javascript:void('Image')" title="Image" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_88_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(149,event);" onfocus="return CKEDITOR.tools.callFunction(150,event);" onclick="CKEDITOR.tools.callFunction(151,this);return false;"><span class="cke_button_icon cke_button__image_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -936px;background-size:auto;">&nbsp;</span><span id="cke_88_label" class="cke_button_label cke_button__image_label" aria-hidden="false">Image</span></a><a id="cke_89" class="cke_button cke_button__flash cke_button_off" href="javascript:void('Flash')" title="Flash" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_89_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(152,event);" onfocus="return CKEDITOR.tools.callFunction(153,event);" onclick="CKEDITOR.tools.callFunction(154,this);return false;"><span class="cke_button_icon cke_button__flash_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -576px;background-size:auto;">&nbsp;</span><span id="cke_89_label" class="cke_button_label cke_button__flash_label" aria-hidden="false">Flash</span></a><a id="cke_90" class="cke_button cke_button__table cke_button_off" href="javascript:void('Table')" title="Table" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_90_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(155,event);" onfocus="return CKEDITOR.tools.callFunction(156,event);" onclick="CKEDITOR.tools.callFunction(157,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1896px;background-size:auto;">&nbsp;</span><span id="cke_90_label" class="cke_button_label cke_button__table_label" aria-hidden="false">Table</span></a><a id="cke_91" class="cke_button cke_button__horizontalrule cke_button_off" href="javascript:void('Insert Horizontal Line')" title="Insert Horizontal Line" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_91_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(158,event);" onfocus="return CKEDITOR.tools.callFunction(159,event);" onclick="CKEDITOR.tools.callFunction(160,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -888px;background-size:auto;">&nbsp;</span><span id="cke_91_label" class="cke_button_label cke_button__horizontalrule_label" aria-hidden="false">Insert Horizontal Line</span></a><a id="cke_92" class="cke_button cke_button__smiley cke_button_off" href="javascript:void('Smiley')" title="Smiley" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_92_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(161,event);" onfocus="return CKEDITOR.tools.callFunction(162,event);" onclick="CKEDITOR.tools.callFunction(163,this);return false;"><span class="cke_button_icon cke_button__smiley_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1056px;background-size:auto;">&nbsp;</span><span id="cke_92_label" class="cke_button_label cke_button__smiley_label" aria-hidden="false">Smiley</span></a><a id="cke_93" class="cke_button cke_button__specialchar cke_button_off" href="javascript:void('Insert Special Character')" title="Insert Special Character" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_93_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(164,event);" onfocus="return CKEDITOR.tools.callFunction(165,event);" onclick="CKEDITOR.tools.callFunction(166,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1848px;background-size:auto;">&nbsp;</span><span id="cke_93_label" class="cke_button_label cke_button__specialchar_label" aria-hidden="false">Insert Special Character</span></a><a id="cke_94" class="cke_button cke_button__pagebreak cke_button_off" href="javascript:void('Insert Page Break for Printing')" title="Insert Page Break for Printing" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_94_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(167,event);" onfocus="return CKEDITOR.tools.callFunction(168,event);" onclick="CKEDITOR.tools.callFunction(169,this);return false;"><span class="cke_button_icon cke_button__pagebreak_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1488px;background-size:auto;">&nbsp;</span><span id="cke_94_label" class="cke_button_label cke_button__pagebreak_label" aria-hidden="false">Insert Page Break for Printing</span></a><a id="cke_95" class="cke_button cke_button__iframe cke_button_off" href="javascript:void('IFrame')" title="IFrame" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_95_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(170,event);" onfocus="return CKEDITOR.tools.callFunction(171,event);" onclick="CKEDITOR.tools.callFunction(172,this);return false;"><span class="cke_button_icon cke_button__iframe_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -912px;background-size:auto;">&nbsp;</span><span id="cke_95_label" class="cke_button_label cke_button__iframe_label" aria-hidden="false">IFrame</span></a><a id="cke_96" class="cke_button cke_button__hkemoji cke_button_off" href="javascript:void('Insert emoji')" title="Insert emoji" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_96_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(173,event);" onfocus="return CKEDITOR.tools.callFunction(174,event);" onclick="CKEDITOR.tools.callFunction(175,this);return false;"><span class="cke_button_icon cke_button__hkemoji_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/icons/hkemoji.png?t=G4CD');background-position:0 0px;background-size:16px;">&nbsp;</span><span id="cke_96_label" class="cke_button_label cke_button__hkemoji_label" aria-hidden="false">Insert emoji</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_97" class="cke_toolbar" aria-labelledby="cke_97_label" role="toolbar"><span id="cke_97_label" class="cke_voice_label">Styles</span><span class="cke_toolbar_start"></span><span id="cke_27" class="cke_combo cke_combo__styles cke_combo_off" role="presentation"><span id="cke_27_label" class="cke_combo_label">Styles</span><a class="cke_combo_button" title="Formatting Styles" tabindex="-1" href="javascript:void('Formatting Styles')" hidefocus="true" role="button" aria-labelledby="cke_27_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(177,event,this);" onfocus="return CKEDITOR.tools.callFunction(178,event);" onclick="CKEDITOR.tools.callFunction(176,this);return false;"><span id="cke_27_text" class="cke_combo_text cke_combo_inlinelabel">Styles</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_28" class="cke_combo cke_combo__format cke_combo_off" role="presentation"><span id="cke_28_label" class="cke_combo_label">Format</span><a class="cke_combo_button" title="Paragraph Format" tabindex="-1" href="javascript:void('Paragraph Format')" hidefocus="true" role="button" aria-labelledby="cke_28_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(180,event,this);" onfocus="return CKEDITOR.tools.callFunction(181,event);" onclick="CKEDITOR.tools.callFunction(179,this);return false;"><span id="cke_28_text" class="cke_combo_text cke_combo_inlinelabel">Format</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_29" class="cke_combo cke_combo__font cke_combo_off" role="presentation"><span id="cke_29_label" class="cke_combo_label">Font</span><a class="cke_combo_button" title="Font Name" tabindex="-1" href="javascript:void('Font Name')" hidefocus="true" role="button" aria-labelledby="cke_29_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(183,event,this);" onfocus="return CKEDITOR.tools.callFunction(184,event);" onclick="CKEDITOR.tools.callFunction(182,this);return false;"><span id="cke_29_text" class="cke_combo_text cke_combo_inlinelabel">Font</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_30" class="cke_combo cke_combo__fontsize cke_combo_off" role="presentation"><span id="cke_30_label" class="cke_combo_label">Size</span><a class="cke_combo_button" title="Font Size" tabindex="-1" href="javascript:void('Font Size')" hidefocus="true" role="button" aria-labelledby="cke_30_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(186,event,this);" onfocus="return CKEDITOR.tools.callFunction(187,event);" onclick="CKEDITOR.tools.callFunction(185,this);return false;"><span id="cke_30_text" class="cke_combo_text cke_combo_inlinelabel">Size</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_98" class="cke_toolbar" aria-labelledby="cke_98_label" role="toolbar"><span id="cke_98_label" class="cke_voice_label">Colors</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_99" class="cke_button cke_button__textcolor cke_button_off" href="javascript:void('Text Color')" title="Text Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_99_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(188,event);" onfocus="return CKEDITOR.tools.callFunction(189,event);" onclick="CKEDITOR.tools.callFunction(190,this);return false;"><span class="cke_button_icon cke_button__textcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -408px;background-size:auto;">&nbsp;</span><span id="cke_99_label" class="cke_button_label cke_button__textcolor_label" aria-hidden="false">Text Color</span><span class="cke_button_arrow"></span></a><a id="cke_100" class="cke_button cke_button__bgcolor cke_button_off" href="javascript:void('Background Color')" title="Background Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_100_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(191,event);" onfocus="return CKEDITOR.tools.callFunction(192,event);" onclick="CKEDITOR.tools.callFunction(193,this);return false;"><span class="cke_button_icon cke_button__bgcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -384px;background-size:auto;">&nbsp;</span><span id="cke_100_label" class="cke_button_label cke_button__bgcolor_label" aria-hidden="false">Background Color</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_101" class="cke_toolbar" aria-labelledby="cke_101_label" role="toolbar"><span id="cke_101_label" class="cke_voice_label">Tools</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_102" class="cke_button cke_button__maximize cke_button_off" href="javascript:void('Maximize')" title="Maximize" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_102_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(194,event);" onfocus="return CKEDITOR.tools.callFunction(195,event);" onclick="CKEDITOR.tools.callFunction(196,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1392px;background-size:auto;">&nbsp;</span><span id="cke_102_label" class="cke_button_label cke_button__maximize_label" aria-hidden="false">Maximize</span></a><a id="cke_103" class="cke_button cke_button__showblocks cke_button_off" href="javascript:void('Show Blocks')" title="Show Blocks" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_103_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(197,event);" onfocus="return CKEDITOR.tools.callFunction(198,event);" onclick="CKEDITOR.tools.callFunction(199,this);return false;"><span class="cke_button_icon cke_button__showblocks_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1776px;background-size:auto;">&nbsp;</span><span id="cke_103_label" class="cke_button_label cke_button__showblocks_label" aria-hidden="false">Show Blocks</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_104" class="cke_toolbar" aria-labelledby="cke_104_label" role="toolbar"><span id="cke_104_label" class="cke_voice_label">about</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_105" class="cke_button cke_button__about cke_button_off" href="javascript:void('About CKEditor')" title="About CKEditor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_105_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(200,event);" onfocus="return CKEDITOR.tools.callFunction(201,event);" onclick="CKEDITOR.tools.callFunction(202,this);return false;"><span class="cke_button_icon cke_button__about_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 0px;background-size:auto;">&nbsp;</span><span id="cke_105_label" class="cke_button_label cke_button__about_label" aria-hidden="false">About CKEditor</span></a></span><span class="cke_toolbar_end"></span></span></span></span><div id="cke_1_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><span id="cke_110" class="cke_voice_label">Press ALT 0 for help</span><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" style="width: 100%; height: 100%;" title="Rich Text Editor, editor_1" aria-describedby="cke_110" tabindex="0" allowtransparency="true"></iframe></div><span id="cke_1_bottom" class="cke_bottom cke_reset_all" role="presentation" style="user-select: none;"><span id="cke_1_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="Resize" onmousedown="CKEDITOR.tools.callFunction(0, event)">◢</span><span id="cke_1_path_label" class="cke_voice_label">Elements path</span><span id="cke_1_path" class="cke_path" role="group" aria-labelledby="cke_1_path_label"><span class="cke_path_empty">&nbsp;</span></span></span></div></div>



                                                                    </div>



                                                                </div>

                                                                <!--   <div class="form-group">

                                                                    <div class="input-group mb-2">

                                                                    

                                                                        <div class="box w-100">
                                                                            <input type="file" name="userfile" id="file-7"
                                                                                class="inputfile inputfile-6"
                                                                                data-multiple-caption="{count} files selected" />
                                                                            <label for="file-7"><span>Upload
                                                                                    Picture</span> <strong><svg
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        width="20" height="17"
                                                                                        viewBox="0 0 20 17">
                                                                                        <path
                                                                                            d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" />
                                                                                        </svg> Choose a
                                                                                    file&hellip;</strong></label>
                                                                        </div>


                                                                        <p> *(Use .jpg or .png format Picture.)</p>

                                                                    </div>

                                                                </div> -->

                                                                    <div class="row mb-4 mt-4">
        <div class="col-lg-6">
                                    <a href="JavaScript:Void(0);" id="smam1" class="spam-link">Spam Checker</a>

                                    </div>
            <div class="col-lg-6 text-lg-right">
                                    <a href="#" class="spam-link" data-toggle="modal" data-target="#spammodal">Spam Trigger Words</a>

                                    </div>
        </div>

                                                



                                                                <div class="text-center">



                                                                    <input type="submit" value="Send" name="emailsbmit" class="btn btn-info btn-block rounded-0 py-2">
                                                                        <br>

                                            


                                                                </div>
                                                                



                                                        </div>



                                                        











                                                    </div>



                                                    



                                                </div>







                                            </div>



                                        </div><div class="modal fade s-modal" id="myModal0012" role="dialog">
                                            <div class="modal-dialog modal-sm modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">

                                                        <h2 class="modal-title">Are you sure delete it?</h2>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <a href="#"><button type="button" class="btn btn-danger">Yes delete
                                                                it!</button></a>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="modal fade" id="myModal2" role="dialog">



                                            <div class="modal-dialog">







                                                <!-- Modal content-->



                                                <div class="modal-content">







                                                    <div class="modal-body">

                                                        <button type="button" class="close" data-dismiss="modal">×</button>





                                                        <div class="">















                                                            <form method="post" action="#" enctype="multipart/form-data" onsubmit="return validateBadText2();"></form>



                                                                <!--Body-->



                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text">

                                                                                <i class="fa fa-user text-info"></i>

                                                                            </div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="name" value="T Paul" name="name" readonly="">



                                                                    </div>



                                                                </div>







                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-book text-info"></i></div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="sub" placeholder="Subject" value="New Message For T Paul" name="sub" readonly="">



                                                                    </div>



                                                                </div>











                                                                <input type="hidden" class="form-control" id="email" name="email" value="hr@onpassive.com">











                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i>
                                                                            </div>



                                                                        </div>



                                                                        <textarea name="msg" class="form-control" id="editor_2" placeholder="Enter your message" style="visibility: hidden; display: none;"></textarea><div id="cke_editor_2" class="cke_2 cke cke_reset cke_chrome cke_editor_editor_2 cke_ltr cke_browser_webkit" dir="ltr" lang="en" role="application" aria-labelledby="cke_editor_2_arialbl"><span id="cke_editor_2_arialbl" class="cke_voice_label">Rich Text Editor, editor_2</span><div class="cke_inner cke_reset" role="presentation"><span id="cke_2_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; user-select: none;"><span id="cke_119" class="cke_voice_label">Editor toolbars</span><span id="cke_2_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_119" onmousedown="return false;"><span id="cke_124" class="cke_toolbar" aria-labelledby="cke_124_label" role="toolbar"><span id="cke_124_label" class="cke_voice_label">Document</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_125" class="cke_button cke_button__source cke_button_off" href="javascript:void('Source')" title="Source" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_125_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(208,event);" onfocus="return CKEDITOR.tools.callFunction(209,event);" onclick="CKEDITOR.tools.callFunction(210,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1824px;background-size:auto;">&nbsp;</span><span id="cke_125_label" class="cke_button_label cke_button__source_label" aria-hidden="false">Source</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_126" class="cke_button cke_button__save cke_button_off" href="javascript:void('Save')" title="Save" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_126_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(211,event);" onfocus="return CKEDITOR.tools.callFunction(212,event);" onclick="CKEDITOR.tools.callFunction(213,this);return false;"><span class="cke_button_icon cke_button__save_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1704px;background-size:auto;">&nbsp;</span><span id="cke_126_label" class="cke_button_label cke_button__save_label" aria-hidden="false">Save</span></a><a id="cke_127" class="cke_button cke_button__newpage cke_button_off" href="javascript:void('New Page')" title="New Page" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_127_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(214,event);" onfocus="return CKEDITOR.tools.callFunction(215,event);" onclick="CKEDITOR.tools.callFunction(216,this);return false;"><span class="cke_button_icon cke_button__newpage_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1440px;background-size:auto;">&nbsp;</span><span id="cke_127_label" class="cke_button_label cke_button__newpage_label" aria-hidden="false">New Page</span></a><a id="cke_128" class="cke_button cke_button__preview cke_button_off" href="javascript:void('Preview')" title="Preview" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_128_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(217,event);" onfocus="return CKEDITOR.tools.callFunction(218,event);" onclick="CKEDITOR.tools.callFunction(219,this);return false;"><span class="cke_button_icon cke_button__preview_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1632px;background-size:auto;">&nbsp;</span><span id="cke_128_label" class="cke_button_label cke_button__preview_label" aria-hidden="false">Preview</span></a><a id="cke_129" class="cke_button cke_button__print cke_button_off" href="javascript:void('Print')" title="Print" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_129_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(220,event);" onfocus="return CKEDITOR.tools.callFunction(221,event);" onclick="CKEDITOR.tools.callFunction(222,this);return false;"><span class="cke_button_icon cke_button__print_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1656px;background-size:auto;">&nbsp;</span><span id="cke_129_label" class="cke_button_label cke_button__print_label" aria-hidden="false">Print</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_130" class="cke_button cke_button__templates cke_button_off" href="javascript:void('Templates')" title="Templates" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_130_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(223,event);" onfocus="return CKEDITOR.tools.callFunction(224,event);" onclick="CKEDITOR.tools.callFunction(225,this);return false;"><span class="cke_button_icon cke_button__templates_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -456px;background-size:auto;">&nbsp;</span><span id="cke_130_label" class="cke_button_label cke_button__templates_label" aria-hidden="false">Templates</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_131" class="cke_toolbar" aria-labelledby="cke_131_label" role="toolbar"><span id="cke_131_label" class="cke_voice_label">Clipboard/Undo</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_132" class="cke_button cke_button__cut cke_button_disabled " href="javascript:void('Cut')" title="Cut" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_132_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(226,event);" onfocus="return CKEDITOR.tools.callFunction(227,event);" onclick="CKEDITOR.tools.callFunction(228,this);return false;"><span class="cke_button_icon cke_button__cut_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -312px;background-size:auto;">&nbsp;</span><span id="cke_132_label" class="cke_button_label cke_button__cut_label" aria-hidden="false">Cut</span></a><a id="cke_133" class="cke_button cke_button__copy cke_button_disabled " href="javascript:void('Copy')" title="Copy" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_133_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(229,event);" onfocus="return CKEDITOR.tools.callFunction(230,event);" onclick="CKEDITOR.tools.callFunction(231,this);return false;"><span class="cke_button_icon cke_button__copy_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -264px;background-size:auto;">&nbsp;</span><span id="cke_133_label" class="cke_button_label cke_button__copy_label" aria-hidden="false">Copy</span></a><a id="cke_134" class="cke_button cke_button__paste cke_button_off" href="javascript:void('Paste')" title="Paste" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_134_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(232,event);" onfocus="return CKEDITOR.tools.callFunction(233,event);" onclick="CKEDITOR.tools.callFunction(234,this);return false;"><span class="cke_button_icon cke_button__paste_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -360px;background-size:auto;">&nbsp;</span><span id="cke_134_label" class="cke_button_label cke_button__paste_label" aria-hidden="false">Paste</span></a><a id="cke_135" class="cke_button cke_button__pastetext cke_button_off" href="javascript:void('Paste as plain text')" title="Paste as plain text" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_135_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(235,event);" onfocus="return CKEDITOR.tools.callFunction(236,event);" onclick="CKEDITOR.tools.callFunction(237,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1536px;background-size:auto;">&nbsp;</span><span id="cke_135_label" class="cke_button_label cke_button__pastetext_label" aria-hidden="false">Paste as plain text</span></a><a id="cke_136" class="cke_button cke_button__pastefromword cke_button_off" href="javascript:void('Paste from Word')" title="Paste from Word" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_136_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(238,event);" onfocus="return CKEDITOR.tools.callFunction(239,event);" onclick="CKEDITOR.tools.callFunction(240,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1584px;background-size:auto;">&nbsp;</span><span id="cke_136_label" class="cke_button_label cke_button__pastefromword_label" aria-hidden="false">Paste from Word</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_137" class="cke_button cke_button__undo cke_button_disabled " href="javascript:void('Undo')" title="Undo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_137_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(241,event);" onfocus="return CKEDITOR.tools.callFunction(242,event);" onclick="CKEDITOR.tools.callFunction(243,this);return false;"><span class="cke_button_icon cke_button__undo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1992px;background-size:auto;">&nbsp;</span><span id="cke_137_label" class="cke_button_label cke_button__undo_label" aria-hidden="false">Undo</span></a><a id="cke_138" class="cke_button cke_button__redo cke_button_disabled " href="javascript:void('Redo')" title="Redo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_138_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(244,event);" onfocus="return CKEDITOR.tools.callFunction(245,event);" onclick="CKEDITOR.tools.callFunction(246,this);return false;"><span class="cke_button_icon cke_button__redo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1944px;background-size:auto;">&nbsp;</span><span id="cke_138_label" class="cke_button_label cke_button__redo_label" aria-hidden="false">Redo</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_139" class="cke_toolbar" aria-labelledby="cke_139_label" role="toolbar"><span id="cke_139_label" class="cke_voice_label">Editing</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_140" class="cke_button cke_button__find cke_button_off" href="javascript:void('Find')" title="Find" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_140_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(247,event);" onfocus="return CKEDITOR.tools.callFunction(248,event);" onclick="CKEDITOR.tools.callFunction(249,this);return false;"><span class="cke_button_icon cke_button__find_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -528px;background-size:auto;">&nbsp;</span><span id="cke_140_label" class="cke_button_label cke_button__find_label" aria-hidden="false">Find</span></a><a id="cke_141" class="cke_button cke_button__replace cke_button_off" href="javascript:void('Replace')" title="Replace" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_141_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(250,event);" onfocus="return CKEDITOR.tools.callFunction(251,event);" onclick="CKEDITOR.tools.callFunction(252,this);return false;"><span class="cke_button_icon cke_button__replace_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -552px;background-size:auto;">&nbsp;</span><span id="cke_141_label" class="cke_button_label cke_button__replace_label" aria-hidden="false">Replace</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_142" class="cke_button cke_button__selectall cke_button_off" href="javascript:void('Select All')" title="Select All" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_142_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(253,event);" onfocus="return CKEDITOR.tools.callFunction(254,event);" onclick="CKEDITOR.tools.callFunction(255,this);return false;"><span class="cke_button_icon cke_button__selectall_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1728px;background-size:auto;">&nbsp;</span><span id="cke_142_label" class="cke_button_label cke_button__selectall_label" aria-hidden="false">Select All</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_143" class="cke_button cke_button__scayt cke_button_off" href="javascript:void('Spell Checker')" title="Spell Checker" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_143_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(256,event);" onfocus="return CKEDITOR.tools.callFunction(257,event);" onclick="CKEDITOR.tools.callFunction(258,this);return false;"><span class="cke_button_icon cke_button__scayt_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1872px;background-size:auto;">&nbsp;</span><span id="cke_143_label" class="cke_button_label cke_button__scayt_label" aria-hidden="false">Spell Check As You Type</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_144" class="cke_toolbar" aria-labelledby="cke_144_label" role="toolbar"><span id="cke_144_label" class="cke_voice_label">Forms</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_145" class="cke_button cke_button__form cke_button_off" href="javascript:void('Form')" title="Form" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_145_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(259,event);" onfocus="return CKEDITOR.tools.callFunction(260,event);" onclick="CKEDITOR.tools.callFunction(261,this);return false;"><span class="cke_button_icon cke_button__form_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -648px;background-size:auto;">&nbsp;</span><span id="cke_145_label" class="cke_button_label cke_button__form_label" aria-hidden="false">Form</span></a><a id="cke_146" class="cke_button cke_button__checkbox cke_button_off" href="javascript:void('Checkbox')" title="Checkbox" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_146_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(262,event);" onfocus="return CKEDITOR.tools.callFunction(263,event);" onclick="CKEDITOR.tools.callFunction(264,this);return false;"><span class="cke_button_icon cke_button__checkbox_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -624px;background-size:auto;">&nbsp;</span><span id="cke_146_label" class="cke_button_label cke_button__checkbox_label" aria-hidden="false">Checkbox</span></a><a id="cke_147" class="cke_button cke_button__radio cke_button_off" href="javascript:void('Radio Button')" title="Radio Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_147_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(265,event);" onfocus="return CKEDITOR.tools.callFunction(266,event);" onclick="CKEDITOR.tools.callFunction(267,this);return false;"><span class="cke_button_icon cke_button__radio_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -720px;background-size:auto;">&nbsp;</span><span id="cke_147_label" class="cke_button_label cke_button__radio_label" aria-hidden="false">Radio Button</span></a><a id="cke_148" class="cke_button cke_button__textfield cke_button_off" href="javascript:void('Text Field')" title="Text Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_148_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(268,event);" onfocus="return CKEDITOR.tools.callFunction(269,event);" onclick="CKEDITOR.tools.callFunction(270,this);return false;"><span class="cke_button_icon cke_button__textfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -864px;background-size:auto;">&nbsp;</span><span id="cke_148_label" class="cke_button_label cke_button__textfield_label" aria-hidden="false">Text Field</span></a><a id="cke_149" class="cke_button cke_button__textarea cke_button_off" href="javascript:void('Textarea')" title="Textarea" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_149_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(271,event);" onfocus="return CKEDITOR.tools.callFunction(272,event);" onclick="CKEDITOR.tools.callFunction(273,this);return false;"><span class="cke_button_icon cke_button__textarea_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -816px;background-size:auto;">&nbsp;</span><span id="cke_149_label" class="cke_button_label cke_button__textarea_label" aria-hidden="false">Textarea</span></a><a id="cke_150" class="cke_button cke_button__select cke_button_off" href="javascript:void('Selection Field')" title="Selection Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_150_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(274,event);" onfocus="return CKEDITOR.tools.callFunction(275,event);" onclick="CKEDITOR.tools.callFunction(276,this);return false;"><span class="cke_button_icon cke_button__select_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -768px;background-size:auto;">&nbsp;</span><span id="cke_150_label" class="cke_button_label cke_button__select_label" aria-hidden="false">Selection Field</span></a><a id="cke_151" class="cke_button cke_button__button cke_button_off" href="javascript:void('Button')" title="Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_151_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(277,event);" onfocus="return CKEDITOR.tools.callFunction(278,event);" onclick="CKEDITOR.tools.callFunction(279,this);return false;"><span class="cke_button_icon cke_button__button_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -600px;background-size:auto;">&nbsp;</span><span id="cke_151_label" class="cke_button_label cke_button__button_label" aria-hidden="false">Button</span></a><a id="cke_152" class="cke_button cke_button__imagebutton cke_button_off" href="javascript:void('Image Button')" title="Image Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_152_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(280,event);" onfocus="return CKEDITOR.tools.callFunction(281,event);" onclick="CKEDITOR.tools.callFunction(282,this);return false;"><span class="cke_button_icon cke_button__imagebutton_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -696px;background-size:auto;">&nbsp;</span><span id="cke_152_label" class="cke_button_label cke_button__imagebutton_label" aria-hidden="false">Image Button</span></a><a id="cke_153" class="cke_button cke_button__hiddenfield cke_button_off" href="javascript:void('Hidden Field')" title="Hidden Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_153_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(283,event);" onfocus="return CKEDITOR.tools.callFunction(284,event);" onclick="CKEDITOR.tools.callFunction(285,this);return false;"><span class="cke_button_icon cke_button__hiddenfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -672px;background-size:auto;">&nbsp;</span><span id="cke_153_label" class="cke_button_label cke_button__hiddenfield_label" aria-hidden="false">Hidden Field</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_154" class="cke_toolbar" aria-labelledby="cke_154_label" role="toolbar"><span id="cke_154_label" class="cke_voice_label">Basic Styles</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_155" class="cke_button cke_button__bold cke_button_off" href="javascript:void('Bold')" title="Bold" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_155_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(286,event);" onfocus="return CKEDITOR.tools.callFunction(287,event);" onclick="CKEDITOR.tools.callFunction(288,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -24px;background-size:auto;">&nbsp;</span><span id="cke_155_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">Bold</span></a><a id="cke_156" class="cke_button cke_button__italic cke_button_off" href="javascript:void('Italic')" title="Italic" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_156_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(289,event);" onfocus="return CKEDITOR.tools.callFunction(290,event);" onclick="CKEDITOR.tools.callFunction(291,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_156_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">Italic</span></a><a id="cke_157" class="cke_button cke_button__underline cke_button_off" href="javascript:void('Underline')" title="Underline" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_157_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(292,event);" onfocus="return CKEDITOR.tools.callFunction(293,event);" onclick="CKEDITOR.tools.callFunction(294,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_157_label" class="cke_button_label cke_button__underline_label" aria-hidden="false">Underline</span></a><a id="cke_158" class="cke_button cke_button__strike cke_button_off" href="javascript:void('Strikethrough')" title="Strikethrough" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_158_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(295,event);" onfocus="return CKEDITOR.tools.callFunction(296,event);" onclick="CKEDITOR.tools.callFunction(297,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_158_label" class="cke_button_label cke_button__strike_label" aria-hidden="false">Strikethrough</span></a><a id="cke_159" class="cke_button cke_button__subscript cke_button_off" href="javascript:void('Subscript')" title="Subscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_159_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(298,event);" onfocus="return CKEDITOR.tools.callFunction(299,event);" onclick="CKEDITOR.tools.callFunction(300,this);return false;"><span class="cke_button_icon cke_button__subscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -96px;background-size:auto;">&nbsp;</span><span id="cke_159_label" class="cke_button_label cke_button__subscript_label" aria-hidden="false">Subscript</span></a><a id="cke_160" class="cke_button cke_button__superscript cke_button_off" href="javascript:void('Superscript')" title="Superscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_160_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(301,event);" onfocus="return CKEDITOR.tools.callFunction(302,event);" onclick="CKEDITOR.tools.callFunction(303,this);return false;"><span class="cke_button_icon cke_button__superscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -120px;background-size:auto;">&nbsp;</span><span id="cke_160_label" class="cke_button_label cke_button__superscript_label" aria-hidden="false">Superscript</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_161" class="cke_button cke_button__removeformat cke_button_off" href="javascript:void('Remove Format')" title="Remove Format" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_161_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(304,event);" onfocus="return CKEDITOR.tools.callFunction(305,event);" onclick="CKEDITOR.tools.callFunction(306,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1680px;background-size:auto;">&nbsp;</span><span id="cke_161_label" class="cke_button_label cke_button__removeformat_label" aria-hidden="false">Remove Format</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_162" class="cke_toolbar" aria-labelledby="cke_162_label" role="toolbar"><span id="cke_162_label" class="cke_voice_label">Paragraph</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_163" class="cke_button cke_button__numberedlist cke_button_off" href="javascript:void('Insert/Remove Numbered List')" title="Insert/Remove Numbered List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_163_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(307,event);" onfocus="return CKEDITOR.tools.callFunction(308,event);" onclick="CKEDITOR.tools.callFunction(309,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1368px;background-size:auto;">&nbsp;</span><span id="cke_163_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">Insert/Remove Numbered List</span></a><a id="cke_164" class="cke_button cke_button__bulletedlist cke_button_off" href="javascript:void('Insert/Remove Bulleted List')" title="Insert/Remove Bulleted List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_164_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(310,event);" onfocus="return CKEDITOR.tools.callFunction(311,event);" onclick="CKEDITOR.tools.callFunction(312,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1320px;background-size:auto;">&nbsp;</span><span id="cke_164_label" class="cke_button_label cke_button__bulletedlist_label" aria-hidden="false">Insert/Remove Bulleted List</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_165" class="cke_button cke_button__outdent cke_button_disabled " href="javascript:void('Decrease Indent')" title="Decrease Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_165_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(313,event);" onfocus="return CKEDITOR.tools.callFunction(314,event);" onclick="CKEDITOR.tools.callFunction(315,this);return false;"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1032px;background-size:auto;">&nbsp;</span><span id="cke_165_label" class="cke_button_label cke_button__outdent_label" aria-hidden="false">Decrease Indent</span></a><a id="cke_166" class="cke_button cke_button__indent cke_button_off" href="javascript:void('Increase Indent')" title="Increase Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_166_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(316,event);" onfocus="return CKEDITOR.tools.callFunction(317,event);" onclick="CKEDITOR.tools.callFunction(318,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -984px;background-size:auto;">&nbsp;</span><span id="cke_166_label" class="cke_button_label cke_button__indent_label" aria-hidden="false">Increase Indent</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_167" class="cke_button cke_button__blockquote cke_button_off" href="javascript:void('Block Quote')" title="Block Quote" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_167_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(319,event);" onfocus="return CKEDITOR.tools.callFunction(320,event);" onclick="CKEDITOR.tools.callFunction(321,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -216px;background-size:auto;">&nbsp;</span><span id="cke_167_label" class="cke_button_label cke_button__blockquote_label" aria-hidden="false">Block Quote</span></a><a id="cke_168" class="cke_button cke_button__creatediv cke_button_off" href="javascript:void('Create Div Container')" title="Create Div Container" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_168_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(322,event);" onfocus="return CKEDITOR.tools.callFunction(323,event);" onclick="CKEDITOR.tools.callFunction(324,this);return false;"><span class="cke_button_icon cke_button__creatediv_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -480px;background-size:auto;">&nbsp;</span><span id="cke_168_label" class="cke_button_label cke_button__creatediv_label" aria-hidden="false">Create Div Container</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_169" class="cke_button cke_button__justifyleft cke_button_off" href="javascript:void('Align Left')" title="Align Left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_169_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(325,event);" onfocus="return CKEDITOR.tools.callFunction(326,event);" onclick="CKEDITOR.tools.callFunction(327,this);return false;"><span class="cke_button_icon cke_button__justifyleft_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1128px;background-size:auto;">&nbsp;</span><span id="cke_169_label" class="cke_button_label cke_button__justifyleft_label" aria-hidden="false">Align Left</span></a><a id="cke_170" class="cke_button cke_button__justifycenter cke_button_off" href="javascript:void('Center')" title="Center" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_170_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(328,event);" onfocus="return CKEDITOR.tools.callFunction(329,event);" onclick="CKEDITOR.tools.callFunction(330,this);return false;"><span class="cke_button_icon cke_button__justifycenter_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1104px;background-size:auto;">&nbsp;</span><span id="cke_170_label" class="cke_button_label cke_button__justifycenter_label" aria-hidden="false">Center</span></a><a id="cke_171" class="cke_button cke_button__justifyright cke_button_off" href="javascript:void('Align Right')" title="Align Right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_171_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(331,event);" onfocus="return CKEDITOR.tools.callFunction(332,event);" onclick="CKEDITOR.tools.callFunction(333,this);return false;"><span class="cke_button_icon cke_button__justifyright_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1152px;background-size:auto;">&nbsp;</span><span id="cke_171_label" class="cke_button_label cke_button__justifyright_label" aria-hidden="false">Align Right</span></a><a id="cke_172" class="cke_button cke_button__justifyblock cke_button_off" href="javascript:void('Justify')" title="Justify" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_172_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(334,event);" onfocus="return CKEDITOR.tools.callFunction(335,event);" onclick="CKEDITOR.tools.callFunction(336,this);return false;"><span class="cke_button_icon cke_button__justifyblock_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1080px;background-size:auto;">&nbsp;</span><span id="cke_172_label" class="cke_button_label cke_button__justifyblock_label" aria-hidden="false">Justify</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_173" class="cke_button cke_button__bidiltr cke_button_off" href="javascript:void('Text direction from left to right')" title="Text direction from left to right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_173_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(337,event);" onfocus="return CKEDITOR.tools.callFunction(338,event);" onclick="CKEDITOR.tools.callFunction(339,this);return false;"><span class="cke_button_icon cke_button__bidiltr_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -168px;background-size:auto;">&nbsp;</span><span id="cke_173_label" class="cke_button_label cke_button__bidiltr_label" aria-hidden="false">Text direction from left to right</span></a><a id="cke_174" class="cke_button cke_button__bidirtl cke_button_off" href="javascript:void('Text direction from right to left')" title="Text direction from right to left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_174_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(340,event);" onfocus="return CKEDITOR.tools.callFunction(341,event);" onclick="CKEDITOR.tools.callFunction(342,this);return false;"><span class="cke_button_icon cke_button__bidirtl_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -192px;background-size:auto;">&nbsp;</span><span id="cke_174_label" class="cke_button_label cke_button__bidirtl_label" aria-hidden="false">Text direction from right to left</span></a><a id="cke_175" class="cke_button cke_button__language cke_button_off" href="javascript:void('Set language')" title="Set language" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_175_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(343,event);" onfocus="return CKEDITOR.tools.callFunction(344,event);" onclick="CKEDITOR.tools.callFunction(345,this);return false;"><span class="cke_button_icon cke_button__language_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1176px;background-size:auto;">&nbsp;</span><span id="cke_175_label" class="cke_button_label cke_button__language_label" aria-hidden="false">Set language</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_176" class="cke_toolbar" aria-labelledby="cke_176_label" role="toolbar"><span id="cke_176_label" class="cke_voice_label">Links</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_177" class="cke_button cke_button__link cke_button_off" href="javascript:void('Link')" title="Link" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_177_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(346,event);" onfocus="return CKEDITOR.tools.callFunction(347,event);" onclick="CKEDITOR.tools.callFunction(348,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1248px;background-size:auto;">&nbsp;</span><span id="cke_177_label" class="cke_button_label cke_button__link_label" aria-hidden="false">Link</span></a><a id="cke_178" class="cke_button cke_button__unlink cke_button_disabled " href="javascript:void('Unlink')" title="Unlink" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_178_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(349,event);" onfocus="return CKEDITOR.tools.callFunction(350,event);" onclick="CKEDITOR.tools.callFunction(351,this);return false;"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1272px;background-size:auto;">&nbsp;</span><span id="cke_178_label" class="cke_button_label cke_button__unlink_label" aria-hidden="false">Unlink</span></a><a id="cke_179" class="cke_button cke_button__anchor cke_button_off" href="javascript:void('Anchor')" title="Anchor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_179_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(352,event);" onfocus="return CKEDITOR.tools.callFunction(353,event);" onclick="CKEDITOR.tools.callFunction(354,this);return false;"><span class="cke_button_icon cke_button__anchor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1224px;background-size:auto;">&nbsp;</span><span id="cke_179_label" class="cke_button_label cke_button__anchor_label" aria-hidden="false">Anchor</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_180" class="cke_toolbar" aria-labelledby="cke_180_label" role="toolbar"><span id="cke_180_label" class="cke_voice_label">Insert</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_181" class="cke_button cke_button__image cke_button_off" href="javascript:void('Image')" title="Image" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_181_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(355,event);" onfocus="return CKEDITOR.tools.callFunction(356,event);" onclick="CKEDITOR.tools.callFunction(357,this);return false;"><span class="cke_button_icon cke_button__image_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -936px;background-size:auto;">&nbsp;</span><span id="cke_181_label" class="cke_button_label cke_button__image_label" aria-hidden="false">Image</span></a><a id="cke_182" class="cke_button cke_button__flash cke_button_off" href="javascript:void('Flash')" title="Flash" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_182_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(358,event);" onfocus="return CKEDITOR.tools.callFunction(359,event);" onclick="CKEDITOR.tools.callFunction(360,this);return false;"><span class="cke_button_icon cke_button__flash_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -576px;background-size:auto;">&nbsp;</span><span id="cke_182_label" class="cke_button_label cke_button__flash_label" aria-hidden="false">Flash</span></a><a id="cke_183" class="cke_button cke_button__table cke_button_off" href="javascript:void('Table')" title="Table" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_183_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(361,event);" onfocus="return CKEDITOR.tools.callFunction(362,event);" onclick="CKEDITOR.tools.callFunction(363,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1896px;background-size:auto;">&nbsp;</span><span id="cke_183_label" class="cke_button_label cke_button__table_label" aria-hidden="false">Table</span></a><a id="cke_184" class="cke_button cke_button__horizontalrule cke_button_off" href="javascript:void('Insert Horizontal Line')" title="Insert Horizontal Line" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_184_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(364,event);" onfocus="return CKEDITOR.tools.callFunction(365,event);" onclick="CKEDITOR.tools.callFunction(366,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -888px;background-size:auto;">&nbsp;</span><span id="cke_184_label" class="cke_button_label cke_button__horizontalrule_label" aria-hidden="false">Insert Horizontal Line</span></a><a id="cke_185" class="cke_button cke_button__smiley cke_button_off" href="javascript:void('Smiley')" title="Smiley" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_185_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(367,event);" onfocus="return CKEDITOR.tools.callFunction(368,event);" onclick="CKEDITOR.tools.callFunction(369,this);return false;"><span class="cke_button_icon cke_button__smiley_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1056px;background-size:auto;">&nbsp;</span><span id="cke_185_label" class="cke_button_label cke_button__smiley_label" aria-hidden="false">Smiley</span></a><a id="cke_186" class="cke_button cke_button__specialchar cke_button_off" href="javascript:void('Insert Special Character')" title="Insert Special Character" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_186_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(370,event);" onfocus="return CKEDITOR.tools.callFunction(371,event);" onclick="CKEDITOR.tools.callFunction(372,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1848px;background-size:auto;">&nbsp;</span><span id="cke_186_label" class="cke_button_label cke_button__specialchar_label" aria-hidden="false">Insert Special Character</span></a><a id="cke_187" class="cke_button cke_button__pagebreak cke_button_off" href="javascript:void('Insert Page Break for Printing')" title="Insert Page Break for Printing" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_187_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(373,event);" onfocus="return CKEDITOR.tools.callFunction(374,event);" onclick="CKEDITOR.tools.callFunction(375,this);return false;"><span class="cke_button_icon cke_button__pagebreak_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1488px;background-size:auto;">&nbsp;</span><span id="cke_187_label" class="cke_button_label cke_button__pagebreak_label" aria-hidden="false">Insert Page Break for Printing</span></a><a id="cke_188" class="cke_button cke_button__iframe cke_button_off" href="javascript:void('IFrame')" title="IFrame" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_188_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(376,event);" onfocus="return CKEDITOR.tools.callFunction(377,event);" onclick="CKEDITOR.tools.callFunction(378,this);return false;"><span class="cke_button_icon cke_button__iframe_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -912px;background-size:auto;">&nbsp;</span><span id="cke_188_label" class="cke_button_label cke_button__iframe_label" aria-hidden="false">IFrame</span></a><a id="cke_189" class="cke_button cke_button__hkemoji cke_button_off" href="javascript:void('Insert emoji')" title="Insert emoji" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_189_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(379,event);" onfocus="return CKEDITOR.tools.callFunction(380,event);" onclick="CKEDITOR.tools.callFunction(381,this);return false;"><span class="cke_button_icon cke_button__hkemoji_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/icons/hkemoji.png?t=G4CD');background-position:0 0px;background-size:16px;">&nbsp;</span><span id="cke_189_label" class="cke_button_label cke_button__hkemoji_label" aria-hidden="false">Insert emoji</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_190" class="cke_toolbar" aria-labelledby="cke_190_label" role="toolbar"><span id="cke_190_label" class="cke_voice_label">Styles</span><span class="cke_toolbar_start"></span><span id="cke_120" class="cke_combo cke_combo__styles cke_combo_off" role="presentation"><span id="cke_120_label" class="cke_combo_label">Styles</span><a class="cke_combo_button" title="Formatting Styles" tabindex="-1" href="javascript:void('Formatting Styles')" hidefocus="true" role="button" aria-labelledby="cke_120_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(383,event,this);" onfocus="return CKEDITOR.tools.callFunction(384,event);" onclick="CKEDITOR.tools.callFunction(382,this);return false;"><span id="cke_120_text" class="cke_combo_text cke_combo_inlinelabel">Styles</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_121" class="cke_combo cke_combo__format cke_combo_off" role="presentation"><span id="cke_121_label" class="cke_combo_label">Format</span><a class="cke_combo_button" title="Paragraph Format" tabindex="-1" href="javascript:void('Paragraph Format')" hidefocus="true" role="button" aria-labelledby="cke_121_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(386,event,this);" onfocus="return CKEDITOR.tools.callFunction(387,event);" onclick="CKEDITOR.tools.callFunction(385,this);return false;"><span id="cke_121_text" class="cke_combo_text cke_combo_inlinelabel">Format</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_122" class="cke_combo cke_combo__font cke_combo_off" role="presentation"><span id="cke_122_label" class="cke_combo_label">Font</span><a class="cke_combo_button" title="Font Name" tabindex="-1" href="javascript:void('Font Name')" hidefocus="true" role="button" aria-labelledby="cke_122_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(389,event,this);" onfocus="return CKEDITOR.tools.callFunction(390,event);" onclick="CKEDITOR.tools.callFunction(388,this);return false;"><span id="cke_122_text" class="cke_combo_text cke_combo_inlinelabel">Font</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_123" class="cke_combo cke_combo__fontsize cke_combo_off" role="presentation"><span id="cke_123_label" class="cke_combo_label">Size</span><a class="cke_combo_button" title="Font Size" tabindex="-1" href="javascript:void('Font Size')" hidefocus="true" role="button" aria-labelledby="cke_123_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(392,event,this);" onfocus="return CKEDITOR.tools.callFunction(393,event);" onclick="CKEDITOR.tools.callFunction(391,this);return false;"><span id="cke_123_text" class="cke_combo_text cke_combo_inlinelabel">Size</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_191" class="cke_toolbar" aria-labelledby="cke_191_label" role="toolbar"><span id="cke_191_label" class="cke_voice_label">Colors</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_192" class="cke_button cke_button__textcolor cke_button_off" href="javascript:void('Text Color')" title="Text Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_192_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(394,event);" onfocus="return CKEDITOR.tools.callFunction(395,event);" onclick="CKEDITOR.tools.callFunction(396,this);return false;"><span class="cke_button_icon cke_button__textcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -408px;background-size:auto;">&nbsp;</span><span id="cke_192_label" class="cke_button_label cke_button__textcolor_label" aria-hidden="false">Text Color</span><span class="cke_button_arrow"></span></a><a id="cke_193" class="cke_button cke_button__bgcolor cke_button_off" href="javascript:void('Background Color')" title="Background Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_193_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(397,event);" onfocus="return CKEDITOR.tools.callFunction(398,event);" onclick="CKEDITOR.tools.callFunction(399,this);return false;"><span class="cke_button_icon cke_button__bgcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -384px;background-size:auto;">&nbsp;</span><span id="cke_193_label" class="cke_button_label cke_button__bgcolor_label" aria-hidden="false">Background Color</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_194" class="cke_toolbar" aria-labelledby="cke_194_label" role="toolbar"><span id="cke_194_label" class="cke_voice_label">Tools</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_195" class="cke_button cke_button__maximize cke_button_off" href="javascript:void('Maximize')" title="Maximize" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_195_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(400,event);" onfocus="return CKEDITOR.tools.callFunction(401,event);" onclick="CKEDITOR.tools.callFunction(402,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1392px;background-size:auto;">&nbsp;</span><span id="cke_195_label" class="cke_button_label cke_button__maximize_label" aria-hidden="false">Maximize</span></a><a id="cke_196" class="cke_button cke_button__showblocks cke_button_off" href="javascript:void('Show Blocks')" title="Show Blocks" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_196_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(403,event);" onfocus="return CKEDITOR.tools.callFunction(404,event);" onclick="CKEDITOR.tools.callFunction(405,this);return false;"><span class="cke_button_icon cke_button__showblocks_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1776px;background-size:auto;">&nbsp;</span><span id="cke_196_label" class="cke_button_label cke_button__showblocks_label" aria-hidden="false">Show Blocks</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_197" class="cke_toolbar" aria-labelledby="cke_197_label" role="toolbar"><span id="cke_197_label" class="cke_voice_label">about</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_198" class="cke_button cke_button__about cke_button_off" href="javascript:void('About CKEditor')" title="About CKEditor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_198_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(406,event);" onfocus="return CKEDITOR.tools.callFunction(407,event);" onclick="CKEDITOR.tools.callFunction(408,this);return false;"><span class="cke_button_icon cke_button__about_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 0px;background-size:auto;">&nbsp;</span><span id="cke_198_label" class="cke_button_label cke_button__about_label" aria-hidden="false">About CKEditor</span></a></span><span class="cke_toolbar_end"></span></span></span></span><div id="cke_2_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><span id="cke_203" class="cke_voice_label">Press ALT 0 for help</span><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" style="width: 100%; height: 100%;" title="Rich Text Editor, editor_2" aria-describedby="cke_203" tabindex="0" allowtransparency="true"></iframe></div><span id="cke_2_bottom" class="cke_bottom cke_reset_all" role="presentation" style="user-select: none;"><span id="cke_2_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="Resize" onmousedown="CKEDITOR.tools.callFunction(206, event)">◢</span><span id="cke_2_path_label" class="cke_voice_label">Elements path</span><span id="cke_2_path" class="cke_path" role="group" aria-labelledby="cke_2_path_label"><span class="cke_path_empty">&nbsp;</span></span></span></div></div>



                                                                    </div>



                                                                </div>

                                                                <!--   <div class="form-group">

                                                                    <div class="input-group mb-2">

                                                                    

                                                                        <div class="box w-100">
                                                                            <input type="file" name="userfile" id="file-7"
                                                                                class="inputfile inputfile-6"
                                                                                data-multiple-caption="{count} files selected" />
                                                                            <label for="file-7"><span>Upload
                                                                                    Picture</span> <strong><svg
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        width="20" height="17"
                                                                                        viewBox="0 0 20 17">
                                                                                        <path
                                                                                            d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" />
                                                                                        </svg> Choose a
                                                                                    file&hellip;</strong></label>
                                                                        </div>


                                                                        <p> *(Use .jpg or .png format Picture.)</p>

                                                                    </div>

                                                                </div> -->

                                                                    <div class="row mb-4 mt-4">
        <div class="col-lg-6">
                                    <a href="JavaScript:Void(0);" id="smam2" class="spam-link">Spam Checker</a>

                                    </div>
            <div class="col-lg-6 text-lg-right">
                                    <a href="#" class="spam-link" data-toggle="modal" data-target="#spammodal">Spam Trigger Words</a>

                                    </div>
        </div>

                                                



                                                                <div class="text-center">



                                                                    <input type="submit" value="Send" name="emailsbmit" class="btn btn-info btn-block rounded-0 py-2">
                                                                        <br>

                                            


                                                                </div>
                                                                



                                                        </div>



                                                        











                                                    </div>



                                                    



                                                </div>







                                            </div>



                                        </div><div class="modal fade s-modal" id="myModal0013" role="dialog">
                                            <div class="modal-dialog modal-sm modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">

                                                        <h2 class="modal-title">Are you sure delete it?</h2>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <a href="#"><button type="button" class="btn btn-danger">Yes delete
                                                                it!</button></a>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="modal fade" id="myModal3" role="dialog">



                                            <div class="modal-dialog">







                                                <!-- Modal content-->



                                                <div class="modal-content">







                                                    <div class="modal-body">

                                                        <button type="button" class="close" data-dismiss="modal">×</button>





                                                        <div class="">















                                                            <form method="post" action="#" enctype="multipart/form-data" onsubmit="return validateBadText3();"></form>



                                                                <!--Body-->



                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text">

                                                                                <i class="fa fa-user text-info"></i>

                                                                            </div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="name" value="roosha debnath" name="name" readonly="">



                                                                    </div>



                                                                </div>







                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-book text-info"></i></div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="sub" placeholder="Subject" value="New Message For roosha debnath" name="sub" readonly="">



                                                                    </div>



                                                                </div>











                                                                <input type="hidden" class="form-control" id="email" name="email" value="roosha@inventiotechnologies.com">











                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i>
                                                                            </div>



                                                                        </div>



                                                                        <textarea name="msg" class="form-control" id="editor_3" placeholder="Enter your message" style="visibility: hidden; display: none;"></textarea><div id="cke_editor_3" class="cke_3 cke cke_reset cke_chrome cke_editor_editor_3 cke_ltr cke_browser_webkit" dir="ltr" lang="en" role="application" aria-labelledby="cke_editor_3_arialbl"><span id="cke_editor_3_arialbl" class="cke_voice_label">Rich Text Editor, editor_3</span><div class="cke_inner cke_reset" role="presentation"><span id="cke_3_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; user-select: none;"><span id="cke_212" class="cke_voice_label">Editor toolbars</span><span id="cke_3_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_212" onmousedown="return false;"><span id="cke_217" class="cke_toolbar" aria-labelledby="cke_217_label" role="toolbar"><span id="cke_217_label" class="cke_voice_label">Document</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_218" class="cke_button cke_button__source cke_button_off" href="javascript:void('Source')" title="Source" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_218_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(414,event);" onfocus="return CKEDITOR.tools.callFunction(415,event);" onclick="CKEDITOR.tools.callFunction(416,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1824px;background-size:auto;">&nbsp;</span><span id="cke_218_label" class="cke_button_label cke_button__source_label" aria-hidden="false">Source</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_219" class="cke_button cke_button__save cke_button_off" href="javascript:void('Save')" title="Save" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_219_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(417,event);" onfocus="return CKEDITOR.tools.callFunction(418,event);" onclick="CKEDITOR.tools.callFunction(419,this);return false;"><span class="cke_button_icon cke_button__save_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1704px;background-size:auto;">&nbsp;</span><span id="cke_219_label" class="cke_button_label cke_button__save_label" aria-hidden="false">Save</span></a><a id="cke_220" class="cke_button cke_button__newpage cke_button_off" href="javascript:void('New Page')" title="New Page" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_220_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(420,event);" onfocus="return CKEDITOR.tools.callFunction(421,event);" onclick="CKEDITOR.tools.callFunction(422,this);return false;"><span class="cke_button_icon cke_button__newpage_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1440px;background-size:auto;">&nbsp;</span><span id="cke_220_label" class="cke_button_label cke_button__newpage_label" aria-hidden="false">New Page</span></a><a id="cke_221" class="cke_button cke_button__preview cke_button_off" href="javascript:void('Preview')" title="Preview" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_221_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(423,event);" onfocus="return CKEDITOR.tools.callFunction(424,event);" onclick="CKEDITOR.tools.callFunction(425,this);return false;"><span class="cke_button_icon cke_button__preview_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1632px;background-size:auto;">&nbsp;</span><span id="cke_221_label" class="cke_button_label cke_button__preview_label" aria-hidden="false">Preview</span></a><a id="cke_222" class="cke_button cke_button__print cke_button_off" href="javascript:void('Print')" title="Print" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_222_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(426,event);" onfocus="return CKEDITOR.tools.callFunction(427,event);" onclick="CKEDITOR.tools.callFunction(428,this);return false;"><span class="cke_button_icon cke_button__print_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1656px;background-size:auto;">&nbsp;</span><span id="cke_222_label" class="cke_button_label cke_button__print_label" aria-hidden="false">Print</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_223" class="cke_button cke_button__templates cke_button_off" href="javascript:void('Templates')" title="Templates" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_223_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(429,event);" onfocus="return CKEDITOR.tools.callFunction(430,event);" onclick="CKEDITOR.tools.callFunction(431,this);return false;"><span class="cke_button_icon cke_button__templates_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -456px;background-size:auto;">&nbsp;</span><span id="cke_223_label" class="cke_button_label cke_button__templates_label" aria-hidden="false">Templates</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_224" class="cke_toolbar" aria-labelledby="cke_224_label" role="toolbar"><span id="cke_224_label" class="cke_voice_label">Clipboard/Undo</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_225" class="cke_button cke_button__cut cke_button_disabled " href="javascript:void('Cut')" title="Cut" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_225_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(432,event);" onfocus="return CKEDITOR.tools.callFunction(433,event);" onclick="CKEDITOR.tools.callFunction(434,this);return false;"><span class="cke_button_icon cke_button__cut_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -312px;background-size:auto;">&nbsp;</span><span id="cke_225_label" class="cke_button_label cke_button__cut_label" aria-hidden="false">Cut</span></a><a id="cke_226" class="cke_button cke_button__copy cke_button_disabled " href="javascript:void('Copy')" title="Copy" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_226_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(435,event);" onfocus="return CKEDITOR.tools.callFunction(436,event);" onclick="CKEDITOR.tools.callFunction(437,this);return false;"><span class="cke_button_icon cke_button__copy_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -264px;background-size:auto;">&nbsp;</span><span id="cke_226_label" class="cke_button_label cke_button__copy_label" aria-hidden="false">Copy</span></a><a id="cke_227" class="cke_button cke_button__paste cke_button_off" href="javascript:void('Paste')" title="Paste" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_227_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(438,event);" onfocus="return CKEDITOR.tools.callFunction(439,event);" onclick="CKEDITOR.tools.callFunction(440,this);return false;"><span class="cke_button_icon cke_button__paste_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -360px;background-size:auto;">&nbsp;</span><span id="cke_227_label" class="cke_button_label cke_button__paste_label" aria-hidden="false">Paste</span></a><a id="cke_228" class="cke_button cke_button__pastetext cke_button_off" href="javascript:void('Paste as plain text')" title="Paste as plain text" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_228_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(441,event);" onfocus="return CKEDITOR.tools.callFunction(442,event);" onclick="CKEDITOR.tools.callFunction(443,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1536px;background-size:auto;">&nbsp;</span><span id="cke_228_label" class="cke_button_label cke_button__pastetext_label" aria-hidden="false">Paste as plain text</span></a><a id="cke_229" class="cke_button cke_button__pastefromword cke_button_off" href="javascript:void('Paste from Word')" title="Paste from Word" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_229_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(444,event);" onfocus="return CKEDITOR.tools.callFunction(445,event);" onclick="CKEDITOR.tools.callFunction(446,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1584px;background-size:auto;">&nbsp;</span><span id="cke_229_label" class="cke_button_label cke_button__pastefromword_label" aria-hidden="false">Paste from Word</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_230" class="cke_button cke_button__undo cke_button_disabled " href="javascript:void('Undo')" title="Undo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_230_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(447,event);" onfocus="return CKEDITOR.tools.callFunction(448,event);" onclick="CKEDITOR.tools.callFunction(449,this);return false;"><span class="cke_button_icon cke_button__undo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1992px;background-size:auto;">&nbsp;</span><span id="cke_230_label" class="cke_button_label cke_button__undo_label" aria-hidden="false">Undo</span></a><a id="cke_231" class="cke_button cke_button__redo cke_button_disabled " href="javascript:void('Redo')" title="Redo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_231_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(450,event);" onfocus="return CKEDITOR.tools.callFunction(451,event);" onclick="CKEDITOR.tools.callFunction(452,this);return false;"><span class="cke_button_icon cke_button__redo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1944px;background-size:auto;">&nbsp;</span><span id="cke_231_label" class="cke_button_label cke_button__redo_label" aria-hidden="false">Redo</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_232" class="cke_toolbar" aria-labelledby="cke_232_label" role="toolbar"><span id="cke_232_label" class="cke_voice_label">Editing</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_233" class="cke_button cke_button__find cke_button_off" href="javascript:void('Find')" title="Find" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_233_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(453,event);" onfocus="return CKEDITOR.tools.callFunction(454,event);" onclick="CKEDITOR.tools.callFunction(455,this);return false;"><span class="cke_button_icon cke_button__find_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -528px;background-size:auto;">&nbsp;</span><span id="cke_233_label" class="cke_button_label cke_button__find_label" aria-hidden="false">Find</span></a><a id="cke_234" class="cke_button cke_button__replace cke_button_off" href="javascript:void('Replace')" title="Replace" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_234_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(456,event);" onfocus="return CKEDITOR.tools.callFunction(457,event);" onclick="CKEDITOR.tools.callFunction(458,this);return false;"><span class="cke_button_icon cke_button__replace_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -552px;background-size:auto;">&nbsp;</span><span id="cke_234_label" class="cke_button_label cke_button__replace_label" aria-hidden="false">Replace</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_235" class="cke_button cke_button__selectall cke_button_off" href="javascript:void('Select All')" title="Select All" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_235_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(459,event);" onfocus="return CKEDITOR.tools.callFunction(460,event);" onclick="CKEDITOR.tools.callFunction(461,this);return false;"><span class="cke_button_icon cke_button__selectall_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1728px;background-size:auto;">&nbsp;</span><span id="cke_235_label" class="cke_button_label cke_button__selectall_label" aria-hidden="false">Select All</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_236" class="cke_button cke_button__scayt cke_button_off" href="javascript:void('Spell Checker')" title="Spell Checker" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_236_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(462,event);" onfocus="return CKEDITOR.tools.callFunction(463,event);" onclick="CKEDITOR.tools.callFunction(464,this);return false;"><span class="cke_button_icon cke_button__scayt_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1872px;background-size:auto;">&nbsp;</span><span id="cke_236_label" class="cke_button_label cke_button__scayt_label" aria-hidden="false">Spell Check As You Type</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_237" class="cke_toolbar" aria-labelledby="cke_237_label" role="toolbar"><span id="cke_237_label" class="cke_voice_label">Forms</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_238" class="cke_button cke_button__form cke_button_off" href="javascript:void('Form')" title="Form" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_238_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(465,event);" onfocus="return CKEDITOR.tools.callFunction(466,event);" onclick="CKEDITOR.tools.callFunction(467,this);return false;"><span class="cke_button_icon cke_button__form_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -648px;background-size:auto;">&nbsp;</span><span id="cke_238_label" class="cke_button_label cke_button__form_label" aria-hidden="false">Form</span></a><a id="cke_239" class="cke_button cke_button__checkbox cke_button_off" href="javascript:void('Checkbox')" title="Checkbox" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_239_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(468,event);" onfocus="return CKEDITOR.tools.callFunction(469,event);" onclick="CKEDITOR.tools.callFunction(470,this);return false;"><span class="cke_button_icon cke_button__checkbox_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -624px;background-size:auto;">&nbsp;</span><span id="cke_239_label" class="cke_button_label cke_button__checkbox_label" aria-hidden="false">Checkbox</span></a><a id="cke_240" class="cke_button cke_button__radio cke_button_off" href="javascript:void('Radio Button')" title="Radio Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_240_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(471,event);" onfocus="return CKEDITOR.tools.callFunction(472,event);" onclick="CKEDITOR.tools.callFunction(473,this);return false;"><span class="cke_button_icon cke_button__radio_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -720px;background-size:auto;">&nbsp;</span><span id="cke_240_label" class="cke_button_label cke_button__radio_label" aria-hidden="false">Radio Button</span></a><a id="cke_241" class="cke_button cke_button__textfield cke_button_off" href="javascript:void('Text Field')" title="Text Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_241_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(474,event);" onfocus="return CKEDITOR.tools.callFunction(475,event);" onclick="CKEDITOR.tools.callFunction(476,this);return false;"><span class="cke_button_icon cke_button__textfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -864px;background-size:auto;">&nbsp;</span><span id="cke_241_label" class="cke_button_label cke_button__textfield_label" aria-hidden="false">Text Field</span></a><a id="cke_242" class="cke_button cke_button__textarea cke_button_off" href="javascript:void('Textarea')" title="Textarea" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_242_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(477,event);" onfocus="return CKEDITOR.tools.callFunction(478,event);" onclick="CKEDITOR.tools.callFunction(479,this);return false;"><span class="cke_button_icon cke_button__textarea_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -816px;background-size:auto;">&nbsp;</span><span id="cke_242_label" class="cke_button_label cke_button__textarea_label" aria-hidden="false">Textarea</span></a><a id="cke_243" class="cke_button cke_button__select cke_button_off" href="javascript:void('Selection Field')" title="Selection Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_243_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(480,event);" onfocus="return CKEDITOR.tools.callFunction(481,event);" onclick="CKEDITOR.tools.callFunction(482,this);return false;"><span class="cke_button_icon cke_button__select_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -768px;background-size:auto;">&nbsp;</span><span id="cke_243_label" class="cke_button_label cke_button__select_label" aria-hidden="false">Selection Field</span></a><a id="cke_244" class="cke_button cke_button__button cke_button_off" href="javascript:void('Button')" title="Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_244_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(483,event);" onfocus="return CKEDITOR.tools.callFunction(484,event);" onclick="CKEDITOR.tools.callFunction(485,this);return false;"><span class="cke_button_icon cke_button__button_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -600px;background-size:auto;">&nbsp;</span><span id="cke_244_label" class="cke_button_label cke_button__button_label" aria-hidden="false">Button</span></a><a id="cke_245" class="cke_button cke_button__imagebutton cke_button_off" href="javascript:void('Image Button')" title="Image Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_245_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(486,event);" onfocus="return CKEDITOR.tools.callFunction(487,event);" onclick="CKEDITOR.tools.callFunction(488,this);return false;"><span class="cke_button_icon cke_button__imagebutton_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -696px;background-size:auto;">&nbsp;</span><span id="cke_245_label" class="cke_button_label cke_button__imagebutton_label" aria-hidden="false">Image Button</span></a><a id="cke_246" class="cke_button cke_button__hiddenfield cke_button_off" href="javascript:void('Hidden Field')" title="Hidden Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_246_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(489,event);" onfocus="return CKEDITOR.tools.callFunction(490,event);" onclick="CKEDITOR.tools.callFunction(491,this);return false;"><span class="cke_button_icon cke_button__hiddenfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -672px;background-size:auto;">&nbsp;</span><span id="cke_246_label" class="cke_button_label cke_button__hiddenfield_label" aria-hidden="false">Hidden Field</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_247" class="cke_toolbar" aria-labelledby="cke_247_label" role="toolbar"><span id="cke_247_label" class="cke_voice_label">Basic Styles</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_248" class="cke_button cke_button__bold cke_button_off" href="javascript:void('Bold')" title="Bold" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_248_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(492,event);" onfocus="return CKEDITOR.tools.callFunction(493,event);" onclick="CKEDITOR.tools.callFunction(494,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -24px;background-size:auto;">&nbsp;</span><span id="cke_248_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">Bold</span></a><a id="cke_249" class="cke_button cke_button__italic cke_button_off" href="javascript:void('Italic')" title="Italic" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_249_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(495,event);" onfocus="return CKEDITOR.tools.callFunction(496,event);" onclick="CKEDITOR.tools.callFunction(497,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_249_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">Italic</span></a><a id="cke_250" class="cke_button cke_button__underline cke_button_off" href="javascript:void('Underline')" title="Underline" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_250_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(498,event);" onfocus="return CKEDITOR.tools.callFunction(499,event);" onclick="CKEDITOR.tools.callFunction(500,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_250_label" class="cke_button_label cke_button__underline_label" aria-hidden="false">Underline</span></a><a id="cke_251" class="cke_button cke_button__strike cke_button_off" href="javascript:void('Strikethrough')" title="Strikethrough" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_251_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(501,event);" onfocus="return CKEDITOR.tools.callFunction(502,event);" onclick="CKEDITOR.tools.callFunction(503,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_251_label" class="cke_button_label cke_button__strike_label" aria-hidden="false">Strikethrough</span></a><a id="cke_252" class="cke_button cke_button__subscript cke_button_off" href="javascript:void('Subscript')" title="Subscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_252_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(504,event);" onfocus="return CKEDITOR.tools.callFunction(505,event);" onclick="CKEDITOR.tools.callFunction(506,this);return false;"><span class="cke_button_icon cke_button__subscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -96px;background-size:auto;">&nbsp;</span><span id="cke_252_label" class="cke_button_label cke_button__subscript_label" aria-hidden="false">Subscript</span></a><a id="cke_253" class="cke_button cke_button__superscript cke_button_off" href="javascript:void('Superscript')" title="Superscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_253_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(507,event);" onfocus="return CKEDITOR.tools.callFunction(508,event);" onclick="CKEDITOR.tools.callFunction(509,this);return false;"><span class="cke_button_icon cke_button__superscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -120px;background-size:auto;">&nbsp;</span><span id="cke_253_label" class="cke_button_label cke_button__superscript_label" aria-hidden="false">Superscript</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_254" class="cke_button cke_button__removeformat cke_button_off" href="javascript:void('Remove Format')" title="Remove Format" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_254_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(510,event);" onfocus="return CKEDITOR.tools.callFunction(511,event);" onclick="CKEDITOR.tools.callFunction(512,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1680px;background-size:auto;">&nbsp;</span><span id="cke_254_label" class="cke_button_label cke_button__removeformat_label" aria-hidden="false">Remove Format</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_255" class="cke_toolbar" aria-labelledby="cke_255_label" role="toolbar"><span id="cke_255_label" class="cke_voice_label">Paragraph</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_256" class="cke_button cke_button__numberedlist cke_button_off" href="javascript:void('Insert/Remove Numbered List')" title="Insert/Remove Numbered List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_256_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(513,event);" onfocus="return CKEDITOR.tools.callFunction(514,event);" onclick="CKEDITOR.tools.callFunction(515,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1368px;background-size:auto;">&nbsp;</span><span id="cke_256_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">Insert/Remove Numbered List</span></a><a id="cke_257" class="cke_button cke_button__bulletedlist cke_button_off" href="javascript:void('Insert/Remove Bulleted List')" title="Insert/Remove Bulleted List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_257_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(516,event);" onfocus="return CKEDITOR.tools.callFunction(517,event);" onclick="CKEDITOR.tools.callFunction(518,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1320px;background-size:auto;">&nbsp;</span><span id="cke_257_label" class="cke_button_label cke_button__bulletedlist_label" aria-hidden="false">Insert/Remove Bulleted List</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_258" class="cke_button cke_button__outdent cke_button_disabled " href="javascript:void('Decrease Indent')" title="Decrease Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_258_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(519,event);" onfocus="return CKEDITOR.tools.callFunction(520,event);" onclick="CKEDITOR.tools.callFunction(521,this);return false;"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1032px;background-size:auto;">&nbsp;</span><span id="cke_258_label" class="cke_button_label cke_button__outdent_label" aria-hidden="false">Decrease Indent</span></a><a id="cke_259" class="cke_button cke_button__indent cke_button_off" href="javascript:void('Increase Indent')" title="Increase Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_259_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(522,event);" onfocus="return CKEDITOR.tools.callFunction(523,event);" onclick="CKEDITOR.tools.callFunction(524,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -984px;background-size:auto;">&nbsp;</span><span id="cke_259_label" class="cke_button_label cke_button__indent_label" aria-hidden="false">Increase Indent</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_260" class="cke_button cke_button__blockquote cke_button_off" href="javascript:void('Block Quote')" title="Block Quote" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_260_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(525,event);" onfocus="return CKEDITOR.tools.callFunction(526,event);" onclick="CKEDITOR.tools.callFunction(527,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -216px;background-size:auto;">&nbsp;</span><span id="cke_260_label" class="cke_button_label cke_button__blockquote_label" aria-hidden="false">Block Quote</span></a><a id="cke_261" class="cke_button cke_button__creatediv cke_button_off" href="javascript:void('Create Div Container')" title="Create Div Container" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_261_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(528,event);" onfocus="return CKEDITOR.tools.callFunction(529,event);" onclick="CKEDITOR.tools.callFunction(530,this);return false;"><span class="cke_button_icon cke_button__creatediv_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -480px;background-size:auto;">&nbsp;</span><span id="cke_261_label" class="cke_button_label cke_button__creatediv_label" aria-hidden="false">Create Div Container</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_262" class="cke_button cke_button__justifyleft cke_button_off" href="javascript:void('Align Left')" title="Align Left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_262_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(531,event);" onfocus="return CKEDITOR.tools.callFunction(532,event);" onclick="CKEDITOR.tools.callFunction(533,this);return false;"><span class="cke_button_icon cke_button__justifyleft_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1128px;background-size:auto;">&nbsp;</span><span id="cke_262_label" class="cke_button_label cke_button__justifyleft_label" aria-hidden="false">Align Left</span></a><a id="cke_263" class="cke_button cke_button__justifycenter cke_button_off" href="javascript:void('Center')" title="Center" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_263_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(534,event);" onfocus="return CKEDITOR.tools.callFunction(535,event);" onclick="CKEDITOR.tools.callFunction(536,this);return false;"><span class="cke_button_icon cke_button__justifycenter_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1104px;background-size:auto;">&nbsp;</span><span id="cke_263_label" class="cke_button_label cke_button__justifycenter_label" aria-hidden="false">Center</span></a><a id="cke_264" class="cke_button cke_button__justifyright cke_button_off" href="javascript:void('Align Right')" title="Align Right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_264_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(537,event);" onfocus="return CKEDITOR.tools.callFunction(538,event);" onclick="CKEDITOR.tools.callFunction(539,this);return false;"><span class="cke_button_icon cke_button__justifyright_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1152px;background-size:auto;">&nbsp;</span><span id="cke_264_label" class="cke_button_label cke_button__justifyright_label" aria-hidden="false">Align Right</span></a><a id="cke_265" class="cke_button cke_button__justifyblock cke_button_off" href="javascript:void('Justify')" title="Justify" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_265_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(540,event);" onfocus="return CKEDITOR.tools.callFunction(541,event);" onclick="CKEDITOR.tools.callFunction(542,this);return false;"><span class="cke_button_icon cke_button__justifyblock_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1080px;background-size:auto;">&nbsp;</span><span id="cke_265_label" class="cke_button_label cke_button__justifyblock_label" aria-hidden="false">Justify</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_266" class="cke_button cke_button__bidiltr cke_button_off" href="javascript:void('Text direction from left to right')" title="Text direction from left to right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_266_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(543,event);" onfocus="return CKEDITOR.tools.callFunction(544,event);" onclick="CKEDITOR.tools.callFunction(545,this);return false;"><span class="cke_button_icon cke_button__bidiltr_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -168px;background-size:auto;">&nbsp;</span><span id="cke_266_label" class="cke_button_label cke_button__bidiltr_label" aria-hidden="false">Text direction from left to right</span></a><a id="cke_267" class="cke_button cke_button__bidirtl cke_button_off" href="javascript:void('Text direction from right to left')" title="Text direction from right to left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_267_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(546,event);" onfocus="return CKEDITOR.tools.callFunction(547,event);" onclick="CKEDITOR.tools.callFunction(548,this);return false;"><span class="cke_button_icon cke_button__bidirtl_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -192px;background-size:auto;">&nbsp;</span><span id="cke_267_label" class="cke_button_label cke_button__bidirtl_label" aria-hidden="false">Text direction from right to left</span></a><a id="cke_268" class="cke_button cke_button__language cke_button_off" href="javascript:void('Set language')" title="Set language" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_268_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(549,event);" onfocus="return CKEDITOR.tools.callFunction(550,event);" onclick="CKEDITOR.tools.callFunction(551,this);return false;"><span class="cke_button_icon cke_button__language_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1176px;background-size:auto;">&nbsp;</span><span id="cke_268_label" class="cke_button_label cke_button__language_label" aria-hidden="false">Set language</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_269" class="cke_toolbar" aria-labelledby="cke_269_label" role="toolbar"><span id="cke_269_label" class="cke_voice_label">Links</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_270" class="cke_button cke_button__link cke_button_off" href="javascript:void('Link')" title="Link" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_270_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(552,event);" onfocus="return CKEDITOR.tools.callFunction(553,event);" onclick="CKEDITOR.tools.callFunction(554,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1248px;background-size:auto;">&nbsp;</span><span id="cke_270_label" class="cke_button_label cke_button__link_label" aria-hidden="false">Link</span></a><a id="cke_271" class="cke_button cke_button__unlink cke_button_disabled " href="javascript:void('Unlink')" title="Unlink" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_271_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(555,event);" onfocus="return CKEDITOR.tools.callFunction(556,event);" onclick="CKEDITOR.tools.callFunction(557,this);return false;"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1272px;background-size:auto;">&nbsp;</span><span id="cke_271_label" class="cke_button_label cke_button__unlink_label" aria-hidden="false">Unlink</span></a><a id="cke_272" class="cke_button cke_button__anchor cke_button_off" href="javascript:void('Anchor')" title="Anchor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_272_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(558,event);" onfocus="return CKEDITOR.tools.callFunction(559,event);" onclick="CKEDITOR.tools.callFunction(560,this);return false;"><span class="cke_button_icon cke_button__anchor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1224px;background-size:auto;">&nbsp;</span><span id="cke_272_label" class="cke_button_label cke_button__anchor_label" aria-hidden="false">Anchor</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_273" class="cke_toolbar" aria-labelledby="cke_273_label" role="toolbar"><span id="cke_273_label" class="cke_voice_label">Insert</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_274" class="cke_button cke_button__image cke_button_off" href="javascript:void('Image')" title="Image" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_274_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(561,event);" onfocus="return CKEDITOR.tools.callFunction(562,event);" onclick="CKEDITOR.tools.callFunction(563,this);return false;"><span class="cke_button_icon cke_button__image_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -936px;background-size:auto;">&nbsp;</span><span id="cke_274_label" class="cke_button_label cke_button__image_label" aria-hidden="false">Image</span></a><a id="cke_275" class="cke_button cke_button__flash cke_button_off" href="javascript:void('Flash')" title="Flash" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_275_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(564,event);" onfocus="return CKEDITOR.tools.callFunction(565,event);" onclick="CKEDITOR.tools.callFunction(566,this);return false;"><span class="cke_button_icon cke_button__flash_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -576px;background-size:auto;">&nbsp;</span><span id="cke_275_label" class="cke_button_label cke_button__flash_label" aria-hidden="false">Flash</span></a><a id="cke_276" class="cke_button cke_button__table cke_button_off" href="javascript:void('Table')" title="Table" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_276_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(567,event);" onfocus="return CKEDITOR.tools.callFunction(568,event);" onclick="CKEDITOR.tools.callFunction(569,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1896px;background-size:auto;">&nbsp;</span><span id="cke_276_label" class="cke_button_label cke_button__table_label" aria-hidden="false">Table</span></a><a id="cke_277" class="cke_button cke_button__horizontalrule cke_button_off" href="javascript:void('Insert Horizontal Line')" title="Insert Horizontal Line" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_277_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(570,event);" onfocus="return CKEDITOR.tools.callFunction(571,event);" onclick="CKEDITOR.tools.callFunction(572,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -888px;background-size:auto;">&nbsp;</span><span id="cke_277_label" class="cke_button_label cke_button__horizontalrule_label" aria-hidden="false">Insert Horizontal Line</span></a><a id="cke_278" class="cke_button cke_button__smiley cke_button_off" href="javascript:void('Smiley')" title="Smiley" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_278_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(573,event);" onfocus="return CKEDITOR.tools.callFunction(574,event);" onclick="CKEDITOR.tools.callFunction(575,this);return false;"><span class="cke_button_icon cke_button__smiley_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1056px;background-size:auto;">&nbsp;</span><span id="cke_278_label" class="cke_button_label cke_button__smiley_label" aria-hidden="false">Smiley</span></a><a id="cke_279" class="cke_button cke_button__specialchar cke_button_off" href="javascript:void('Insert Special Character')" title="Insert Special Character" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_279_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(576,event);" onfocus="return CKEDITOR.tools.callFunction(577,event);" onclick="CKEDITOR.tools.callFunction(578,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1848px;background-size:auto;">&nbsp;</span><span id="cke_279_label" class="cke_button_label cke_button__specialchar_label" aria-hidden="false">Insert Special Character</span></a><a id="cke_280" class="cke_button cke_button__pagebreak cke_button_off" href="javascript:void('Insert Page Break for Printing')" title="Insert Page Break for Printing" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_280_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(579,event);" onfocus="return CKEDITOR.tools.callFunction(580,event);" onclick="CKEDITOR.tools.callFunction(581,this);return false;"><span class="cke_button_icon cke_button__pagebreak_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1488px;background-size:auto;">&nbsp;</span><span id="cke_280_label" class="cke_button_label cke_button__pagebreak_label" aria-hidden="false">Insert Page Break for Printing</span></a><a id="cke_281" class="cke_button cke_button__iframe cke_button_off" href="javascript:void('IFrame')" title="IFrame" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_281_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(582,event);" onfocus="return CKEDITOR.tools.callFunction(583,event);" onclick="CKEDITOR.tools.callFunction(584,this);return false;"><span class="cke_button_icon cke_button__iframe_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -912px;background-size:auto;">&nbsp;</span><span id="cke_281_label" class="cke_button_label cke_button__iframe_label" aria-hidden="false">IFrame</span></a><a id="cke_282" class="cke_button cke_button__hkemoji cke_button_off" href="javascript:void('Insert emoji')" title="Insert emoji" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_282_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(585,event);" onfocus="return CKEDITOR.tools.callFunction(586,event);" onclick="CKEDITOR.tools.callFunction(587,this);return false;"><span class="cke_button_icon cke_button__hkemoji_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/icons/hkemoji.png?t=G4CD');background-position:0 0px;background-size:16px;">&nbsp;</span><span id="cke_282_label" class="cke_button_label cke_button__hkemoji_label" aria-hidden="false">Insert emoji</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_283" class="cke_toolbar" aria-labelledby="cke_283_label" role="toolbar"><span id="cke_283_label" class="cke_voice_label">Styles</span><span class="cke_toolbar_start"></span><span id="cke_213" class="cke_combo cke_combo__styles cke_combo_off" role="presentation"><span id="cke_213_label" class="cke_combo_label">Styles</span><a class="cke_combo_button" title="Formatting Styles" tabindex="-1" href="javascript:void('Formatting Styles')" hidefocus="true" role="button" aria-labelledby="cke_213_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(589,event,this);" onfocus="return CKEDITOR.tools.callFunction(590,event);" onclick="CKEDITOR.tools.callFunction(588,this);return false;"><span id="cke_213_text" class="cke_combo_text cke_combo_inlinelabel">Styles</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_214" class="cke_combo cke_combo__format cke_combo_off" role="presentation"><span id="cke_214_label" class="cke_combo_label">Format</span><a class="cke_combo_button" title="Paragraph Format" tabindex="-1" href="javascript:void('Paragraph Format')" hidefocus="true" role="button" aria-labelledby="cke_214_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(592,event,this);" onfocus="return CKEDITOR.tools.callFunction(593,event);" onclick="CKEDITOR.tools.callFunction(591,this);return false;"><span id="cke_214_text" class="cke_combo_text cke_combo_inlinelabel">Format</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_215" class="cke_combo cke_combo__font cke_combo_off" role="presentation"><span id="cke_215_label" class="cke_combo_label">Font</span><a class="cke_combo_button" title="Font Name" tabindex="-1" href="javascript:void('Font Name')" hidefocus="true" role="button" aria-labelledby="cke_215_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(595,event,this);" onfocus="return CKEDITOR.tools.callFunction(596,event);" onclick="CKEDITOR.tools.callFunction(594,this);return false;"><span id="cke_215_text" class="cke_combo_text cke_combo_inlinelabel">Font</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_216" class="cke_combo cke_combo__fontsize cke_combo_off" role="presentation"><span id="cke_216_label" class="cke_combo_label">Size</span><a class="cke_combo_button" title="Font Size" tabindex="-1" href="javascript:void('Font Size')" hidefocus="true" role="button" aria-labelledby="cke_216_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(598,event,this);" onfocus="return CKEDITOR.tools.callFunction(599,event);" onclick="CKEDITOR.tools.callFunction(597,this);return false;"><span id="cke_216_text" class="cke_combo_text cke_combo_inlinelabel">Size</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_284" class="cke_toolbar" aria-labelledby="cke_284_label" role="toolbar"><span id="cke_284_label" class="cke_voice_label">Colors</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_285" class="cke_button cke_button__textcolor cke_button_off" href="javascript:void('Text Color')" title="Text Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_285_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(600,event);" onfocus="return CKEDITOR.tools.callFunction(601,event);" onclick="CKEDITOR.tools.callFunction(602,this);return false;"><span class="cke_button_icon cke_button__textcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -408px;background-size:auto;">&nbsp;</span><span id="cke_285_label" class="cke_button_label cke_button__textcolor_label" aria-hidden="false">Text Color</span><span class="cke_button_arrow"></span></a><a id="cke_286" class="cke_button cke_button__bgcolor cke_button_off" href="javascript:void('Background Color')" title="Background Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_286_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(603,event);" onfocus="return CKEDITOR.tools.callFunction(604,event);" onclick="CKEDITOR.tools.callFunction(605,this);return false;"><span class="cke_button_icon cke_button__bgcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -384px;background-size:auto;">&nbsp;</span><span id="cke_286_label" class="cke_button_label cke_button__bgcolor_label" aria-hidden="false">Background Color</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_287" class="cke_toolbar" aria-labelledby="cke_287_label" role="toolbar"><span id="cke_287_label" class="cke_voice_label">Tools</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_288" class="cke_button cke_button__maximize cke_button_off" href="javascript:void('Maximize')" title="Maximize" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_288_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(606,event);" onfocus="return CKEDITOR.tools.callFunction(607,event);" onclick="CKEDITOR.tools.callFunction(608,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1392px;background-size:auto;">&nbsp;</span><span id="cke_288_label" class="cke_button_label cke_button__maximize_label" aria-hidden="false">Maximize</span></a><a id="cke_289" class="cke_button cke_button__showblocks cke_button_off" href="javascript:void('Show Blocks')" title="Show Blocks" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_289_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(609,event);" onfocus="return CKEDITOR.tools.callFunction(610,event);" onclick="CKEDITOR.tools.callFunction(611,this);return false;"><span class="cke_button_icon cke_button__showblocks_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1776px;background-size:auto;">&nbsp;</span><span id="cke_289_label" class="cke_button_label cke_button__showblocks_label" aria-hidden="false">Show Blocks</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_290" class="cke_toolbar" aria-labelledby="cke_290_label" role="toolbar"><span id="cke_290_label" class="cke_voice_label">about</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_291" class="cke_button cke_button__about cke_button_off" href="javascript:void('About CKEditor')" title="About CKEditor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_291_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(612,event);" onfocus="return CKEDITOR.tools.callFunction(613,event);" onclick="CKEDITOR.tools.callFunction(614,this);return false;"><span class="cke_button_icon cke_button__about_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 0px;background-size:auto;">&nbsp;</span><span id="cke_291_label" class="cke_button_label cke_button__about_label" aria-hidden="false">About CKEditor</span></a></span><span class="cke_toolbar_end"></span></span></span></span><div id="cke_3_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><span id="cke_296" class="cke_voice_label">Press ALT 0 for help</span><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" style="width: 100%; height: 100%;" title="Rich Text Editor, editor_3" aria-describedby="cke_296" tabindex="0" allowtransparency="true"></iframe></div><span id="cke_3_bottom" class="cke_bottom cke_reset_all" role="presentation" style="user-select: none;"><span id="cke_3_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="Resize" onmousedown="CKEDITOR.tools.callFunction(412, event)">◢</span><span id="cke_3_path_label" class="cke_voice_label">Elements path</span><span id="cke_3_path" class="cke_path" role="group" aria-labelledby="cke_3_path_label"><span class="cke_path_empty">&nbsp;</span></span></span></div></div>



                                                                    </div>



                                                                </div>

                                                                <!--   <div class="form-group">

                                                                    <div class="input-group mb-2">

                                                                    

                                                                        <div class="box w-100">
                                                                            <input type="file" name="userfile" id="file-7"
                                                                                class="inputfile inputfile-6"
                                                                                data-multiple-caption="{count} files selected" />
                                                                            <label for="file-7"><span>Upload
                                                                                    Picture</span> <strong><svg
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        width="20" height="17"
                                                                                        viewBox="0 0 20 17">
                                                                                        <path
                                                                                            d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" />
                                                                                        </svg> Choose a
                                                                                    file&hellip;</strong></label>
                                                                        </div>


                                                                        <p> *(Use .jpg or .png format Picture.)</p>

                                                                    </div>

                                                                </div> -->

                                                                    <div class="row mb-4 mt-4">
        <div class="col-lg-6">
                                    <a href="JavaScript:Void(0);" id="smam3" class="spam-link">Spam Checker</a>

                                    </div>
            <div class="col-lg-6 text-lg-right">
                                    <a href="#" class="spam-link" data-toggle="modal" data-target="#spammodal">Spam Trigger Words</a>

                                    </div>
        </div>

                                                



                                                                <div class="text-center">



                                                                    <input type="submit" value="Send" name="emailsbmit" class="btn btn-info btn-block rounded-0 py-2">
                                                                        <br>

                                            


                                                                </div>
                                                                



                                                        </div>



                                                        











                                                    </div>



                                                    



                                                </div>







                                            </div>



                                        </div><div class="modal fade s-modal" id="myModal0014" role="dialog">
                                            <div class="modal-dialog modal-sm modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">

                                                        <h2 class="modal-title">Are you sure delete it?</h2>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <a href="#"><button type="button" class="btn btn-danger">Yes delete
                                                                it!</button></a>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><div class="modal fade" id="myModal4" role="dialog">



                                            <div class="modal-dialog">







                                                <!-- Modal content-->



                                                <div class="modal-content">







                                                    <div class="modal-body">

                                                        <button type="button" class="close" data-dismiss="modal">×</button>





                                                        <div class="">















                                                            <form method="post" action="#" enctype="multipart/form-data" onsubmit="return validateBadText4();"></form>



                                                                <!--Body-->



                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text">

                                                                                <i class="fa fa-user text-info"></i>

                                                                            </div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="name" value="Saik Pal" name="name" readonly="">



                                                                    </div>



                                                                </div>







                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-book text-info"></i></div>



                                                                        </div>



                                                                        <input type="text" class="form-control" id="sub" placeholder="Subject" value="New Message For Saik Pal" name="sub" readonly="">



                                                                    </div>



                                                                </div>











                                                                <input type="hidden" class="form-control" id="email" name="email" value="saikatbose59@gmail.com">











                                                                <div class="form-group">



                                                                    <div class="input-group mb-2">



                                                                        <div class="input-group-prepend">



                                                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i>
                                                                            </div>



                                                                        </div>



                                                                        <textarea name="msg" class="form-control" id="editor_4" placeholder="Enter your message" style="visibility: hidden; display: none;"></textarea><div id="cke_editor_4" class="cke_4 cke cke_reset cke_chrome cke_editor_editor_4 cke_ltr cke_browser_webkit" dir="ltr" lang="en" role="application" aria-labelledby="cke_editor_4_arialbl"><span id="cke_editor_4_arialbl" class="cke_voice_label">Rich Text Editor, editor_4</span><div class="cke_inner cke_reset" role="presentation"><span id="cke_4_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; user-select: none;"><span id="cke_305" class="cke_voice_label">Editor toolbars</span><span id="cke_4_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_305" onmousedown="return false;"><span id="cke_310" class="cke_toolbar" aria-labelledby="cke_310_label" role="toolbar"><span id="cke_310_label" class="cke_voice_label">Document</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_311" class="cke_button cke_button__source cke_button_off" href="javascript:void('Source')" title="Source" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_311_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(620,event);" onfocus="return CKEDITOR.tools.callFunction(621,event);" onclick="CKEDITOR.tools.callFunction(622,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1824px;background-size:auto;">&nbsp;</span><span id="cke_311_label" class="cke_button_label cke_button__source_label" aria-hidden="false">Source</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_312" class="cke_button cke_button__save cke_button_off" href="javascript:void('Save')" title="Save" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_312_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(623,event);" onfocus="return CKEDITOR.tools.callFunction(624,event);" onclick="CKEDITOR.tools.callFunction(625,this);return false;"><span class="cke_button_icon cke_button__save_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1704px;background-size:auto;">&nbsp;</span><span id="cke_312_label" class="cke_button_label cke_button__save_label" aria-hidden="false">Save</span></a><a id="cke_313" class="cke_button cke_button__newpage cke_button_off" href="javascript:void('New Page')" title="New Page" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_313_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(626,event);" onfocus="return CKEDITOR.tools.callFunction(627,event);" onclick="CKEDITOR.tools.callFunction(628,this);return false;"><span class="cke_button_icon cke_button__newpage_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1440px;background-size:auto;">&nbsp;</span><span id="cke_313_label" class="cke_button_label cke_button__newpage_label" aria-hidden="false">New Page</span></a><a id="cke_314" class="cke_button cke_button__preview cke_button_off" href="javascript:void('Preview')" title="Preview" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_314_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(629,event);" onfocus="return CKEDITOR.tools.callFunction(630,event);" onclick="CKEDITOR.tools.callFunction(631,this);return false;"><span class="cke_button_icon cke_button__preview_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1632px;background-size:auto;">&nbsp;</span><span id="cke_314_label" class="cke_button_label cke_button__preview_label" aria-hidden="false">Preview</span></a><a id="cke_315" class="cke_button cke_button__print cke_button_off" href="javascript:void('Print')" title="Print" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_315_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(632,event);" onfocus="return CKEDITOR.tools.callFunction(633,event);" onclick="CKEDITOR.tools.callFunction(634,this);return false;"><span class="cke_button_icon cke_button__print_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1656px;background-size:auto;">&nbsp;</span><span id="cke_315_label" class="cke_button_label cke_button__print_label" aria-hidden="false">Print</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_316" class="cke_button cke_button__templates cke_button_off" href="javascript:void('Templates')" title="Templates" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_316_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(635,event);" onfocus="return CKEDITOR.tools.callFunction(636,event);" onclick="CKEDITOR.tools.callFunction(637,this);return false;"><span class="cke_button_icon cke_button__templates_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -456px;background-size:auto;">&nbsp;</span><span id="cke_316_label" class="cke_button_label cke_button__templates_label" aria-hidden="false">Templates</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_317" class="cke_toolbar" aria-labelledby="cke_317_label" role="toolbar"><span id="cke_317_label" class="cke_voice_label">Clipboard/Undo</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_318" class="cke_button cke_button__cut cke_button_disabled " href="javascript:void('Cut')" title="Cut" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_318_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(638,event);" onfocus="return CKEDITOR.tools.callFunction(639,event);" onclick="CKEDITOR.tools.callFunction(640,this);return false;"><span class="cke_button_icon cke_button__cut_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -312px;background-size:auto;">&nbsp;</span><span id="cke_318_label" class="cke_button_label cke_button__cut_label" aria-hidden="false">Cut</span></a><a id="cke_319" class="cke_button cke_button__copy cke_button_disabled " href="javascript:void('Copy')" title="Copy" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_319_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(641,event);" onfocus="return CKEDITOR.tools.callFunction(642,event);" onclick="CKEDITOR.tools.callFunction(643,this);return false;"><span class="cke_button_icon cke_button__copy_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -264px;background-size:auto;">&nbsp;</span><span id="cke_319_label" class="cke_button_label cke_button__copy_label" aria-hidden="false">Copy</span></a><a id="cke_320" class="cke_button cke_button__paste cke_button_off" href="javascript:void('Paste')" title="Paste" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_320_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(644,event);" onfocus="return CKEDITOR.tools.callFunction(645,event);" onclick="CKEDITOR.tools.callFunction(646,this);return false;"><span class="cke_button_icon cke_button__paste_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -360px;background-size:auto;">&nbsp;</span><span id="cke_320_label" class="cke_button_label cke_button__paste_label" aria-hidden="false">Paste</span></a><a id="cke_321" class="cke_button cke_button__pastetext cke_button_off" href="javascript:void('Paste as plain text')" title="Paste as plain text" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_321_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(647,event);" onfocus="return CKEDITOR.tools.callFunction(648,event);" onclick="CKEDITOR.tools.callFunction(649,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1536px;background-size:auto;">&nbsp;</span><span id="cke_321_label" class="cke_button_label cke_button__pastetext_label" aria-hidden="false">Paste as plain text</span></a><a id="cke_322" class="cke_button cke_button__pastefromword cke_button_off" href="javascript:void('Paste from Word')" title="Paste from Word" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_322_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(650,event);" onfocus="return CKEDITOR.tools.callFunction(651,event);" onclick="CKEDITOR.tools.callFunction(652,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1584px;background-size:auto;">&nbsp;</span><span id="cke_322_label" class="cke_button_label cke_button__pastefromword_label" aria-hidden="false">Paste from Word</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_323" class="cke_button cke_button__undo cke_button_disabled " href="javascript:void('Undo')" title="Undo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_323_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(653,event);" onfocus="return CKEDITOR.tools.callFunction(654,event);" onclick="CKEDITOR.tools.callFunction(655,this);return false;"><span class="cke_button_icon cke_button__undo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1992px;background-size:auto;">&nbsp;</span><span id="cke_323_label" class="cke_button_label cke_button__undo_label" aria-hidden="false">Undo</span></a><a id="cke_324" class="cke_button cke_button__redo cke_button_disabled " href="javascript:void('Redo')" title="Redo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_324_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(656,event);" onfocus="return CKEDITOR.tools.callFunction(657,event);" onclick="CKEDITOR.tools.callFunction(658,this);return false;"><span class="cke_button_icon cke_button__redo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1944px;background-size:auto;">&nbsp;</span><span id="cke_324_label" class="cke_button_label cke_button__redo_label" aria-hidden="false">Redo</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_325" class="cke_toolbar" aria-labelledby="cke_325_label" role="toolbar"><span id="cke_325_label" class="cke_voice_label">Editing</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_326" class="cke_button cke_button__find cke_button_off" href="javascript:void('Find')" title="Find" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_326_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(659,event);" onfocus="return CKEDITOR.tools.callFunction(660,event);" onclick="CKEDITOR.tools.callFunction(661,this);return false;"><span class="cke_button_icon cke_button__find_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -528px;background-size:auto;">&nbsp;</span><span id="cke_326_label" class="cke_button_label cke_button__find_label" aria-hidden="false">Find</span></a><a id="cke_327" class="cke_button cke_button__replace cke_button_off" href="javascript:void('Replace')" title="Replace" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_327_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(662,event);" onfocus="return CKEDITOR.tools.callFunction(663,event);" onclick="CKEDITOR.tools.callFunction(664,this);return false;"><span class="cke_button_icon cke_button__replace_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -552px;background-size:auto;">&nbsp;</span><span id="cke_327_label" class="cke_button_label cke_button__replace_label" aria-hidden="false">Replace</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_328" class="cke_button cke_button__selectall cke_button_off" href="javascript:void('Select All')" title="Select All" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_328_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(665,event);" onfocus="return CKEDITOR.tools.callFunction(666,event);" onclick="CKEDITOR.tools.callFunction(667,this);return false;"><span class="cke_button_icon cke_button__selectall_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1728px;background-size:auto;">&nbsp;</span><span id="cke_328_label" class="cke_button_label cke_button__selectall_label" aria-hidden="false">Select All</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_329" class="cke_button cke_button__scayt cke_button_off" href="javascript:void('Spell Checker')" title="Spell Checker" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_329_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(668,event);" onfocus="return CKEDITOR.tools.callFunction(669,event);" onclick="CKEDITOR.tools.callFunction(670,this);return false;"><span class="cke_button_icon cke_button__scayt_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1872px;background-size:auto;">&nbsp;</span><span id="cke_329_label" class="cke_button_label cke_button__scayt_label" aria-hidden="false">Spell Check As You Type</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_330" class="cke_toolbar" aria-labelledby="cke_330_label" role="toolbar"><span id="cke_330_label" class="cke_voice_label">Forms</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_331" class="cke_button cke_button__form cke_button_off" href="javascript:void('Form')" title="Form" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_331_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(671,event);" onfocus="return CKEDITOR.tools.callFunction(672,event);" onclick="CKEDITOR.tools.callFunction(673,this);return false;"><span class="cke_button_icon cke_button__form_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -648px;background-size:auto;">&nbsp;</span><span id="cke_331_label" class="cke_button_label cke_button__form_label" aria-hidden="false">Form</span></a><a id="cke_332" class="cke_button cke_button__checkbox cke_button_off" href="javascript:void('Checkbox')" title="Checkbox" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_332_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(674,event);" onfocus="return CKEDITOR.tools.callFunction(675,event);" onclick="CKEDITOR.tools.callFunction(676,this);return false;"><span class="cke_button_icon cke_button__checkbox_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -624px;background-size:auto;">&nbsp;</span><span id="cke_332_label" class="cke_button_label cke_button__checkbox_label" aria-hidden="false">Checkbox</span></a><a id="cke_333" class="cke_button cke_button__radio cke_button_off" href="javascript:void('Radio Button')" title="Radio Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_333_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(677,event);" onfocus="return CKEDITOR.tools.callFunction(678,event);" onclick="CKEDITOR.tools.callFunction(679,this);return false;"><span class="cke_button_icon cke_button__radio_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -720px;background-size:auto;">&nbsp;</span><span id="cke_333_label" class="cke_button_label cke_button__radio_label" aria-hidden="false">Radio Button</span></a><a id="cke_334" class="cke_button cke_button__textfield cke_button_off" href="javascript:void('Text Field')" title="Text Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_334_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(680,event);" onfocus="return CKEDITOR.tools.callFunction(681,event);" onclick="CKEDITOR.tools.callFunction(682,this);return false;"><span class="cke_button_icon cke_button__textfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -864px;background-size:auto;">&nbsp;</span><span id="cke_334_label" class="cke_button_label cke_button__textfield_label" aria-hidden="false">Text Field</span></a><a id="cke_335" class="cke_button cke_button__textarea cke_button_off" href="javascript:void('Textarea')" title="Textarea" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_335_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(683,event);" onfocus="return CKEDITOR.tools.callFunction(684,event);" onclick="CKEDITOR.tools.callFunction(685,this);return false;"><span class="cke_button_icon cke_button__textarea_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -816px;background-size:auto;">&nbsp;</span><span id="cke_335_label" class="cke_button_label cke_button__textarea_label" aria-hidden="false">Textarea</span></a><a id="cke_336" class="cke_button cke_button__select cke_button_off" href="javascript:void('Selection Field')" title="Selection Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_336_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(686,event);" onfocus="return CKEDITOR.tools.callFunction(687,event);" onclick="CKEDITOR.tools.callFunction(688,this);return false;"><span class="cke_button_icon cke_button__select_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -768px;background-size:auto;">&nbsp;</span><span id="cke_336_label" class="cke_button_label cke_button__select_label" aria-hidden="false">Selection Field</span></a><a id="cke_337" class="cke_button cke_button__button cke_button_off" href="javascript:void('Button')" title="Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_337_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(689,event);" onfocus="return CKEDITOR.tools.callFunction(690,event);" onclick="CKEDITOR.tools.callFunction(691,this);return false;"><span class="cke_button_icon cke_button__button_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -600px;background-size:auto;">&nbsp;</span><span id="cke_337_label" class="cke_button_label cke_button__button_label" aria-hidden="false">Button</span></a><a id="cke_338" class="cke_button cke_button__imagebutton cke_button_off" href="javascript:void('Image Button')" title="Image Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_338_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(692,event);" onfocus="return CKEDITOR.tools.callFunction(693,event);" onclick="CKEDITOR.tools.callFunction(694,this);return false;"><span class="cke_button_icon cke_button__imagebutton_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -696px;background-size:auto;">&nbsp;</span><span id="cke_338_label" class="cke_button_label cke_button__imagebutton_label" aria-hidden="false">Image Button</span></a><a id="cke_339" class="cke_button cke_button__hiddenfield cke_button_off" href="javascript:void('Hidden Field')" title="Hidden Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_339_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(695,event);" onfocus="return CKEDITOR.tools.callFunction(696,event);" onclick="CKEDITOR.tools.callFunction(697,this);return false;"><span class="cke_button_icon cke_button__hiddenfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -672px;background-size:auto;">&nbsp;</span><span id="cke_339_label" class="cke_button_label cke_button__hiddenfield_label" aria-hidden="false">Hidden Field</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_340" class="cke_toolbar" aria-labelledby="cke_340_label" role="toolbar"><span id="cke_340_label" class="cke_voice_label">Basic Styles</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_341" class="cke_button cke_button__bold cke_button_off" href="javascript:void('Bold')" title="Bold" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_341_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(698,event);" onfocus="return CKEDITOR.tools.callFunction(699,event);" onclick="CKEDITOR.tools.callFunction(700,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -24px;background-size:auto;">&nbsp;</span><span id="cke_341_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">Bold</span></a><a id="cke_342" class="cke_button cke_button__italic cke_button_off" href="javascript:void('Italic')" title="Italic" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_342_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(701,event);" onfocus="return CKEDITOR.tools.callFunction(702,event);" onclick="CKEDITOR.tools.callFunction(703,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_342_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">Italic</span></a><a id="cke_343" class="cke_button cke_button__underline cke_button_off" href="javascript:void('Underline')" title="Underline" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_343_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(704,event);" onfocus="return CKEDITOR.tools.callFunction(705,event);" onclick="CKEDITOR.tools.callFunction(706,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_343_label" class="cke_button_label cke_button__underline_label" aria-hidden="false">Underline</span></a><a id="cke_344" class="cke_button cke_button__strike cke_button_off" href="javascript:void('Strikethrough')" title="Strikethrough" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_344_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(707,event);" onfocus="return CKEDITOR.tools.callFunction(708,event);" onclick="CKEDITOR.tools.callFunction(709,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_344_label" class="cke_button_label cke_button__strike_label" aria-hidden="false">Strikethrough</span></a><a id="cke_345" class="cke_button cke_button__subscript cke_button_off" href="javascript:void('Subscript')" title="Subscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_345_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(710,event);" onfocus="return CKEDITOR.tools.callFunction(711,event);" onclick="CKEDITOR.tools.callFunction(712,this);return false;"><span class="cke_button_icon cke_button__subscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -96px;background-size:auto;">&nbsp;</span><span id="cke_345_label" class="cke_button_label cke_button__subscript_label" aria-hidden="false">Subscript</span></a><a id="cke_346" class="cke_button cke_button__superscript cke_button_off" href="javascript:void('Superscript')" title="Superscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_346_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(713,event);" onfocus="return CKEDITOR.tools.callFunction(714,event);" onclick="CKEDITOR.tools.callFunction(715,this);return false;"><span class="cke_button_icon cke_button__superscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -120px;background-size:auto;">&nbsp;</span><span id="cke_346_label" class="cke_button_label cke_button__superscript_label" aria-hidden="false">Superscript</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_347" class="cke_button cke_button__removeformat cke_button_off" href="javascript:void('Remove Format')" title="Remove Format" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_347_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(716,event);" onfocus="return CKEDITOR.tools.callFunction(717,event);" onclick="CKEDITOR.tools.callFunction(718,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1680px;background-size:auto;">&nbsp;</span><span id="cke_347_label" class="cke_button_label cke_button__removeformat_label" aria-hidden="false">Remove Format</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_348" class="cke_toolbar" aria-labelledby="cke_348_label" role="toolbar"><span id="cke_348_label" class="cke_voice_label">Paragraph</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_349" class="cke_button cke_button__numberedlist cke_button_off" href="javascript:void('Insert/Remove Numbered List')" title="Insert/Remove Numbered List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_349_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(719,event);" onfocus="return CKEDITOR.tools.callFunction(720,event);" onclick="CKEDITOR.tools.callFunction(721,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1368px;background-size:auto;">&nbsp;</span><span id="cke_349_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">Insert/Remove Numbered List</span></a><a id="cke_350" class="cke_button cke_button__bulletedlist cke_button_off" href="javascript:void('Insert/Remove Bulleted List')" title="Insert/Remove Bulleted List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_350_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(722,event);" onfocus="return CKEDITOR.tools.callFunction(723,event);" onclick="CKEDITOR.tools.callFunction(724,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1320px;background-size:auto;">&nbsp;</span><span id="cke_350_label" class="cke_button_label cke_button__bulletedlist_label" aria-hidden="false">Insert/Remove Bulleted List</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_351" class="cke_button cke_button__outdent cke_button_disabled " href="javascript:void('Decrease Indent')" title="Decrease Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_351_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(725,event);" onfocus="return CKEDITOR.tools.callFunction(726,event);" onclick="CKEDITOR.tools.callFunction(727,this);return false;"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1032px;background-size:auto;">&nbsp;</span><span id="cke_351_label" class="cke_button_label cke_button__outdent_label" aria-hidden="false">Decrease Indent</span></a><a id="cke_352" class="cke_button cke_button__indent cke_button_off" href="javascript:void('Increase Indent')" title="Increase Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_352_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(728,event);" onfocus="return CKEDITOR.tools.callFunction(729,event);" onclick="CKEDITOR.tools.callFunction(730,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -984px;background-size:auto;">&nbsp;</span><span id="cke_352_label" class="cke_button_label cke_button__indent_label" aria-hidden="false">Increase Indent</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_353" class="cke_button cke_button__blockquote cke_button_off" href="javascript:void('Block Quote')" title="Block Quote" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_353_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(731,event);" onfocus="return CKEDITOR.tools.callFunction(732,event);" onclick="CKEDITOR.tools.callFunction(733,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -216px;background-size:auto;">&nbsp;</span><span id="cke_353_label" class="cke_button_label cke_button__blockquote_label" aria-hidden="false">Block Quote</span></a><a id="cke_354" class="cke_button cke_button__creatediv cke_button_off" href="javascript:void('Create Div Container')" title="Create Div Container" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_354_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(734,event);" onfocus="return CKEDITOR.tools.callFunction(735,event);" onclick="CKEDITOR.tools.callFunction(736,this);return false;"><span class="cke_button_icon cke_button__creatediv_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -480px;background-size:auto;">&nbsp;</span><span id="cke_354_label" class="cke_button_label cke_button__creatediv_label" aria-hidden="false">Create Div Container</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_355" class="cke_button cke_button__justifyleft cke_button_off" href="javascript:void('Align Left')" title="Align Left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_355_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(737,event);" onfocus="return CKEDITOR.tools.callFunction(738,event);" onclick="CKEDITOR.tools.callFunction(739,this);return false;"><span class="cke_button_icon cke_button__justifyleft_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1128px;background-size:auto;">&nbsp;</span><span id="cke_355_label" class="cke_button_label cke_button__justifyleft_label" aria-hidden="false">Align Left</span></a><a id="cke_356" class="cke_button cke_button__justifycenter cke_button_off" href="javascript:void('Center')" title="Center" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_356_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(740,event);" onfocus="return CKEDITOR.tools.callFunction(741,event);" onclick="CKEDITOR.tools.callFunction(742,this);return false;"><span class="cke_button_icon cke_button__justifycenter_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1104px;background-size:auto;">&nbsp;</span><span id="cke_356_label" class="cke_button_label cke_button__justifycenter_label" aria-hidden="false">Center</span></a><a id="cke_357" class="cke_button cke_button__justifyright cke_button_off" href="javascript:void('Align Right')" title="Align Right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_357_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(743,event);" onfocus="return CKEDITOR.tools.callFunction(744,event);" onclick="CKEDITOR.tools.callFunction(745,this);return false;"><span class="cke_button_icon cke_button__justifyright_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1152px;background-size:auto;">&nbsp;</span><span id="cke_357_label" class="cke_button_label cke_button__justifyright_label" aria-hidden="false">Align Right</span></a><a id="cke_358" class="cke_button cke_button__justifyblock cke_button_off" href="javascript:void('Justify')" title="Justify" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_358_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(746,event);" onfocus="return CKEDITOR.tools.callFunction(747,event);" onclick="CKEDITOR.tools.callFunction(748,this);return false;"><span class="cke_button_icon cke_button__justifyblock_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1080px;background-size:auto;">&nbsp;</span><span id="cke_358_label" class="cke_button_label cke_button__justifyblock_label" aria-hidden="false">Justify</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_359" class="cke_button cke_button__bidiltr cke_button_off" href="javascript:void('Text direction from left to right')" title="Text direction from left to right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_359_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(749,event);" onfocus="return CKEDITOR.tools.callFunction(750,event);" onclick="CKEDITOR.tools.callFunction(751,this);return false;"><span class="cke_button_icon cke_button__bidiltr_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -168px;background-size:auto;">&nbsp;</span><span id="cke_359_label" class="cke_button_label cke_button__bidiltr_label" aria-hidden="false">Text direction from left to right</span></a><a id="cke_360" class="cke_button cke_button__bidirtl cke_button_off" href="javascript:void('Text direction from right to left')" title="Text direction from right to left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_360_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(752,event);" onfocus="return CKEDITOR.tools.callFunction(753,event);" onclick="CKEDITOR.tools.callFunction(754,this);return false;"><span class="cke_button_icon cke_button__bidirtl_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -192px;background-size:auto;">&nbsp;</span><span id="cke_360_label" class="cke_button_label cke_button__bidirtl_label" aria-hidden="false">Text direction from right to left</span></a><a id="cke_361" class="cke_button cke_button__language cke_button_off" href="javascript:void('Set language')" title="Set language" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_361_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(755,event);" onfocus="return CKEDITOR.tools.callFunction(756,event);" onclick="CKEDITOR.tools.callFunction(757,this);return false;"><span class="cke_button_icon cke_button__language_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1176px;background-size:auto;">&nbsp;</span><span id="cke_361_label" class="cke_button_label cke_button__language_label" aria-hidden="false">Set language</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_362" class="cke_toolbar" aria-labelledby="cke_362_label" role="toolbar"><span id="cke_362_label" class="cke_voice_label">Links</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_363" class="cke_button cke_button__link cke_button_off" href="javascript:void('Link')" title="Link" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_363_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(758,event);" onfocus="return CKEDITOR.tools.callFunction(759,event);" onclick="CKEDITOR.tools.callFunction(760,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1248px;background-size:auto;">&nbsp;</span><span id="cke_363_label" class="cke_button_label cke_button__link_label" aria-hidden="false">Link</span></a><a id="cke_364" class="cke_button cke_button__unlink cke_button_disabled " href="javascript:void('Unlink')" title="Unlink" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_364_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(761,event);" onfocus="return CKEDITOR.tools.callFunction(762,event);" onclick="CKEDITOR.tools.callFunction(763,this);return false;"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1272px;background-size:auto;">&nbsp;</span><span id="cke_364_label" class="cke_button_label cke_button__unlink_label" aria-hidden="false">Unlink</span></a><a id="cke_365" class="cke_button cke_button__anchor cke_button_off" href="javascript:void('Anchor')" title="Anchor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_365_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(764,event);" onfocus="return CKEDITOR.tools.callFunction(765,event);" onclick="CKEDITOR.tools.callFunction(766,this);return false;"><span class="cke_button_icon cke_button__anchor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1224px;background-size:auto;">&nbsp;</span><span id="cke_365_label" class="cke_button_label cke_button__anchor_label" aria-hidden="false">Anchor</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_366" class="cke_toolbar" aria-labelledby="cke_366_label" role="toolbar"><span id="cke_366_label" class="cke_voice_label">Insert</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_367" class="cke_button cke_button__image cke_button_off" href="javascript:void('Image')" title="Image" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_367_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(767,event);" onfocus="return CKEDITOR.tools.callFunction(768,event);" onclick="CKEDITOR.tools.callFunction(769,this);return false;"><span class="cke_button_icon cke_button__image_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -936px;background-size:auto;">&nbsp;</span><span id="cke_367_label" class="cke_button_label cke_button__image_label" aria-hidden="false">Image</span></a><a id="cke_368" class="cke_button cke_button__flash cke_button_off" href="javascript:void('Flash')" title="Flash" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_368_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(770,event);" onfocus="return CKEDITOR.tools.callFunction(771,event);" onclick="CKEDITOR.tools.callFunction(772,this);return false;"><span class="cke_button_icon cke_button__flash_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -576px;background-size:auto;">&nbsp;</span><span id="cke_368_label" class="cke_button_label cke_button__flash_label" aria-hidden="false">Flash</span></a><a id="cke_369" class="cke_button cke_button__table cke_button_off" href="javascript:void('Table')" title="Table" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_369_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(773,event);" onfocus="return CKEDITOR.tools.callFunction(774,event);" onclick="CKEDITOR.tools.callFunction(775,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1896px;background-size:auto;">&nbsp;</span><span id="cke_369_label" class="cke_button_label cke_button__table_label" aria-hidden="false">Table</span></a><a id="cke_370" class="cke_button cke_button__horizontalrule cke_button_off" href="javascript:void('Insert Horizontal Line')" title="Insert Horizontal Line" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_370_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(776,event);" onfocus="return CKEDITOR.tools.callFunction(777,event);" onclick="CKEDITOR.tools.callFunction(778,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -888px;background-size:auto;">&nbsp;</span><span id="cke_370_label" class="cke_button_label cke_button__horizontalrule_label" aria-hidden="false">Insert Horizontal Line</span></a><a id="cke_371" class="cke_button cke_button__smiley cke_button_off" href="javascript:void('Smiley')" title="Smiley" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_371_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(779,event);" onfocus="return CKEDITOR.tools.callFunction(780,event);" onclick="CKEDITOR.tools.callFunction(781,this);return false;"><span class="cke_button_icon cke_button__smiley_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1056px;background-size:auto;">&nbsp;</span><span id="cke_371_label" class="cke_button_label cke_button__smiley_label" aria-hidden="false">Smiley</span></a><a id="cke_372" class="cke_button cke_button__specialchar cke_button_off" href="javascript:void('Insert Special Character')" title="Insert Special Character" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_372_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(782,event);" onfocus="return CKEDITOR.tools.callFunction(783,event);" onclick="CKEDITOR.tools.callFunction(784,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1848px;background-size:auto;">&nbsp;</span><span id="cke_372_label" class="cke_button_label cke_button__specialchar_label" aria-hidden="false">Insert Special Character</span></a><a id="cke_373" class="cke_button cke_button__pagebreak cke_button_off" href="javascript:void('Insert Page Break for Printing')" title="Insert Page Break for Printing" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_373_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(785,event);" onfocus="return CKEDITOR.tools.callFunction(786,event);" onclick="CKEDITOR.tools.callFunction(787,this);return false;"><span class="cke_button_icon cke_button__pagebreak_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1488px;background-size:auto;">&nbsp;</span><span id="cke_373_label" class="cke_button_label cke_button__pagebreak_label" aria-hidden="false">Insert Page Break for Printing</span></a><a id="cke_374" class="cke_button cke_button__iframe cke_button_off" href="javascript:void('IFrame')" title="IFrame" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_374_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(788,event);" onfocus="return CKEDITOR.tools.callFunction(789,event);" onclick="CKEDITOR.tools.callFunction(790,this);return false;"><span class="cke_button_icon cke_button__iframe_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -912px;background-size:auto;">&nbsp;</span><span id="cke_374_label" class="cke_button_label cke_button__iframe_label" aria-hidden="false">IFrame</span></a><a id="cke_375" class="cke_button cke_button__hkemoji cke_button_off" href="javascript:void('Insert emoji')" title="Insert emoji" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_375_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(791,event);" onfocus="return CKEDITOR.tools.callFunction(792,event);" onclick="CKEDITOR.tools.callFunction(793,this);return false;"><span class="cke_button_icon cke_button__hkemoji_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/icons/hkemoji.png?t=G4CD');background-position:0 0px;background-size:16px;">&nbsp;</span><span id="cke_375_label" class="cke_button_label cke_button__hkemoji_label" aria-hidden="false">Insert emoji</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_376" class="cke_toolbar" aria-labelledby="cke_376_label" role="toolbar"><span id="cke_376_label" class="cke_voice_label">Styles</span><span class="cke_toolbar_start"></span><span id="cke_306" class="cke_combo cke_combo__styles cke_combo_off" role="presentation"><span id="cke_306_label" class="cke_combo_label">Styles</span><a class="cke_combo_button" title="Formatting Styles" tabindex="-1" href="javascript:void('Formatting Styles')" hidefocus="true" role="button" aria-labelledby="cke_306_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(795,event,this);" onfocus="return CKEDITOR.tools.callFunction(796,event);" onclick="CKEDITOR.tools.callFunction(794,this);return false;"><span id="cke_306_text" class="cke_combo_text cke_combo_inlinelabel">Styles</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_307" class="cke_combo cke_combo__format cke_combo_off" role="presentation"><span id="cke_307_label" class="cke_combo_label">Format</span><a class="cke_combo_button" title="Paragraph Format" tabindex="-1" href="javascript:void('Paragraph Format')" hidefocus="true" role="button" aria-labelledby="cke_307_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(798,event,this);" onfocus="return CKEDITOR.tools.callFunction(799,event);" onclick="CKEDITOR.tools.callFunction(797,this);return false;"><span id="cke_307_text" class="cke_combo_text cke_combo_inlinelabel">Format</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_308" class="cke_combo cke_combo__font cke_combo_off" role="presentation"><span id="cke_308_label" class="cke_combo_label">Font</span><a class="cke_combo_button" title="Font Name" tabindex="-1" href="javascript:void('Font Name')" hidefocus="true" role="button" aria-labelledby="cke_308_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(801,event,this);" onfocus="return CKEDITOR.tools.callFunction(802,event);" onclick="CKEDITOR.tools.callFunction(800,this);return false;"><span id="cke_308_text" class="cke_combo_text cke_combo_inlinelabel">Font</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_309" class="cke_combo cke_combo__fontsize cke_combo_off" role="presentation"><span id="cke_309_label" class="cke_combo_label">Size</span><a class="cke_combo_button" title="Font Size" tabindex="-1" href="javascript:void('Font Size')" hidefocus="true" role="button" aria-labelledby="cke_309_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(804,event,this);" onfocus="return CKEDITOR.tools.callFunction(805,event);" onclick="CKEDITOR.tools.callFunction(803,this);return false;"><span id="cke_309_text" class="cke_combo_text cke_combo_inlinelabel">Size</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_377" class="cke_toolbar" aria-labelledby="cke_377_label" role="toolbar"><span id="cke_377_label" class="cke_voice_label">Colors</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_378" class="cke_button cke_button__textcolor cke_button_off" href="javascript:void('Text Color')" title="Text Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_378_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(806,event);" onfocus="return CKEDITOR.tools.callFunction(807,event);" onclick="CKEDITOR.tools.callFunction(808,this);return false;"><span class="cke_button_icon cke_button__textcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -408px;background-size:auto;">&nbsp;</span><span id="cke_378_label" class="cke_button_label cke_button__textcolor_label" aria-hidden="false">Text Color</span><span class="cke_button_arrow"></span></a><a id="cke_379" class="cke_button cke_button__bgcolor cke_button_off" href="javascript:void('Background Color')" title="Background Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_379_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(809,event);" onfocus="return CKEDITOR.tools.callFunction(810,event);" onclick="CKEDITOR.tools.callFunction(811,this);return false;"><span class="cke_button_icon cke_button__bgcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -384px;background-size:auto;">&nbsp;</span><span id="cke_379_label" class="cke_button_label cke_button__bgcolor_label" aria-hidden="false">Background Color</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_380" class="cke_toolbar" aria-labelledby="cke_380_label" role="toolbar"><span id="cke_380_label" class="cke_voice_label">Tools</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_381" class="cke_button cke_button__maximize cke_button_off" href="javascript:void('Maximize')" title="Maximize" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_381_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(812,event);" onfocus="return CKEDITOR.tools.callFunction(813,event);" onclick="CKEDITOR.tools.callFunction(814,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1392px;background-size:auto;">&nbsp;</span><span id="cke_381_label" class="cke_button_label cke_button__maximize_label" aria-hidden="false">Maximize</span></a><a id="cke_382" class="cke_button cke_button__showblocks cke_button_off" href="javascript:void('Show Blocks')" title="Show Blocks" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_382_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(815,event);" onfocus="return CKEDITOR.tools.callFunction(816,event);" onclick="CKEDITOR.tools.callFunction(817,this);return false;"><span class="cke_button_icon cke_button__showblocks_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1776px;background-size:auto;">&nbsp;</span><span id="cke_382_label" class="cke_button_label cke_button__showblocks_label" aria-hidden="false">Show Blocks</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_383" class="cke_toolbar" aria-labelledby="cke_383_label" role="toolbar"><span id="cke_383_label" class="cke_voice_label">about</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_384" class="cke_button cke_button__about cke_button_off" href="javascript:void('About CKEditor')" title="About CKEditor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_384_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(818,event);" onfocus="return CKEDITOR.tools.callFunction(819,event);" onclick="CKEDITOR.tools.callFunction(820,this);return false;"><span class="cke_button_icon cke_button__about_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 0px;background-size:auto;">&nbsp;</span><span id="cke_384_label" class="cke_button_label cke_button__about_label" aria-hidden="false">About CKEditor</span></a></span><span class="cke_toolbar_end"></span></span></span></span><div id="cke_4_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><span id="cke_389" class="cke_voice_label">Press ALT 0 for help</span><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" style="width: 100%; height: 100%;" title="Rich Text Editor, editor_4" aria-describedby="cke_389" tabindex="0" allowtransparency="true"></iframe></div><span id="cke_4_bottom" class="cke_bottom cke_reset_all" role="presentation" style="user-select: none;"><span id="cke_4_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="Resize" onmousedown="CKEDITOR.tools.callFunction(618, event)">◢</span><span id="cke_4_path_label" class="cke_voice_label">Elements path</span><span id="cke_4_path" class="cke_path" role="group" aria-labelledby="cke_4_path_label"><span class="cke_path_empty">&nbsp;</span></span></span></div></div>



                                                                    </div>



                                                                </div>

                                                                <!--   <div class="form-group">

                                                                    <div class="input-group mb-2">

                                                                    

                                                                        <div class="box w-100">
                                                                            <input type="file" name="userfile" id="file-7"
                                                                                class="inputfile inputfile-6"
                                                                                data-multiple-caption="{count} files selected" />
                                                                            <label for="file-7"><span>Upload
                                                                                    Picture</span> <strong><svg
                                                                                        xmlns="http://www.w3.org/2000/svg"
                                                                                        width="20" height="17"
                                                                                        viewBox="0 0 20 17">
                                                                                        <path
                                                                                            d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" />
                                                                                        </svg> Choose a
                                                                                    file&hellip;</strong></label>
                                                                        </div>


                                                                        <p> *(Use .jpg or .png format Picture.)</p>

                                                                    </div>

                                                                </div> -->

                                                                    <div class="row mb-4 mt-4">
        <div class="col-lg-6">
                                    <a href="JavaScript:Void(0);" id="smam4" class="spam-link">Spam Checker</a>

                                    </div>
            <div class="col-lg-6 text-lg-right">
                                    <a href="#" class="spam-link" data-toggle="modal" data-target="#spammodal">Spam Trigger Words</a>

                                    </div>
        </div>

                                                



                                                                <div class="text-center">



                                                                    <input type="submit" value="Send" name="emailsbmit" class="btn btn-info btn-block rounded-0 py-2">
                                                                        <br>

                                            


                                                                </div>
                                                                



                                                        </div>



                                                        











                                                    </div>



                                                    



                                                </div>







                                            </div>



                                        </div><table class="table align-items-center table-flush" id="">



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



                                        






                                        <tr>



                                            <td>



                                                1


                                            </td>



                                            <td>







                                                subhradip


                                            </td>







                                            <td>







                                                sinha


                                            </td>



                                            <td>



                                                subhradip6@yahoo.com


                                            </td>



                                            <td>



                                                


                                                Jul 31, 2019


                                            </td>



                                            <td>
                                                <div class="actions">
                                                    <a href="#" title="Mail" data-toggle="modal" data-target="#myModal1" class="mr-2"> <i class="fa fa-envelope" style="font-size:20px"></i></a>

                                                    <a href="" data-toggle="modal" data-target="#myModal0011" title="Delete" data-placement="top"><i class="fa fa-times" style="font-size:20px"></i></a>
                                                </div>


                                            </td>







                                        </tr>

                                        



                                        <!-- Modal -->



                                        

                                        <style type="text/css">
                                            .amit {
                                            color: orange;
                                        }
                                        </style>

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

                                        CKEDITOR.replace('editor_1');
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







                                        






                                        <tr>



                                            <td>



                                                2


                                            </td>



                                            <td>







                                                T


                                            </td>







                                            <td>







                                                Paul


                                            </td>



                                            <td>



                                                hr@onpassive.com


                                            </td>



                                            <td>



                                                


                                                Jul 3, 2019


                                            </td>



                                            <td>
                                                <div class="actions">
                                                    <a href="#" title="Mail" data-toggle="modal" data-target="#myModal2" class="mr-2"> <i class="fa fa-envelope" style="font-size:20px"></i></a>

                                                    <a href="" data-toggle="modal" data-target="#myModal0012" title="Delete" data-placement="top"><i class="fa fa-times" style="font-size:20px"></i></a>
                                                </div>


                                            </td>







                                        </tr>

                                        



                                        <!-- Modal -->



                                        

                                        <style type="text/css">
                                            .amit {
                                            color: orange;
                                        }
                                        </style>

                                        <script>
                                        function validateBadText2(){
                                            var spam_count = 0;
                                            var searched_val = "";
                                            var find_str = "";
                                            var replace_str = "";
                                            var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

                                            var mail_template_content =  CKEDITOR.instances.editor_2.getData();
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

                                        CKEDITOR.replace('editor_2');
                                        </script>

    <script>

    $(document).ready(function(){
        $("#smam2").click(function(){
        var spam_count = 0;
        var searched_val = "";
        var find_str = "";
        var replace_str = "";
        var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

        var mail_template_content =  CKEDITOR.instances.editor_2.getData();
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







                                        






                                        <tr>



                                            <td>



                                                3


                                            </td>



                                            <td>







                                                roosha


                                            </td>







                                            <td>







                                                debnath


                                            </td>



                                            <td>



                                                roosha@inventiotechnologies.com


                                            </td>



                                            <td>



                                                


                                                Mar 19, 2019


                                            </td>



                                            <td>
                                                <div class="actions">
                                                    <a href="#" title="Mail" data-toggle="modal" data-target="#myModal3" class="mr-2"> <i class="fa fa-envelope" style="font-size:20px"></i></a>

                                                    <a href="" data-toggle="modal" data-target="#myModal0013" title="Delete" data-placement="top"><i class="fa fa-times" style="font-size:20px"></i></a>
                                                </div>


                                            </td>







                                        </tr>

                                        



                                        <!-- Modal -->



                                        

                                        <style type="text/css">
                                            .amit {
                                            color: orange;
                                        }
                                        </style>

                                        <script>
                                        function validateBadText3(){
                                            var spam_count = 0;
                                            var searched_val = "";
                                            var find_str = "";
                                            var replace_str = "";
                                            var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

                                            var mail_template_content =  CKEDITOR.instances.editor_3.getData();
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

                                        CKEDITOR.replace('editor_3');
                                        </script>

    <script>

    $(document).ready(function(){
        $("#smam3").click(function(){
        var spam_count = 0;
        var searched_val = "";
        var find_str = "";
        var replace_str = "";
        var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

        var mail_template_content =  CKEDITOR.instances.editor_3.getData();
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







                                        






                                        <tr>



                                            <td>



                                                4


                                            </td>



                                            <td>







                                                Saik


                                            </td>







                                            <td>







                                                Pal


                                            </td>



                                            <td>



                                                saikatbose59@gmail.com


                                            </td>



                                            <td>



                                                


                                                Mar 14, 2019


                                            </td>



                                            <td>
                                                <div class="actions">
                                                    <a href="#" title="Mail" data-toggle="modal" data-target="#myModal4" class="mr-2"> <i class="fa fa-envelope" style="font-size:20px"></i></a>

                                                    <a href="" data-toggle="modal" data-target="#myModal0014" title="Delete" data-placement="top"><i class="fa fa-times" style="font-size:20px"></i></a>
                                                </div>


                                            </td>







                                        </tr>

                                        



                                        <!-- Modal -->



                                        

                                        <style type="text/css">
                                            .amit {
                                            color: orange;
                                        }
                                        </style>

                                        <script>
                                        function validateBadText4(){
                                            var spam_count = 0;
                                            var searched_val = "";
                                            var find_str = "";
                                            var replace_str = "";
                                            var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

                                            var mail_template_content =  CKEDITOR.instances.editor_4.getData();
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

                                        CKEDITOR.replace('editor_4');
                                        </script>

    <script>

    $(document).ready(function(){
        $("#smam4").click(function(){
        var spam_count = 0;
        var searched_val = "";
        var find_str = "";
        var replace_str = "";
        var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

        var mail_template_content =  CKEDITOR.instances.editor_4.getData();
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







                                        


                                    </tbody>



                                </table>

                                <div class="row" style="padding: 15px 0;    background: #eaeaea;">
                                    <div class="col-lg-6 ">
                                        <div id="pagination">
                                            <ul class="tsc_pagination">


                                                <li></li>                                          </ul>
                                        </div>
                                    </div>


                                    <div class="col-lg-6 p-result text-right">
                                        <span>
                                            
                                            <p class="m-b" style="margin-bottom: 0;   
        font-weight: 600;
        text-transform: capitalize;"> showing from 1 to
                                                4 of 4                                          </p>

                                                                                    </span>
                                    </div>

                                </div>








                            </div>











                        </div>







                    </div>







                </div>





                <p><br><br><br><br></p>







            </div>



        </div>



    </div>



    <input type="hidden" name="userid" id="userid" value="7364">







    <!-- Modal -->



    <div class="modal fade" id="myModal_a" role="dialog">



        <div class="modal-dialog">







            <!-- Modal content-->



            <div class="modal-content">





                <div class="modal-body">


                    <button type="button" class="close" data-dismiss="modal">×</button>




                    <div class="">







                        










                        <form method="post" action="#" enctype="multipart/form-data" onsubmit="return validateBadText();">



                            <!--Body-->



















                            <!--  <label for="email">Send email to</label> -->



                            <input type="hidden" class="form-control" id="email1" name="email1" value="subhradip6@yahoo.com,hr@onpassive.com,roosha@inventiotechnologies.com,saikatbose59@gmail.com">







                            <div class="form-group">

                                




                                <label for="subject">Subject</label>



                                <input type="text" class="form-control" id="sub" name="sub" value="New Message From Tanmoy Paul" readonly="">



















                            </div>

                                <input type="hidden" class="form-control" name="date" value="2019/08/07" required="">

                            <!--<div class="form-group">

                                <label for="date">Date</label>

                                <input type="text" class="form-control" id="date_picker" name="date" value="" required="">

                            </div>-->

                            <div class="form-group">

                                <label for="email">Message</label>
                                <textarea name="msg" class="form-control" id="editornew" placeholder="Enter your message" style="visibility: hidden; display: none;"></textarea><div id="cke_editornew" class="cke_5 cke cke_reset cke_chrome cke_editor_editornew cke_ltr cke_browser_webkit" dir="ltr" lang="en" role="application" aria-labelledby="cke_editornew_arialbl"><span id="cke_editornew_arialbl" class="cke_voice_label">Rich Text Editor, editornew</span><div class="cke_inner cke_reset" role="presentation"><span id="cke_5_top" class="cke_top cke_reset_all" role="presentation" style="height: auto; user-select: none;"><span id="cke_398" class="cke_voice_label">Editor toolbars</span><span id="cke_5_toolbox" class="cke_toolbox" role="group" aria-labelledby="cke_398" onmousedown="return false;"><span id="cke_403" class="cke_toolbar" aria-labelledby="cke_403_label" role="toolbar"><span id="cke_403_label" class="cke_voice_label">Document</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_404" class="cke_button cke_button__source cke_button_off" href="javascript:void('Source')" title="Source" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_404_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(826,event);" onfocus="return CKEDITOR.tools.callFunction(827,event);" onclick="CKEDITOR.tools.callFunction(828,this);return false;"><span class="cke_button_icon cke_button__source_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1824px;background-size:auto;">&nbsp;</span><span id="cke_404_label" class="cke_button_label cke_button__source_label" aria-hidden="false">Source</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_405" class="cke_button cke_button__save cke_button_off" href="javascript:void('Save')" title="Save" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_405_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(829,event);" onfocus="return CKEDITOR.tools.callFunction(830,event);" onclick="CKEDITOR.tools.callFunction(831,this);return false;"><span class="cke_button_icon cke_button__save_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1704px;background-size:auto;">&nbsp;</span><span id="cke_405_label" class="cke_button_label cke_button__save_label" aria-hidden="false">Save</span></a><a id="cke_406" class="cke_button cke_button__newpage cke_button_off" href="javascript:void('New Page')" title="New Page" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_406_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(832,event);" onfocus="return CKEDITOR.tools.callFunction(833,event);" onclick="CKEDITOR.tools.callFunction(834,this);return false;"><span class="cke_button_icon cke_button__newpage_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1440px;background-size:auto;">&nbsp;</span><span id="cke_406_label" class="cke_button_label cke_button__newpage_label" aria-hidden="false">New Page</span></a><a id="cke_407" class="cke_button cke_button__preview cke_button_off" href="javascript:void('Preview')" title="Preview" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_407_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(835,event);" onfocus="return CKEDITOR.tools.callFunction(836,event);" onclick="CKEDITOR.tools.callFunction(837,this);return false;"><span class="cke_button_icon cke_button__preview_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1632px;background-size:auto;">&nbsp;</span><span id="cke_407_label" class="cke_button_label cke_button__preview_label" aria-hidden="false">Preview</span></a><a id="cke_408" class="cke_button cke_button__print cke_button_off" href="javascript:void('Print')" title="Print" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_408_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(838,event);" onfocus="return CKEDITOR.tools.callFunction(839,event);" onclick="CKEDITOR.tools.callFunction(840,this);return false;"><span class="cke_button_icon cke_button__print_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1656px;background-size:auto;">&nbsp;</span><span id="cke_408_label" class="cke_button_label cke_button__print_label" aria-hidden="false">Print</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_409" class="cke_button cke_button__templates cke_button_off" href="javascript:void('Templates')" title="Templates" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_409_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(841,event);" onfocus="return CKEDITOR.tools.callFunction(842,event);" onclick="CKEDITOR.tools.callFunction(843,this);return false;"><span class="cke_button_icon cke_button__templates_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -456px;background-size:auto;">&nbsp;</span><span id="cke_409_label" class="cke_button_label cke_button__templates_label" aria-hidden="false">Templates</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_410" class="cke_toolbar" aria-labelledby="cke_410_label" role="toolbar"><span id="cke_410_label" class="cke_voice_label">Clipboard/Undo</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_411" class="cke_button cke_button__cut cke_button_disabled " href="javascript:void('Cut')" title="Cut" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_411_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(844,event);" onfocus="return CKEDITOR.tools.callFunction(845,event);" onclick="CKEDITOR.tools.callFunction(846,this);return false;"><span class="cke_button_icon cke_button__cut_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -312px;background-size:auto;">&nbsp;</span><span id="cke_411_label" class="cke_button_label cke_button__cut_label" aria-hidden="false">Cut</span></a><a id="cke_412" class="cke_button cke_button__copy cke_button_disabled " href="javascript:void('Copy')" title="Copy" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_412_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(847,event);" onfocus="return CKEDITOR.tools.callFunction(848,event);" onclick="CKEDITOR.tools.callFunction(849,this);return false;"><span class="cke_button_icon cke_button__copy_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -264px;background-size:auto;">&nbsp;</span><span id="cke_412_label" class="cke_button_label cke_button__copy_label" aria-hidden="false">Copy</span></a><a id="cke_413" class="cke_button cke_button__paste cke_button_off" href="javascript:void('Paste')" title="Paste" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_413_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(850,event);" onfocus="return CKEDITOR.tools.callFunction(851,event);" onclick="CKEDITOR.tools.callFunction(852,this);return false;"><span class="cke_button_icon cke_button__paste_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -360px;background-size:auto;">&nbsp;</span><span id="cke_413_label" class="cke_button_label cke_button__paste_label" aria-hidden="false">Paste</span></a><a id="cke_414" class="cke_button cke_button__pastetext cke_button_off" href="javascript:void('Paste as plain text')" title="Paste as plain text" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_414_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(853,event);" onfocus="return CKEDITOR.tools.callFunction(854,event);" onclick="CKEDITOR.tools.callFunction(855,this);return false;"><span class="cke_button_icon cke_button__pastetext_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1536px;background-size:auto;">&nbsp;</span><span id="cke_414_label" class="cke_button_label cke_button__pastetext_label" aria-hidden="false">Paste as plain text</span></a><a id="cke_415" class="cke_button cke_button__pastefromword cke_button_off" href="javascript:void('Paste from Word')" title="Paste from Word" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_415_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(856,event);" onfocus="return CKEDITOR.tools.callFunction(857,event);" onclick="CKEDITOR.tools.callFunction(858,this);return false;"><span class="cke_button_icon cke_button__pastefromword_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1584px;background-size:auto;">&nbsp;</span><span id="cke_415_label" class="cke_button_label cke_button__pastefromword_label" aria-hidden="false">Paste from Word</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_416" class="cke_button cke_button__undo cke_button_disabled " href="javascript:void('Undo')" title="Undo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_416_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(859,event);" onfocus="return CKEDITOR.tools.callFunction(860,event);" onclick="CKEDITOR.tools.callFunction(861,this);return false;"><span class="cke_button_icon cke_button__undo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1992px;background-size:auto;">&nbsp;</span><span id="cke_416_label" class="cke_button_label cke_button__undo_label" aria-hidden="false">Undo</span></a><a id="cke_417" class="cke_button cke_button__redo cke_button_disabled " href="javascript:void('Redo')" title="Redo" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_417_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(862,event);" onfocus="return CKEDITOR.tools.callFunction(863,event);" onclick="CKEDITOR.tools.callFunction(864,this);return false;"><span class="cke_button_icon cke_button__redo_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1944px;background-size:auto;">&nbsp;</span><span id="cke_417_label" class="cke_button_label cke_button__redo_label" aria-hidden="false">Redo</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_418" class="cke_toolbar" aria-labelledby="cke_418_label" role="toolbar"><span id="cke_418_label" class="cke_voice_label">Editing</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_419" class="cke_button cke_button__find cke_button_off" href="javascript:void('Find')" title="Find" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_419_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(865,event);" onfocus="return CKEDITOR.tools.callFunction(866,event);" onclick="CKEDITOR.tools.callFunction(867,this);return false;"><span class="cke_button_icon cke_button__find_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -528px;background-size:auto;">&nbsp;</span><span id="cke_419_label" class="cke_button_label cke_button__find_label" aria-hidden="false">Find</span></a><a id="cke_420" class="cke_button cke_button__replace cke_button_off" href="javascript:void('Replace')" title="Replace" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_420_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(868,event);" onfocus="return CKEDITOR.tools.callFunction(869,event);" onclick="CKEDITOR.tools.callFunction(870,this);return false;"><span class="cke_button_icon cke_button__replace_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -552px;background-size:auto;">&nbsp;</span><span id="cke_420_label" class="cke_button_label cke_button__replace_label" aria-hidden="false">Replace</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_421" class="cke_button cke_button__selectall cke_button_off" href="javascript:void('Select All')" title="Select All" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_421_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(871,event);" onfocus="return CKEDITOR.tools.callFunction(872,event);" onclick="CKEDITOR.tools.callFunction(873,this);return false;"><span class="cke_button_icon cke_button__selectall_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1728px;background-size:auto;">&nbsp;</span><span id="cke_421_label" class="cke_button_label cke_button__selectall_label" aria-hidden="false">Select All</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_422" class="cke_button cke_button__scayt cke_button_off" href="javascript:void('Spell Checker')" title="Spell Checker" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_422_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(874,event);" onfocus="return CKEDITOR.tools.callFunction(875,event);" onclick="CKEDITOR.tools.callFunction(876,this);return false;"><span class="cke_button_icon cke_button__scayt_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1872px;background-size:auto;">&nbsp;</span><span id="cke_422_label" class="cke_button_label cke_button__scayt_label" aria-hidden="false">Spell Check As You Type</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_423" class="cke_toolbar" aria-labelledby="cke_423_label" role="toolbar"><span id="cke_423_label" class="cke_voice_label">Forms</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_424" class="cke_button cke_button__form cke_button_off" href="javascript:void('Form')" title="Form" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_424_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(877,event);" onfocus="return CKEDITOR.tools.callFunction(878,event);" onclick="CKEDITOR.tools.callFunction(879,this);return false;"><span class="cke_button_icon cke_button__form_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -648px;background-size:auto;">&nbsp;</span><span id="cke_424_label" class="cke_button_label cke_button__form_label" aria-hidden="false">Form</span></a><a id="cke_425" class="cke_button cke_button__checkbox cke_button_off" href="javascript:void('Checkbox')" title="Checkbox" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_425_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(880,event);" onfocus="return CKEDITOR.tools.callFunction(881,event);" onclick="CKEDITOR.tools.callFunction(882,this);return false;"><span class="cke_button_icon cke_button__checkbox_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -624px;background-size:auto;">&nbsp;</span><span id="cke_425_label" class="cke_button_label cke_button__checkbox_label" aria-hidden="false">Checkbox</span></a><a id="cke_426" class="cke_button cke_button__radio cke_button_off" href="javascript:void('Radio Button')" title="Radio Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_426_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(883,event);" onfocus="return CKEDITOR.tools.callFunction(884,event);" onclick="CKEDITOR.tools.callFunction(885,this);return false;"><span class="cke_button_icon cke_button__radio_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -720px;background-size:auto;">&nbsp;</span><span id="cke_426_label" class="cke_button_label cke_button__radio_label" aria-hidden="false">Radio Button</span></a><a id="cke_427" class="cke_button cke_button__textfield cke_button_off" href="javascript:void('Text Field')" title="Text Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_427_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(886,event);" onfocus="return CKEDITOR.tools.callFunction(887,event);" onclick="CKEDITOR.tools.callFunction(888,this);return false;"><span class="cke_button_icon cke_button__textfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -864px;background-size:auto;">&nbsp;</span><span id="cke_427_label" class="cke_button_label cke_button__textfield_label" aria-hidden="false">Text Field</span></a><a id="cke_428" class="cke_button cke_button__textarea cke_button_off" href="javascript:void('Textarea')" title="Textarea" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_428_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(889,event);" onfocus="return CKEDITOR.tools.callFunction(890,event);" onclick="CKEDITOR.tools.callFunction(891,this);return false;"><span class="cke_button_icon cke_button__textarea_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -816px;background-size:auto;">&nbsp;</span><span id="cke_428_label" class="cke_button_label cke_button__textarea_label" aria-hidden="false">Textarea</span></a><a id="cke_429" class="cke_button cke_button__select cke_button_off" href="javascript:void('Selection Field')" title="Selection Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_429_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(892,event);" onfocus="return CKEDITOR.tools.callFunction(893,event);" onclick="CKEDITOR.tools.callFunction(894,this);return false;"><span class="cke_button_icon cke_button__select_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -768px;background-size:auto;">&nbsp;</span><span id="cke_429_label" class="cke_button_label cke_button__select_label" aria-hidden="false">Selection Field</span></a><a id="cke_430" class="cke_button cke_button__button cke_button_off" href="javascript:void('Button')" title="Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_430_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(895,event);" onfocus="return CKEDITOR.tools.callFunction(896,event);" onclick="CKEDITOR.tools.callFunction(897,this);return false;"><span class="cke_button_icon cke_button__button_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -600px;background-size:auto;">&nbsp;</span><span id="cke_430_label" class="cke_button_label cke_button__button_label" aria-hidden="false">Button</span></a><a id="cke_431" class="cke_button cke_button__imagebutton cke_button_off" href="javascript:void('Image Button')" title="Image Button" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_431_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(898,event);" onfocus="return CKEDITOR.tools.callFunction(899,event);" onclick="CKEDITOR.tools.callFunction(900,this);return false;"><span class="cke_button_icon cke_button__imagebutton_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -696px;background-size:auto;">&nbsp;</span><span id="cke_431_label" class="cke_button_label cke_button__imagebutton_label" aria-hidden="false">Image Button</span></a><a id="cke_432" class="cke_button cke_button__hiddenfield cke_button_off" href="javascript:void('Hidden Field')" title="Hidden Field" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_432_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(901,event);" onfocus="return CKEDITOR.tools.callFunction(902,event);" onclick="CKEDITOR.tools.callFunction(903,this);return false;"><span class="cke_button_icon cke_button__hiddenfield_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -672px;background-size:auto;">&nbsp;</span><span id="cke_432_label" class="cke_button_label cke_button__hiddenfield_label" aria-hidden="false">Hidden Field</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_433" class="cke_toolbar" aria-labelledby="cke_433_label" role="toolbar"><span id="cke_433_label" class="cke_voice_label">Basic Styles</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_434" class="cke_button cke_button__bold cke_button_off" href="javascript:void('Bold')" title="Bold" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_434_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(904,event);" onfocus="return CKEDITOR.tools.callFunction(905,event);" onclick="CKEDITOR.tools.callFunction(906,this);return false;"><span class="cke_button_icon cke_button__bold_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -24px;background-size:auto;">&nbsp;</span><span id="cke_434_label" class="cke_button_label cke_button__bold_label" aria-hidden="false">Bold</span></a><a id="cke_435" class="cke_button cke_button__italic cke_button_off" href="javascript:void('Italic')" title="Italic" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_435_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(907,event);" onfocus="return CKEDITOR.tools.callFunction(908,event);" onclick="CKEDITOR.tools.callFunction(909,this);return false;"><span class="cke_button_icon cke_button__italic_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -48px;background-size:auto;">&nbsp;</span><span id="cke_435_label" class="cke_button_label cke_button__italic_label" aria-hidden="false">Italic</span></a><a id="cke_436" class="cke_button cke_button__underline cke_button_off" href="javascript:void('Underline')" title="Underline" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_436_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(910,event);" onfocus="return CKEDITOR.tools.callFunction(911,event);" onclick="CKEDITOR.tools.callFunction(912,this);return false;"><span class="cke_button_icon cke_button__underline_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -144px;background-size:auto;">&nbsp;</span><span id="cke_436_label" class="cke_button_label cke_button__underline_label" aria-hidden="false">Underline</span></a><a id="cke_437" class="cke_button cke_button__strike cke_button_off" href="javascript:void('Strikethrough')" title="Strikethrough" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_437_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(913,event);" onfocus="return CKEDITOR.tools.callFunction(914,event);" onclick="CKEDITOR.tools.callFunction(915,this);return false;"><span class="cke_button_icon cke_button__strike_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -72px;background-size:auto;">&nbsp;</span><span id="cke_437_label" class="cke_button_label cke_button__strike_label" aria-hidden="false">Strikethrough</span></a><a id="cke_438" class="cke_button cke_button__subscript cke_button_off" href="javascript:void('Subscript')" title="Subscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_438_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(916,event);" onfocus="return CKEDITOR.tools.callFunction(917,event);" onclick="CKEDITOR.tools.callFunction(918,this);return false;"><span class="cke_button_icon cke_button__subscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -96px;background-size:auto;">&nbsp;</span><span id="cke_438_label" class="cke_button_label cke_button__subscript_label" aria-hidden="false">Subscript</span></a><a id="cke_439" class="cke_button cke_button__superscript cke_button_off" href="javascript:void('Superscript')" title="Superscript" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_439_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(919,event);" onfocus="return CKEDITOR.tools.callFunction(920,event);" onclick="CKEDITOR.tools.callFunction(921,this);return false;"><span class="cke_button_icon cke_button__superscript_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -120px;background-size:auto;">&nbsp;</span><span id="cke_439_label" class="cke_button_label cke_button__superscript_label" aria-hidden="false">Superscript</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_440" class="cke_button cke_button__removeformat cke_button_off" href="javascript:void('Remove Format')" title="Remove Format" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_440_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(922,event);" onfocus="return CKEDITOR.tools.callFunction(923,event);" onclick="CKEDITOR.tools.callFunction(924,this);return false;"><span class="cke_button_icon cke_button__removeformat_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1680px;background-size:auto;">&nbsp;</span><span id="cke_440_label" class="cke_button_label cke_button__removeformat_label" aria-hidden="false">Remove Format</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_441" class="cke_toolbar" aria-labelledby="cke_441_label" role="toolbar"><span id="cke_441_label" class="cke_voice_label">Paragraph</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_442" class="cke_button cke_button__numberedlist cke_button_off" href="javascript:void('Insert/Remove Numbered List')" title="Insert/Remove Numbered List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_442_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(925,event);" onfocus="return CKEDITOR.tools.callFunction(926,event);" onclick="CKEDITOR.tools.callFunction(927,this);return false;"><span class="cke_button_icon cke_button__numberedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1368px;background-size:auto;">&nbsp;</span><span id="cke_442_label" class="cke_button_label cke_button__numberedlist_label" aria-hidden="false">Insert/Remove Numbered List</span></a><a id="cke_443" class="cke_button cke_button__bulletedlist cke_button_off" href="javascript:void('Insert/Remove Bulleted List')" title="Insert/Remove Bulleted List" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_443_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(928,event);" onfocus="return CKEDITOR.tools.callFunction(929,event);" onclick="CKEDITOR.tools.callFunction(930,this);return false;"><span class="cke_button_icon cke_button__bulletedlist_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1320px;background-size:auto;">&nbsp;</span><span id="cke_443_label" class="cke_button_label cke_button__bulletedlist_label" aria-hidden="false">Insert/Remove Bulleted List</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_444" class="cke_button cke_button__outdent cke_button_disabled " href="javascript:void('Decrease Indent')" title="Decrease Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_444_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(931,event);" onfocus="return CKEDITOR.tools.callFunction(932,event);" onclick="CKEDITOR.tools.callFunction(933,this);return false;"><span class="cke_button_icon cke_button__outdent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1032px;background-size:auto;">&nbsp;</span><span id="cke_444_label" class="cke_button_label cke_button__outdent_label" aria-hidden="false">Decrease Indent</span></a><a id="cke_445" class="cke_button cke_button__indent cke_button_off" href="javascript:void('Increase Indent')" title="Increase Indent" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_445_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(934,event);" onfocus="return CKEDITOR.tools.callFunction(935,event);" onclick="CKEDITOR.tools.callFunction(936,this);return false;"><span class="cke_button_icon cke_button__indent_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -984px;background-size:auto;">&nbsp;</span><span id="cke_445_label" class="cke_button_label cke_button__indent_label" aria-hidden="false">Increase Indent</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_446" class="cke_button cke_button__blockquote cke_button_off" href="javascript:void('Block Quote')" title="Block Quote" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_446_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(937,event);" onfocus="return CKEDITOR.tools.callFunction(938,event);" onclick="CKEDITOR.tools.callFunction(939,this);return false;"><span class="cke_button_icon cke_button__blockquote_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -216px;background-size:auto;">&nbsp;</span><span id="cke_446_label" class="cke_button_label cke_button__blockquote_label" aria-hidden="false">Block Quote</span></a><a id="cke_447" class="cke_button cke_button__creatediv cke_button_off" href="javascript:void('Create Div Container')" title="Create Div Container" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_447_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(940,event);" onfocus="return CKEDITOR.tools.callFunction(941,event);" onclick="CKEDITOR.tools.callFunction(942,this);return false;"><span class="cke_button_icon cke_button__creatediv_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -480px;background-size:auto;">&nbsp;</span><span id="cke_447_label" class="cke_button_label cke_button__creatediv_label" aria-hidden="false">Create Div Container</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_448" class="cke_button cke_button__justifyleft cke_button_off" href="javascript:void('Align Left')" title="Align Left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_448_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(943,event);" onfocus="return CKEDITOR.tools.callFunction(944,event);" onclick="CKEDITOR.tools.callFunction(945,this);return false;"><span class="cke_button_icon cke_button__justifyleft_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1128px;background-size:auto;">&nbsp;</span><span id="cke_448_label" class="cke_button_label cke_button__justifyleft_label" aria-hidden="false">Align Left</span></a><a id="cke_449" class="cke_button cke_button__justifycenter cke_button_off" href="javascript:void('Center')" title="Center" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_449_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(946,event);" onfocus="return CKEDITOR.tools.callFunction(947,event);" onclick="CKEDITOR.tools.callFunction(948,this);return false;"><span class="cke_button_icon cke_button__justifycenter_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1104px;background-size:auto;">&nbsp;</span><span id="cke_449_label" class="cke_button_label cke_button__justifycenter_label" aria-hidden="false">Center</span></a><a id="cke_450" class="cke_button cke_button__justifyright cke_button_off" href="javascript:void('Align Right')" title="Align Right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_450_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(949,event);" onfocus="return CKEDITOR.tools.callFunction(950,event);" onclick="CKEDITOR.tools.callFunction(951,this);return false;"><span class="cke_button_icon cke_button__justifyright_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1152px;background-size:auto;">&nbsp;</span><span id="cke_450_label" class="cke_button_label cke_button__justifyright_label" aria-hidden="false">Align Right</span></a><a id="cke_451" class="cke_button cke_button__justifyblock cke_button_off" href="javascript:void('Justify')" title="Justify" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_451_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(952,event);" onfocus="return CKEDITOR.tools.callFunction(953,event);" onclick="CKEDITOR.tools.callFunction(954,this);return false;"><span class="cke_button_icon cke_button__justifyblock_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1080px;background-size:auto;">&nbsp;</span><span id="cke_451_label" class="cke_button_label cke_button__justifyblock_label" aria-hidden="false">Justify</span></a><span class="cke_toolbar_separator" role="separator"></span><a id="cke_452" class="cke_button cke_button__bidiltr cke_button_off" href="javascript:void('Text direction from left to right')" title="Text direction from left to right" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_452_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(955,event);" onfocus="return CKEDITOR.tools.callFunction(956,event);" onclick="CKEDITOR.tools.callFunction(957,this);return false;"><span class="cke_button_icon cke_button__bidiltr_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -168px;background-size:auto;">&nbsp;</span><span id="cke_452_label" class="cke_button_label cke_button__bidiltr_label" aria-hidden="false">Text direction from left to right</span></a><a id="cke_453" class="cke_button cke_button__bidirtl cke_button_off" href="javascript:void('Text direction from right to left')" title="Text direction from right to left" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_453_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(958,event);" onfocus="return CKEDITOR.tools.callFunction(959,event);" onclick="CKEDITOR.tools.callFunction(960,this);return false;"><span class="cke_button_icon cke_button__bidirtl_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -192px;background-size:auto;">&nbsp;</span><span id="cke_453_label" class="cke_button_label cke_button__bidirtl_label" aria-hidden="false">Text direction from right to left</span></a><a id="cke_454" class="cke_button cke_button__language cke_button_off" href="javascript:void('Set language')" title="Set language" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_454_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(961,event);" onfocus="return CKEDITOR.tools.callFunction(962,event);" onclick="CKEDITOR.tools.callFunction(963,this);return false;"><span class="cke_button_icon cke_button__language_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1176px;background-size:auto;">&nbsp;</span><span id="cke_454_label" class="cke_button_label cke_button__language_label" aria-hidden="false">Set language</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_455" class="cke_toolbar" aria-labelledby="cke_455_label" role="toolbar"><span id="cke_455_label" class="cke_voice_label">Links</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_456" class="cke_button cke_button__link cke_button_off" href="javascript:void('Link')" title="Link" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_456_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(964,event);" onfocus="return CKEDITOR.tools.callFunction(965,event);" onclick="CKEDITOR.tools.callFunction(966,this);return false;"><span class="cke_button_icon cke_button__link_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1248px;background-size:auto;">&nbsp;</span><span id="cke_456_label" class="cke_button_label cke_button__link_label" aria-hidden="false">Link</span></a><a id="cke_457" class="cke_button cke_button__unlink cke_button_disabled " href="javascript:void('Unlink')" title="Unlink" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_457_label" aria-haspopup="false" aria-disabled="true" onkeydown="return CKEDITOR.tools.callFunction(967,event);" onfocus="return CKEDITOR.tools.callFunction(968,event);" onclick="CKEDITOR.tools.callFunction(969,this);return false;"><span class="cke_button_icon cke_button__unlink_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1272px;background-size:auto;">&nbsp;</span><span id="cke_457_label" class="cke_button_label cke_button__unlink_label" aria-hidden="false">Unlink</span></a><a id="cke_458" class="cke_button cke_button__anchor cke_button_off" href="javascript:void('Anchor')" title="Anchor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_458_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(970,event);" onfocus="return CKEDITOR.tools.callFunction(971,event);" onclick="CKEDITOR.tools.callFunction(972,this);return false;"><span class="cke_button_icon cke_button__anchor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1224px;background-size:auto;">&nbsp;</span><span id="cke_458_label" class="cke_button_label cke_button__anchor_label" aria-hidden="false">Anchor</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_459" class="cke_toolbar" aria-labelledby="cke_459_label" role="toolbar"><span id="cke_459_label" class="cke_voice_label">Insert</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_460" class="cke_button cke_button__image cke_button_off" href="javascript:void('Image')" title="Image" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_460_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(973,event);" onfocus="return CKEDITOR.tools.callFunction(974,event);" onclick="CKEDITOR.tools.callFunction(975,this);return false;"><span class="cke_button_icon cke_button__image_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -936px;background-size:auto;">&nbsp;</span><span id="cke_460_label" class="cke_button_label cke_button__image_label" aria-hidden="false">Image</span></a><a id="cke_461" class="cke_button cke_button__flash cke_button_off" href="javascript:void('Flash')" title="Flash" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_461_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(976,event);" onfocus="return CKEDITOR.tools.callFunction(977,event);" onclick="CKEDITOR.tools.callFunction(978,this);return false;"><span class="cke_button_icon cke_button__flash_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -576px;background-size:auto;">&nbsp;</span><span id="cke_461_label" class="cke_button_label cke_button__flash_label" aria-hidden="false">Flash</span></a><a id="cke_462" class="cke_button cke_button__table cke_button_off" href="javascript:void('Table')" title="Table" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_462_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(979,event);" onfocus="return CKEDITOR.tools.callFunction(980,event);" onclick="CKEDITOR.tools.callFunction(981,this);return false;"><span class="cke_button_icon cke_button__table_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1896px;background-size:auto;">&nbsp;</span><span id="cke_462_label" class="cke_button_label cke_button__table_label" aria-hidden="false">Table</span></a><a id="cke_463" class="cke_button cke_button__horizontalrule cke_button_off" href="javascript:void('Insert Horizontal Line')" title="Insert Horizontal Line" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_463_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(982,event);" onfocus="return CKEDITOR.tools.callFunction(983,event);" onclick="CKEDITOR.tools.callFunction(984,this);return false;"><span class="cke_button_icon cke_button__horizontalrule_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -888px;background-size:auto;">&nbsp;</span><span id="cke_463_label" class="cke_button_label cke_button__horizontalrule_label" aria-hidden="false">Insert Horizontal Line</span></a><a id="cke_464" class="cke_button cke_button__smiley cke_button_off" href="javascript:void('Smiley')" title="Smiley" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_464_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(985,event);" onfocus="return CKEDITOR.tools.callFunction(986,event);" onclick="CKEDITOR.tools.callFunction(987,this);return false;"><span class="cke_button_icon cke_button__smiley_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1056px;background-size:auto;">&nbsp;</span><span id="cke_464_label" class="cke_button_label cke_button__smiley_label" aria-hidden="false">Smiley</span></a><a id="cke_465" class="cke_button cke_button__specialchar cke_button_off" href="javascript:void('Insert Special Character')" title="Insert Special Character" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_465_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(988,event);" onfocus="return CKEDITOR.tools.callFunction(989,event);" onclick="CKEDITOR.tools.callFunction(990,this);return false;"><span class="cke_button_icon cke_button__specialchar_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1848px;background-size:auto;">&nbsp;</span><span id="cke_465_label" class="cke_button_label cke_button__specialchar_label" aria-hidden="false">Insert Special Character</span></a><a id="cke_466" class="cke_button cke_button__pagebreak cke_button_off" href="javascript:void('Insert Page Break for Printing')" title="Insert Page Break for Printing" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_466_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(991,event);" onfocus="return CKEDITOR.tools.callFunction(992,event);" onclick="CKEDITOR.tools.callFunction(993,this);return false;"><span class="cke_button_icon cke_button__pagebreak_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1488px;background-size:auto;">&nbsp;</span><span id="cke_466_label" class="cke_button_label cke_button__pagebreak_label" aria-hidden="false">Insert Page Break for Printing</span></a><a id="cke_467" class="cke_button cke_button__iframe cke_button_off" href="javascript:void('IFrame')" title="IFrame" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_467_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(994,event);" onfocus="return CKEDITOR.tools.callFunction(995,event);" onclick="CKEDITOR.tools.callFunction(996,this);return false;"><span class="cke_button_icon cke_button__iframe_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -912px;background-size:auto;">&nbsp;</span><span id="cke_467_label" class="cke_button_label cke_button__iframe_label" aria-hidden="false">IFrame</span></a><a id="cke_468" class="cke_button cke_button__hkemoji cke_button_off" href="javascript:void('Insert emoji')" title="Insert emoji" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_468_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(997,event);" onfocus="return CKEDITOR.tools.callFunction(998,event);" onclick="CKEDITOR.tools.callFunction(999,this);return false;"><span class="cke_button_icon cke_button__hkemoji_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/hkemoji/icons/hkemoji.png?t=G4CD');background-position:0 0px;background-size:16px;">&nbsp;</span><span id="cke_468_label" class="cke_button_label cke_button__hkemoji_label" aria-hidden="false">Insert emoji</span></a></span><span class="cke_toolbar_end"></span></span><span class="cke_toolbar_break"></span><span id="cke_469" class="cke_toolbar" aria-labelledby="cke_469_label" role="toolbar"><span id="cke_469_label" class="cke_voice_label">Styles</span><span class="cke_toolbar_start"></span><span id="cke_399" class="cke_combo cke_combo__styles cke_combo_off" role="presentation"><span id="cke_399_label" class="cke_combo_label">Styles</span><a class="cke_combo_button" title="Formatting Styles" tabindex="-1" href="javascript:void('Formatting Styles')" hidefocus="true" role="button" aria-labelledby="cke_399_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(1001,event,this);" onfocus="return CKEDITOR.tools.callFunction(1002,event);" onclick="CKEDITOR.tools.callFunction(1000,this);return false;"><span id="cke_399_text" class="cke_combo_text cke_combo_inlinelabel">Styles</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_400" class="cke_combo cke_combo__format cke_combo_off" role="presentation"><span id="cke_400_label" class="cke_combo_label">Format</span><a class="cke_combo_button" title="Paragraph Format" tabindex="-1" href="javascript:void('Paragraph Format')" hidefocus="true" role="button" aria-labelledby="cke_400_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(1004,event,this);" onfocus="return CKEDITOR.tools.callFunction(1005,event);" onclick="CKEDITOR.tools.callFunction(1003,this);return false;"><span id="cke_400_text" class="cke_combo_text cke_combo_inlinelabel">Format</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_401" class="cke_combo cke_combo__font cke_combo_off" role="presentation"><span id="cke_401_label" class="cke_combo_label">Font</span><a class="cke_combo_button" title="Font Name" tabindex="-1" href="javascript:void('Font Name')" hidefocus="true" role="button" aria-labelledby="cke_401_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(1007,event,this);" onfocus="return CKEDITOR.tools.callFunction(1008,event);" onclick="CKEDITOR.tools.callFunction(1006,this);return false;"><span id="cke_401_text" class="cke_combo_text cke_combo_inlinelabel">Font</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span id="cke_402" class="cke_combo cke_combo__fontsize cke_combo_off" role="presentation"><span id="cke_402_label" class="cke_combo_label">Size</span><a class="cke_combo_button" title="Font Size" tabindex="-1" href="javascript:void('Font Size')" hidefocus="true" role="button" aria-labelledby="cke_402_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(1010,event,this);" onfocus="return CKEDITOR.tools.callFunction(1011,event);" onclick="CKEDITOR.tools.callFunction(1009,this);return false;"><span id="cke_402_text" class="cke_combo_text cke_combo_inlinelabel">Size</span><span class="cke_combo_open"><span class="cke_combo_arrow"></span></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_470" class="cke_toolbar" aria-labelledby="cke_470_label" role="toolbar"><span id="cke_470_label" class="cke_voice_label">Colors</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_471" class="cke_button cke_button__textcolor cke_button_off" href="javascript:void('Text Color')" title="Text Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_471_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(1012,event);" onfocus="return CKEDITOR.tools.callFunction(1013,event);" onclick="CKEDITOR.tools.callFunction(1014,this);return false;"><span class="cke_button_icon cke_button__textcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -408px;background-size:auto;">&nbsp;</span><span id="cke_471_label" class="cke_button_label cke_button__textcolor_label" aria-hidden="false">Text Color</span><span class="cke_button_arrow"></span></a><a id="cke_472" class="cke_button cke_button__bgcolor cke_button_off" href="javascript:void('Background Color')" title="Background Color" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_472_label" aria-haspopup="true" onkeydown="return CKEDITOR.tools.callFunction(1015,event);" onfocus="return CKEDITOR.tools.callFunction(1016,event);" onclick="CKEDITOR.tools.callFunction(1017,this);return false;"><span class="cke_button_icon cke_button__bgcolor_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -384px;background-size:auto;">&nbsp;</span><span id="cke_472_label" class="cke_button_label cke_button__bgcolor_label" aria-hidden="false">Background Color</span><span class="cke_button_arrow"></span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_473" class="cke_toolbar" aria-labelledby="cke_473_label" role="toolbar"><span id="cke_473_label" class="cke_voice_label">Tools</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_474" class="cke_button cke_button__maximize cke_button_off" href="javascript:void('Maximize')" title="Maximize" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_474_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(1018,event);" onfocus="return CKEDITOR.tools.callFunction(1019,event);" onclick="CKEDITOR.tools.callFunction(1020,this);return false;"><span class="cke_button_icon cke_button__maximize_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1392px;background-size:auto;">&nbsp;</span><span id="cke_474_label" class="cke_button_label cke_button__maximize_label" aria-hidden="false">Maximize</span></a><a id="cke_475" class="cke_button cke_button__showblocks cke_button_off" href="javascript:void('Show Blocks')" title="Show Blocks" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_475_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(1021,event);" onfocus="return CKEDITOR.tools.callFunction(1022,event);" onclick="CKEDITOR.tools.callFunction(1023,this);return false;"><span class="cke_button_icon cke_button__showblocks_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 -1776px;background-size:auto;">&nbsp;</span><span id="cke_475_label" class="cke_button_label cke_button__showblocks_label" aria-hidden="false">Show Blocks</span></a></span><span class="cke_toolbar_end"></span></span><span id="cke_476" class="cke_toolbar" aria-labelledby="cke_476_label" role="toolbar"><span id="cke_476_label" class="cke_voice_label">about</span><span class="cke_toolbar_start"></span><span class="cke_toolgroup" role="presentation"><a id="cke_477" class="cke_button cke_button__about cke_button_off" href="javascript:void('About CKEditor')" title="About CKEditor" tabindex="-1" hidefocus="true" role="button" aria-labelledby="cke_477_label" aria-haspopup="false" onkeydown="return CKEDITOR.tools.callFunction(1024,event);" onfocus="return CKEDITOR.tools.callFunction(1025,event);" onclick="CKEDITOR.tools.callFunction(1026,this);return false;"><span class="cke_button_icon cke_button__about_icon" style="background-image:url('https://d1iy5wifs53qnq.cloudfront.net/assests/ckeditor/plugins/icons.png?t=G4CD');background-position:0 0px;background-size:auto;">&nbsp;</span><span id="cke_477_label" class="cke_button_label cke_button__about_label" aria-hidden="false">About CKEditor</span></a></span><span class="cke_toolbar_end"></span></span></span></span><div id="cke_5_contents" class="cke_contents cke_reset" role="presentation" style="height: 200px;"><span id="cke_482" class="cke_voice_label">Press ALT 0 for help</span><iframe src="" frameborder="0" class="cke_wysiwyg_frame cke_reset" style="width: 100%; height: 100%;" title="Rich Text Editor, editornew" aria-describedby="cke_482" tabindex="0" allowtransparency="true"></iframe></div><span id="cke_5_bottom" class="cke_bottom cke_reset_all" role="presentation" style="user-select: none;"><span id="cke_5_resizer" class="cke_resizer cke_resizer_vertical cke_resizer_ltr" title="Resize" onmousedown="CKEDITOR.tools.callFunction(824, event)">◢</span><span id="cke_5_path_label" class="cke_voice_label">Elements path</span><span id="cke_5_path" class="cke_path" role="group" aria-labelledby="cke_5_path_label"><span class="cke_path_empty">&nbsp;</span></span></span></div></div>

                            </div>
                            <!-- <div class="form-group">
                                

                                <div class="box w-100">
                                    <input type="file" name="userfile" id="file-8" class="inputfile inputfile-6"
                                        data-multiple-caption="{count} files selected" />
                                    <label for="file-8"><span>Upload Picture</span> <strong><svg
                                                xmlns="http://www.w3.org/2000/svg" width="20" height="17"
                                                viewBox="0 0 20 17">
                                                <path
                                                    d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" />
                                                </svg> Choose a file&hellip;</strong></label>
                                </div>

                                

                                <p> *(Use .jpg or .png format Picture.)</p>


                            </div> -->
                            <div class="row mb-4 mt-4">
                                <div class="col-lg-6">
                                                            <a href="JavaScript:Void(0);" id="spam" class="spam-link">Spam Checker</a>

                                                            </div>
                                    <div class="col-lg-6 text-lg-right">
                                                            <a href="#" class="spam-link" data-toggle="modal" data-target="#spammodal">Spam Trigger Words</a>

                                                            </div>
                                </div>
                
                            <div class="text-center">
                                <input type="submit" value="Send" id="sbmitall" name="sbmitall" class="btn btn-info btn-block rounded-0 py-2">
                                <br>   

                
                            </div>
                            

                    </form></div>



                    











                </div>



                



            </div>







        </div>



    </div>





    <input type="hidden" name="userid" id="userid" value="7364">



    <input type="hidden" id="show" name="" value="">

    <input type="hidden" id="show1" name="" value="">

    <input type="hidden" id="show2" name="" value="">

    <input type="hidden" id="show3" name="" value="">







    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script type="text/javascript">
    function validateBadText(){
        var spam_count = 0;
        var searched_val = "";
        var find_str = "";
        var replace_str = "";
        var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

        var mail_template_content =  CKEDITOR.instances.editornew.getData();
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
        
    $(document).ready(function() {



        $('#table1').DataTable();

        aaSorting: [
            [0, 'desc']
        ]



    });
    </script>


    <script>

    $(document).ready(function(){
        $("#spam").click(function(){
        var spam_count = 0;
        var searched_val = "";
        var find_str = "";
        var replace_str = "";
        var key_words = ["$","cash","dollar","price","thing","winner","pay","credit","sale","buy","money","marketing","mass","spam","limited","millions","guarantee","offer","paid","refund","income","free","junk","card","dollars","urgent","debit","unlimited","earn","deal","instant","consultation","opportunity","investment","leads","refinance","quotes","risk","satisfaction","save$","!!!","!!","babes","wining","winner","security","special","stock","alert","disclaimer","statement","shopping","100%","automation","handsfree","cost","4u","amazing","additional","hesitate","amazed","bucks","bankruptcy","percent","earnings","profits","guranteed","investment","wrinkles","biz","percent","lifetime","extra","obligation","gimmick","disappointment","claim","multi","billion","creditors","congratulations","offers","bureaus","direct","drastically","easy","fantastic","deal","leads","freedom","membership","snoring","promotion","security","believe","action","compliance","automated"];  

        var mail_template_content =  CKEDITOR.instances.editornew.getData();
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




    <script>
    CKEDITOR.replace('editornew');
    </script>

    <script>
    function Export()

    {





        window.open("#", '_blank');



    }
    </script>

  


 



    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">







    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



    <script>
    $(function() {



        $("#date_picker").datepicker();



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
    $(document).ready(function() {

        $("#pagination  a").each(function() {
            var g = window.location.href.slice(window.location.href.indexOf('?'));
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
            <div class="modal-header"><span class="check">Spam Checker</span>
            <button type="button" class="close" data-dismiss="modal">×</button>
            </div>
            
            <div align="center" class="modal_heading">Note: To ensure a healthy email delivery consider replacing the spam triggered words highlighted in red below .</div>
    <hr class="new1">
            <div class="modal-body" id="spam_cont_id"></div>
            <!-- <div align="center"><b>Please replace the above highlighted spam words.</b></div> -->
            <div class="modal-footer justify-content-center" align="center">
                
            <button type="button" class="btn btn-default" data-dismiss="modal">Exit</button>
            </div>
        </div>
        </div>
    </div>    

    <div class="modal fade" id="email_temp_spam_id1" role="dialog">
        <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content text-center">
            <div class="modal-header"><span class="check">Spam Checker</span>
            <button type="button" class="close" data-dismiss="modal">×</button>
            </div>
            
            <div align="center" class="modal_heading">Note:To ensure a healthy email delivery consider replacing the spam triggered words highlighted in red below.</div>
    <hr class="new1">
            <div class="modal-body" id="spam_cont_id1"></div>
            <!-- <div align="center"><b>Please replace the above highlighted spam words.</b></div> -->
            <div class="modal-footer justify-content-center" align="center">
                
            <button type="button" class="btn btn-default" data-dismiss="modal">Exit</button>
            </div>
        </div>
        </div>
    </div>    
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