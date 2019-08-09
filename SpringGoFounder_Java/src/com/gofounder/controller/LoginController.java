package com.gofounder.controller;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gofounder.model.Announcement;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.User;
import com.gofounder.service.InviteeService;
import com.gofounder.service.UserService;
import com.gofounder.statusreports.EmailStatus;

@Controller
public class LoginController {
	@Autowired
	UserService userService;
	
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

			String username = firstname + " " + lastname;
			request.getSession().setAttribute("username", username);

			String profileimg = user.getProfileimg();
			int userid = 45799;
			System.out.println("profileimg####" + profileimg);
			System.out.println("userid####" + userid);
			request.getSession().setAttribute("profileimg", profileimg);
			request.getSession().setAttribute("userid", userid);
			//System.out.println("userid = "+request.getSession().getAttribute("userid"));
			mav = new ModelAndView("dashboard");
			mav.addObject("firstname", user.getFirstname());
			mav.addObject("inviteeCount", inviteeService.inviteeCount(userid));
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}

	// registration
	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {
		System.out.println("***********************8888888");
		int result = userService.register(user);
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
							+ "<p>Please <a href=\"http://localhost:8082/SpringMVCExample/verifyemail?email="+email+"\"><b>Click Here</b></a> to activate your account. </p>"
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
		int result = userService.verifyEmail(email);
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
