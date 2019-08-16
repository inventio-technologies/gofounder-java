<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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


<!-- <div class="modal fade" id="myModal1" role="dialog"> -->

	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body">
				<!-- <button type="button" class="close" data-dismiss="modal">X—</button> -->
				<div class="">
					<form method="post" action="#" enctype="multipart/form-data"
						onsubmit="return validateBadText1();"></form>
					<!--Body-->
					<div class="form-group focused">
						<div class="input-group mb-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<i class="fa fa-user text-info"></i>
								</div>
							</div>
							<input type="text" class="form-control" id="name"
								value="" name="name" readonly="">
						</div>
					</div>
					<div class="form-group focused">
						<div class="input-group mb-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<i class="fa fa-book text-info"></i>
								</div>
							</div>
							<input type="text" class="form-control" id="sub"
								placeholder="Subject"
								value="New Message For " name="sub"
								readonly="">
						</div>
					</div>
					<input type="hidden" class="form-control" id="email" name="email"
						value="">
					<div class="form-group">
						<div class="input-group mb-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<i class="fa fa-comment text-info"></i>
								</div>
							</div>
							<form action="sendMailWebinerInvitee" method="get">
							<textarea name="msg" id="msg" class="form-control" id="editor_1"
								placeholder="Enter your message"
								style="visibility: visible; display: block;"></textarea>


						</div>
					</div>
					<div class="row mb-4 mt-4">
						<div class="col-lg-6">
							<a href="JavaScript:Void(0);" id="smam1" class="spam-link">Spam
								Checker</a>
						</div>
						<div class="col-lg-6 text-lg-right">
							<a href="#" class="spam-link" data-toggle="modal"
								data-target="#spammodal">Spam Trigger Words</a>
						</div>
					</div>
					<div class="text-center">
					    
						    <input type="hidden" id="userMail" name="userMail" value="" />
							<input type="submit" value="Send" name="emailsbmit"
								class="btn btn-info btn-block rounded-0 py-2"> <br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- </div> -->
