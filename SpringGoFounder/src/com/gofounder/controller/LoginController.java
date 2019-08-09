package com.gofounder.controller;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import com.gofounder.model.Announcement;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.User;
import com.gofounder.service.UserService;
import com.gofounder.statusreports.EmailStatus;
import com.gofounder.statusreports.PasswordGenerator;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

@Controller
public class LoginController {
	@Autowired
	UserService userService;

	@Autowired
	JavaMailSender mailSender;
	
	private static String text;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		// System.out.println("login.................");
		mav.addObject("login", new Login());
		return mav;
	}
	// dashboard
	
	
	
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public ModelAndView support(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("support");
		
		String email = (String) request.getSession().getAttribute("email");
		String passwd = (String) request.getSession().getAttribute("password");
		User user = userService.getLoginUser(email, passwd);
		
		mv.addObject("user", user);
		return mv;
	}
	
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

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView showDashboard(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("dashboard");
		// System.out.println("login.................");
		// mav.addObject("login", new Login());
		return mav;
	}

	// password_change

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public ModelAndView showpassword_change(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("forgotpassword");
		// System.out.println("login.................");
		// mav.addObject("login", new Login());
		return mav;
	}

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

	// profilepic

	@RequestMapping(value = "/profilepic", method = RequestMethod.GET)
	public ModelAndView showprofilepic(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("profilepic");
		
		return mav;
	}

	// user_profile

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

		System.out.println("Inside loginProcess method");
		ModelAndView mav = null;
		User user = userService.validateUser(login);

		if (null != user) {

			String firstname = user.getFirstname();
			System.out.println("firstname####" + firstname);

			String lastname = user.getLastname();
			System.out.println("lastname" + lastname);

			String username = firstname + " " + lastname;
			request.getSession().setAttribute("username", username);

			String email = user.getEmail();
			request.getSession().setAttribute("email", email);

			String password = user.getPassword();
			request.getSession().setAttribute("password", password);

			mav = new ModelAndView("dashboard");
			mav.addObject("firstname", user.getFirstname());
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

}
