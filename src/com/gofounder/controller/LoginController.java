package com.gofounder.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Properties;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import com.gofounder.model.Announcement;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.User;
import com.gofounder.service.InviteeService;
import com.gofounder.service.UserService;
import com.gofounder.statusreports.EmailStatus;
import com.gofounder.statusreports.PasswordGenerator;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.activation.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	JavaMailSender mailSender;
	@Autowired
	UserService userService;
	private static String text;
	
	@Autowired
	InviteeService inviteeService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		// System.out.println("login.................");
		mav.addObject("login", new Login());
		return mav;
	}
	
	
	// dashboard

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView showDashboard(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("dashboard");
		// System.out.println("login.................");
		// mav.addObject("login", new Login());
		return mav;
	}
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public ModelAndView support(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("support");
		
		String email = (String) request.getSession().getAttribute("email");
		String passwd = (String) request.getSession().getAttribute("password");
		User user = userService.getLoginUser(email, passwd);
		
		mv.addObject("user", user);
		return mv;
	}
	
	//ajax call in profilepic page
	
	@RequestMapping(value = "/postDfltProfilePic", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody ModelAndView postEmployeeData(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("name") String name, @RequestParam("lastname") String lastname,
			@ModelAttribute("user") User user) {
		
		System.out.println("postDfltProfilePic.....");
		System.out.println("name....."+name);
		int userid = user.getUserid();
		user.setUserid(83759);
		//double newSalary = employee.getSalary() + 1000;
		//employee.setSalary(newSalary);
		user.setFileName(name);
		int imgcount = userService.userImgeSaveInDb(user);
		
		//String profileimg  ="Aliona.jpg";
		String profileimg  =name;
		
		System.out.println("userid####" + userid);
		request.getSession().setAttribute("profileimg", profileimg);
		
		ModelAndView mav = new ModelAndView("test");
		System.out.println("rreturning .....");
		return mav;
	}
	
	//end
	
	// profilepic

	@RequestMapping(value = "/profilepic", method = RequestMethod.GET)
	public ModelAndView showprofilepic(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("user") User user) {
		
		ModelAndView mav = null;
		user.setUserid(83759); //hard code value for userid for testing purpose
		List<String> list = userService.getLibrayPicList(user);
        System.out.println("#############list####################"+list.size());
		mav = new ModelAndView("profilepic");
		//mav.addObject("lists", list);
		request.getSession().setAttribute("lists", list);
		
		// System.out.println("login.................");
		// mav.addObject("login", new Login());
		return mav;
	}
	
	// profilepic
@RequestMapping(value="saveSupport", method=RequestMethod.POST)
	public ModelAndView saveSupport(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user")User user, @RequestParam("file") MultipartFile file) {
		ModelAndView mv = new ModelAndView("support");
		
		String email = (String) request.getSession().getAttribute("email");
		String fileName = "";
		String status = "";
		
		if (!file.isEmpty()) {
			try {
				fileName=file.getOriginalFilename();
				String extension = fileName.substring(fileName.lastIndexOf("0")+1);
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = request.getContextPath();
				File dir = new File(rootPath + File.separator + "SuportDocuments");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator+user.getFirstname()+"."+extension);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
				String mailStatus = sendMail(request, email, serverFile,user);				
				
				if (mailStatus.equals(EmailStatus.mailSentStatus_Active)) {
					status = EmailStatus.mailSentStatusForMessage;
				} else {
					status = EmailStatus.mailNotSentStatusForMessage;
				}

				
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			status = EmailStatus.fileNotFound;
		}
		mv.addObject("status",status);
		mv.addObject("user", user);
		
		return mv;
	}
		@RequestMapping(value = "/library", method = RequestMethod.GET)
		public ModelAndView showlibrary(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("user") User user) {
			
			ModelAndView mav = null;
			user.setUserid(83759); //hard code value for userid for testing purpose
			List<String> list = userService.getLibrayPicList(user);
            System.out.println("#############list####################"+list.size());
			mav = new ModelAndView("library");
			mav.addObject("lists", list);

			 
			// System.out.println("login.................");
			// mav.addObject("login", new Login());
			return mav;
		}
	//test
		
	@RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	public @ResponseBody String showajaxtest(HttpServletRequest request, HttpServletResponse response
			 ) {
        
		ModelAndView mav = new ModelAndView("ajaxtest");
		System.out.println("ajaxtest.................");
		//System.out.println("file................."+file);
		// mav.addObject("login", new Login());
		//return mav;
		 String response1 = "";
		 return response1;
	}
	
	

	// resendlogin
	@RequestMapping(value = "/resendlogin", method = RequestMethod.GET)
	public ModelAndView showResendlogin(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("resendlogin");
		// System.out.println("login.................");
		 mav.addObject("login", new Login());
		return mav;
	}

	// password_change

	@RequestMapping(value = "/password_change", method = RequestMethod.GET)
	public ModelAndView showpassword_change(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("password_change");
		mav.addObject("user", new User());
		return mav;
	}

	/*// password_changeprocess
	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public ModelAndView showpassword_change(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("forgotpassword");
		// System.out.println("login.................");
		// mav.addObject("login", new Login());
		return mav;
	}*/

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.POST)
	public ModelAndView sendMailAndResetPassword(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = null;
		String email = ServletRequestUtils.getStringParameter(request, "email", "");
		String mailStatus = sendMail(request, email);
		String status = "";
		if (mailStatus.equals(EmailStatus.mailSentStatus_Active)) {
			status = EmailStatus.mailSentStatusForMessage;
		} else {
			status = EmailStatus.mailNotSentStatusForMessage;
		}

		mv = new ModelAndView("forgotpassword");
		mv.addObject("status", status);
		return mv;
	}

	@RequestMapping(value = "/password_changeprocess", method = RequestMethod.POST)
	public ModelAndView showpassword_changeprocess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {

		String newpassword = user.getNewpassword();
		String confpassword = user.getConfpassword();
		System.out.println("newpassword####" + newpassword);
		//String userid = (String) request.getSession().getAttribute("userid");
		//System.out.println("session value of userid####" + userid);
		// user.setUserid(userid);
		user.setUserid(83759);

		int i = userService.updatePassword(user);
		System.out.println("newpassword updated value####" + i);

		ModelAndView mav = new ModelAndView("user_profile");
		mav.addObject("user", new User());
		return mav;
	}
	@RequestMapping(value = "/user_profile", method = RequestMethod.GET)
	public ModelAndView showuser_profile(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Inside showuser_profile method");
		ModelAndView mav = new ModelAndView("user_profile");
		String email = (String) request.getSession().getAttribute("email");
		String passwd = (String) request.getSession().getAttribute("password");
		User user = userService.getLoginUser(email, passwd);
		mav.addObject("user", user);
		return mav;
	}

	// loginProcess

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {

		ModelAndView mav = null;
		User user = userService.validateUser(login);

		if (null != user) {

			String firstname = user.getFirstname();
			System.out.println("firstname####" + firstname);

			String lastname = user.getLastname();
			System.out.println("lastname" + lastname);
			
			//String email = user.getEmail();
			System.out.println("lastname" + lastname);
			String username = firstname + " " + lastname;
			//#######################SESSION VALUE FOR USER########################################
			request.getSession().setAttribute("firstname", firstname);
			request.getSession().setAttribute("lastname", lastname);
			System.out.println("email" + login.getEmail());
			request.getSession().setAttribute("email", login.getEmail());
			
			String password = user.getPassword();
			request.getSession().setAttribute("password", password);
			//###############################################################
			
			
			request.getSession().setAttribute("username", username);

			String profileimg = user.getProfileimg();
			int userid = user.getUserid();
			System.out.println("profileimg####" + profileimg);
			System.out.println("userid####" + userid);
			request.getSession().setAttribute("profileimg", profileimg);
			request.getSession().setAttribute("userid", userid);
			mav = new ModelAndView("dashboard");
			mav.addObject("firstname", user.getFirstname());
			mav.addObject("inviteeCount", inviteeService.inviteeCount(userid));
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}

@RequestMapping(value = "/saveProfile", method = RequestMethod.POST)
	public ModelAndView saveProfile(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {
		ModelAndView mv = null;
		System.out.println("Inside saveProfile method");
		String passwd = (String) request.getSession().getAttribute("password");

		user.setPassword(passwd);

		userService.updateUserProfile(user);
		mv = new ModelAndView("user_profile");

		mv.addObject("user", user);

		return mv;
	}
	/**
	 * Upload single file using Spring Controller
	 */
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public @ResponseBody ModelAndView uploadFileHandler(@RequestParam("file") MultipartFile file,
			@ModelAttribute("user") User user,HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = null;
		String name = "";
		System.out.println("###########uploadFile##################");

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String filename = file.getOriginalFilename();
				name = filename;
				System.out.println("##############filename############" + filename);

				user.setFileName(file.getOriginalFilename());
				// hardcode userid pic files :Aliona.jpg
				user.setUserid(83759);
				user.setImgdata(file.getBytes());

				int imgcount = userService.userImgeSaveInDb(user);

				// s3 store

				// s3 end

				// Creating the directory to store file
				// String rootPath = System.getProperty("catalina.home");
				// File dir = new File(rootPath + File.separator + "tmpFiles");

				// String rootPath = System.getProperty("catalina.home");
				File dir = new File("d://Stock/stockDir");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location=" + serverFile.getAbsolutePath());
				
				
				//show in profilepic user recently added picture
				user.setEmail("abc@gmail.com");
				
				User user1 = userService.showUserpicture(user);

				if (null != user1) {

					String firstname = user1.getFirstname();
					System.out.println("firstname####" + firstname);

					String lastname = user1.getLastname();
					System.out.println("lastname" + lastname);

					String username = firstname + " " + lastname;
					request.getSession().setAttribute("username", username);

					String profileimg = user1.getProfileimg();
					int userid = user1.getUserid();
					System.out.println("profileimg####" + profileimg);
					
					profileimg  ="Aliona.jpg";
					
					System.out.println("userid####" + userid);
					request.getSession().setAttribute("profileimg", profileimg);
					
					mav = new ModelAndView("profilepic");
					mav.addObject("firstname", user.getFirstname());
				}

				mav = new ModelAndView("profilepic");

				// return "You successfully uploaded file=" + name;

			} catch (Exception e) {
				// return "You failed to upload " + name + " => " +
				// e.getMessage();
			}

		} else {
			// return "You failed to upload " + name
			// + " because the file was empty.";

			mav = new ModelAndView("profilepic");
		}

		return mav;

	}
	
	//Libray upload file
	
	@RequestMapping(value = "/uploadFileLibray", method = RequestMethod.POST)
	public @ResponseBody ModelAndView uploadFileLibray(@RequestParam("file") MultipartFile file,
			@ModelAttribute("user") User user,HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = null;
		String name = "";
		System.out.println("###########uploadFileLibray##################");

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String filename = file.getOriginalFilename();
				name = filename;
				System.out.println("##############filename############" + filename);

				user.setFileName(file.getOriginalFilename());
				// hardcode userid pic files :Aliona.jpg
				user.setUserid(83759);
				user.setImgdata(file.getBytes());

				
				int imgcount = userService.userLibraryImgeUpload(user);
				
				System.out.println("#####imgcount#####"+imgcount);

				// s3 store

				// s3 end

				// Creating the directory to store file
				// String rootPath = System.getProperty("catalina.home");
				// File dir = new File(rootPath + File.separator + "tmpFiles");

				// String rootPath = System.getProperty("catalina.home");
				File dir = new File("d://Stock/stockDir");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location=" + serverFile.getAbsolutePath());
				
				
				//show in profilepic user recently added picture
				user.setEmail("abc@gmail.com");
				
				//User user1 = userService.showUserpicture(user);

//				if (null != user1) {
//
//					String firstname = user1.getFirstname();
//					System.out.println("firstname####" + firstname);
//
//					String lastname = user1.getLastname();
//					System.out.println("lastname" + lastname);
//
//					String username = firstname + " " + lastname;
//					request.getSession().setAttribute("username", username);
//
//					String profileimg = user1.getProfileimg();
//					int userid = user1.getUserid();
//					System.out.println("profileimg####" + profileimg);
//					
//					profileimg  ="Aliona.jpg";
//					
//					System.out.println("userid####" + userid);
//					request.getSession().setAttribute("profileimg", profileimg);
//					
//					mav = new ModelAndView("library");
//					mav.addObject("firstname", user.getFirstname());
//				}
				
				List<String> list = userService.getLibrayPicList(user);
                System.out.println("#############list####################"+list.size());
				mav = new ModelAndView("library");
				mav.addObject("lists", list);

				// return "You successfully uploaded file=" + name;

			} catch (Exception e) {
				// return "You failed to upload " + name + " => " +
				// e.getMessage();
			}

		} else {
			// return "You failed to upload " + name
			// + " because the file was empty.";

			mav = new ModelAndView("library");
		}

		return mav;

	}
	
	private List<String> getList() {

		System.out.println("######getList#######"); 
		List<String> list = new ArrayList<String>();
		list.add("212139157Desert.jpg");
		list.add("304239668Chrysanthemum.jpg");
		

		return list;

	}

	
	//end

	@RequestMapping(value = "/resendloginupdate", method = RequestMethod.POST)
	public ModelAndView sendmailFinal(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {

		System.out.println("######################resendloginupdate###################");

		// userService.register(user);

		// added by Debraj for send email for registration successful

		String host = "webmail.inventiotechnologies.com";
		final String username = "debraj@inventiotechnologies.com";// change
																	// accordingly
		final String password = "debraj@inventio324";// change accordingly

		// String
		// to="debrajd1983@gmail.com,debraj@inventiotechnologies.com";//change
		// accordingly
		// String useremailid = "debraj@inventiotechnologies.com";
		
		String useremailid = login.getResendemail();
		
		login.setResendemail("abc@gmail.com"); //for testing purpose email is hardcoded
		
		System.out.println("#####useremailid####"+useremailid);
		
		User user = userService.getUserDetails(login);
		String firstname="";
		String lastname="";
		String username1="";
		String emailaddress = "";
		String password_login = "";
		String country = "";
		String phone = "";
		
		if (null != user) {

			firstname = user.getFirstname();
			System.out.println("firstname####" + firstname);

			 lastname = user.getLastname();
			 System.out.println("lastname" + lastname);

			 username1 = firstname + " " + lastname;
			 emailaddress =user.getEmail();
			 password_login = user.getPassword();
			 country = user.getCountry();
			 phone = user.getPhone();
//			request.getSession().setAttribute("username", username);
//
//			String profileimg = user.getProfileimg();
//			int userid = user.getUserid();
//			System.out.println("profileimg####" + profileimg);
//			System.out.println("userid####" + userid);
//			request.getSession().setAttribute("profileimg", profileimg);
//			request.getSession().setAttribute("userid", userid);
//			mav = new ModelAndView("dashboard");
//			mav.addObject("firstname", user.getFirstname());
		} else {
//			mav = new ModelAndView("login");
//			mav.addObject("message", "Username or Password is wrong!!");
		}

		

		//String user = "";

		
		
		/*
		 * String useremailid = (String)
		 * request.getSession().getAttribute("useremailid");
		 * request.getSession().setAttribute("roomno",roomno); String
		 * useremailid = user.getUseremailid(); String roomno =
		 * user.getRoomno(); String roomno = (String)
		 * request.getSession().getAttribute("roomno"); String roomurlid =
		 * (String) request.getSession().getAttribute("roomurlid");
		 */

		InternetAddress[] parse = null;
		try {
			parse = InternetAddress.parse(useremailid);
		} catch (AddressException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		// Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			// message.addRecipient(Message.RecipientType.TO,new
			// InternetAddress(to));
			message.setRecipients(Message.RecipientType.BCC, parse);
			message.setSubject("Your Login Information by GoFounder");

			message.setContent(
					"<!DOCTYPE html><html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>"
							+ "<title></title></head><body>" + "" + "<p><b>Dear " + username1 + ",</b></p>"
							+ "<p>Thanks for giving you login information of yours, informations are given below.</p>"
							+ "<p><b>First Name:</b> " + firstname + "    <b>Last Name:</b> " + lastname + "</p>"
							+ "<p><b>Email:</b> " + emailaddress + "   <b>Password:</b> " + password_login + " </p>"
							+ "<p><b>Phone No.:</b> " + phone + "</p>" + "<p><b>Select Country:</b> " + country + "</p>"
							+ "<p>Our heartiest Welcome goes to you.</p>"
							+ "<p>Thanks for being a proud founder of our unique and ever-expanding concepts!</p>"
							+ "<p>We're honored to have you with us always!</p>" + "<p><b>GoFounders Team</b></p>"
							+ "<p><img alt=\"GOFOUNDERS\" src=\"https://ci6.googleusercontent.com/proxy/eqalC0FjWaU0XyZVDZPb_o174DdpTTPWcq2Qd-kZOcIticMec8n0joGWqlKK--430bxooXl8pKltQM1x7O8SSQ0ZOQ=s0-d-e1-ft#https://www.gofounders.net/assests/img/logo2.png\" style=\"height:36px;width:150px\" class=\"CToWUd\"></p>"
							+ "" + "</body>" + "</html>",
					"text/html");

			/* mail template close */
			Transport.send(message);

			System.out.println("message sent successfully...");

		} catch (MessagingException e) {
			e.printStackTrace();
		}

		//

		return new ModelAndView("resendlogin", "firstname", login.getResendemail());
	}
	
	private String sendMail(HttpServletRequest request, String email) {
		// takes input from e-mail form

		String emailFromSession = email;
		String subject = EmailStatus.resetPasswordSubjectLine;

		User user = userService.getLoginUser(emailFromSession);
		String userFirstName = user.getFirstname();

		PasswordGenerator passwordGenerator = new PasswordGenerator.PasswordGeneratorBuilder().useDigits(true)
				.useLower(true).useUpper(true).build();
		String password = passwordGenerator.generate(4);

		String to = email;
		String from = "debraj@inventiotechnologies.com";
		String host = "webmail.inventiotechnologies.com";

		Properties properties = System.getProperties();
		properties.setProperty("mail.smtp.host", host);
		properties.setProperty("mail.user", "debraj@inventiotechnologies.com");
		properties.setProperty("mail.password", "debraj@inventio324");
		properties.put("mail.smtp.localhost", host);
		Session session = Session.getDefaultInstance(properties);

		String mailStatus = "";

		try {
			MimeMessage mailMessage = new MimeMessage(session);
			mailMessage.setContent(
					"<!DOCTYPE html><html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>"
							+ "<title></title></head><body>" + "" + "<p><b>Dear "+userFirstName+",</b></p>" + "<p>Awesome!"
							+ " As Per your request " + "Here you go, your new password is below"
							+ "Your password has been changed, <b>now you can login with the following credentials:</b></p>"
							+ "<p><b><u>Email:</u></b> "+emailFromSession+""
							+ "<br /><b><u>New Password:</u></b>"+password+"</p>"
							+ "<p><b><u>Please click this link to login your account:</u></b>https://www.gofounders.net/</p>"
							+ "<p>You may change your password at anytime, go to \"My Profile\" "
							+ "then Change Password by typing the new desired one and click \"Update\"</p>"
							+ "<p><b>You are good to go!</b> </p>" + "<p><b>GoFounders Team</b></p>"
							+ "<p><img alt=\"GOFOUNDERS\" src=\"https://ci6.googleusercontent.com/proxy/eqalC0FjWaU0XyZVDZPb_o174DdpTTPWcq2Qd-kZOcIticMec8n0joGWqlKK--430bxooXl8pKltQM1x7O8SSQ0ZOQ=s0-d-e1-ft#https://www.gofounders.net/assests/img/logo2.png\" style=\"height:36px;width:150px\" class=\"CToWUd\"></p>"
							+ "</body>" + "</html>",
					"text/html");
			mailMessage.setFrom(new InternetAddress(from));
			mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mailMessage.setSubject(subject);

			// Send message
			userService.setUserDetailWithGeneratedPassword(emailFromSession, password);

			Transport.send(mailMessage);
			System.out.println("message sent successfully....");
			mailStatus = EmailStatus.mailSentStatus_Active;

		} catch (MessagingException mex) {
			mex.printStackTrace();
			mailStatus = EmailStatus.mailSentStatus_Inactive;
		}

		return mailStatus;
	}
	
	private String sendMail(HttpServletRequest request, String email, File file, User usr) {
		// takes input from e-mail form

		String emailFromSession = email;
		String subject = EmailStatus.resetPasswordSubjectLine;

		User user = userService.getLoginUser(emailFromSession);
		String userFirstName = user.getFirstname();
		
		String fullName = ServletRequestUtils.getStringParameter(request, "firstname","");
		String emailFromScreen = ServletRequestUtils.getStringParameter(request, "email","");
		String phone = ServletRequestUtils.getStringParameter(request, "phone","");
		String supportCat = ServletRequestUtils.getStringParameter(request, "cat","");
		String msg = ServletRequestUtils.getStringParameter(request, "msg","");

		String to = EmailStatus.goFoundersSupportEmailId;
		String from = email;
		String host = "webmail.inventiotechnologies.com";

		Properties properties = System.getProperties();
		properties.setProperty("mail.smtp.host", host);
		properties.setProperty("mail.user", EmailStatus.goFoundersSupportEmailId);
		//properties.setProperty("mail.password", "debraj@inventio324");
		properties.put("mail.smtp.localhost", host);
		Session session = Session.getDefaultInstance(properties);

		String mailStatus = "";

		try {
			MimeMessage mailMessage = new MimeMessage(session);
			/*mailMessage.setContent(
					"Name: "+fullName
							+ "Email: "+emailFromScreen
							+ "Phone: "+phone
							+ "Support Category: "+supportCat
							+ "Message: "+msg,
					"text/html");*/
			mailMessage.setFrom(new InternetAddress(from));
			mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mailMessage.setSubject(subject);
			/*mailMessage.setText("Name: "+fullName
					+ "Email: "+emailFromScreen
					+ "Phone: "+phone
					+ "Support Category: "+supportCat
					+ "Message: "+msg);*/
			
			BodyPart messageBodyPart = new MimeBodyPart();
			text = "Name: "+fullName
					+ "\nEmail: "+emailFromScreen
					+ "\nPhone: "+phone
					+ "\nSupport Category: "+supportCat
					+ "\nMessage: \n"+msg;
			messageBodyPart.setContent( text, "text/html; charset=utf-8" );
			/*messageBodyPart.setText("Name: "+fullName
					+ "\nEmail: "+emailFromScreen
					+ "\nPhone: "+phone
					+ "\nSupport Category: "+supportCat
					+ "\nMessage: \n"+msg);*/
			
			
			
			MimeBodyPart messageBodyPart2 = new MimeBodyPart();  
			  
		    DataSource source = new FileDataSource(file);  
		    messageBodyPart2.setDataHandler(new DataHandler(source));  
		    messageBodyPart2.setFileName(file.getName());  
		     
		     
		    //5) create Multipart object and add MimeBodyPart objects to this object      
		    Multipart multipart = new MimeMultipart();
		    multipart.addBodyPart(messageBodyPart);
		    multipart.addBodyPart(messageBodyPart2);  
		  
		    //6) set the multiplart object to the message object  
		    mailMessage.setContent(multipart );  
		    
			Transport.send(mailMessage);
			System.out.println("message sent successfully....");
			mailStatus = EmailStatus.mailSentStatus_Active;

		} catch (MessagingException mex) {
			mex.printStackTrace();
			mailStatus = EmailStatus.mailSentStatus_Inactive;
		}

		return mailStatus;
	}
	
	// registration
		@RequestMapping(value = "/userRegisterProcess", method = RequestMethod.POST)
		public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
				@ModelAttribute("user") User user) {
			System.out.println("***********************8888888");
			
			int result = userService.userRegistration(user);
			String mailStatus = sendMail(request, user.getEmail() , user.getPassword());
			if (result == 1) {
				return new ModelAndView("registration", "result", "Verification link sent to your mail. Please go to verify it.");
			} else {
				return new ModelAndView("registration", "result", "Internal Server Error Occurred.");
			}

		}
		
		private String sendMail(HttpServletRequest request, String email, String password) {
			// takes input from e-mail form

			//String emailFromSession = email;

			String subject = EmailStatus.mailVerification;

			/*
			 * User user = userService.getLoginUser(emailFromSession); String
			 * userFirstName = user.getFirstname();
			 */

			/*
			 * PasswordGenerator passwordGenerator = new
			 * PasswordGenerator.PasswordGeneratorBuilder().useDigits(true)
			 * .useLower(true).useUpper(true).build(); String password =
			 * passwordGenerator.generate(4);
			 */

			String to = email;
			String from = "debraj@inventiotechnologies.com";
			String host = "webmail.inventiotechnologies.com";

			Properties properties = System.getProperties();
			properties.setProperty("mail.smtp.host", host);
			properties.setProperty("mail.user", "debraj@inventiotechnologies.com");
			properties.setProperty("mail.password", "debraj@inventio324");
			properties.put("mail.smtp.localhost", host);
			Session session = Session.getDefaultInstance(properties);

			String mailStatus = "";

			try {
				MimeMessage mailMessage = new MimeMessage(session);
				mailMessage.setContent(
						"<!DOCTYPE html><html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>"
								+ "<title></title></head><body>" + "<p><b>Dear Founder,</b></p>" + "<p>Awesome, you are in"
								+ "Thanks for registering to become a founder!</p>"
								+ "<p>Click the link below to verify your Email address"
								+ "<p>Please <a href=\"http://localhost:8080/SpringMVCExample/verifyemail?email="+email+"\"><b>Click Here</b></a> to activate your account. </p>"
								+ "<p>See you inside.</p>" + "<p><b>Make it a great day!</b></p>"
								+ "<p><img alt=\"GOFOUNDERS\" src=\"https://ci6.googleusercontent.com/proxy/eqalC0FjWaU0XyZVDZPb_o174DdpTTPWcq2Qd-kZOcIticMec8n0joGWqlKK--430bxooXl8pKltQM1x7O8SSQ0ZOQ=s0-d-e1-ft#https://www.gofounders.net/assests/img/logo2.png\" style=\"height:36px;width:150px\" class=\"CToWUd\"></p>"
								+ "</body>" + "</html>",
						"text/html");
				mailMessage.setFrom(new InternetAddress(from));
				mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				mailMessage.setSubject(subject);

				// Send message
				//userService.setUserDetailWithGeneratedPassword(emailFromSession, password);

				Transport.send(mailMessage);
				System.out.println("message sent successfully....");
				mailStatus = EmailStatus.mailSentStatus_Active;

			} catch (MessagingException mex) {
				mex.printStackTrace();
				mailStatus = EmailStatus.mailSentStatus_Inactive;
			}

			return mailStatus;
		}
		
		// email verification
		@RequestMapping(value = "/verifyemail", method = RequestMethod.GET , params="email")
		public ModelAndView emailVerify(HttpServletRequest request, HttpServletResponse response,
				@RequestParam("email") String email) {
			/*int result = userService.verifyEmail(email);*/
			sendMail(request, email , "");
			ModelAndView mav = new ModelAndView("login");
			mav.addObject("login", new Login());
			return mav;
		}
		
		
		@RequestMapping(value = "/email_verification", method = RequestMethod.GET)
		public ModelAndView emailVerify(HttpServletRequest request, HttpServletResponse response) {
			System.out.println("verifyemail");
			ModelAndView mav = new ModelAndView("email_verification");
			return mav;
		}
	

}
