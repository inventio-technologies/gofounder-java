package com.gofounder.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

import com.gofounder.model.Login;
import com.gofounder.model.User;
import com.gofounder.model.User_Link;
import com.gofounder.service.UserService;


@Controller
public class UserLinkController {

	private static final Logger logger = LoggerFactory.getLogger(UserLinkController.class);

	@Autowired
	UserService userService;

	// user_link
	@RequestMapping(value = "/user_link", method = RequestMethod.GET)
	public ModelAndView showUserlink(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("user_link");
		// System.out.println("login.................");
		mav.addObject("user_link", new User_Link());
		return mav;
	}
	
	// user_link
		@RequestMapping(value = "/share_history", method = RequestMethod.GET)
		public ModelAndView showSharehistory(HttpServletRequest request, HttpServletResponse response,
				@ModelAttribute("user") User user) {

			ModelAndView mav = new ModelAndView("share_history");
			
			user.setUserid(83759); //hard coded value for testing purpose
			
			List<User_Link> list=userService.showShareHistory(user);
			if (null != list) {
			
					mav.addObject("user_link", list);
			}
						

			return mav;
		}
		
		

	// send email share link

	@RequestMapping(value = "/sharelink", method = RequestMethod.POST)
	public ModelAndView sendmailFinal(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user_link") User_Link user_link, @ModelAttribute("login") Login login,
			@ModelAttribute("user") User user1) {

		System.out.println("######################sharelink###################");
		System.out.println(
				"######################sharelink getUsershareemail###################" + user_link.getUsershareemail());
		System.out.println(
				"######################sharelink getInvitelink###################" + user_link.getInvitelink());
        user1.setUserid(83759);//hard coded value for testing.
		int count=userService.saveShareHistory(user1,user_link);
		System.out.println("######################sharelink count###################"+count);
		// added by Debraj for send email for registration successful

		String host = "webmail.inventiotechnologies.com";
		final String username = "debraj@inventiotechnologies.com";// change
																	// accordingly
		final String password = "debraj@inventio324";// change accordingly

		// String
		// to="debrajd1983@gmail.com,debraj@inventiotechnologies.com";//change
		// accordingly
		// String useremailid = "debraj@inventiotechnologies.com";

		String useremailid = user_link.getUsershareemail();

		login.setResendemail("abc@gmail.com"); // for testing purpose email is
												// hardcoded

		System.out.println("#####useremailid####" + useremailid);

		User user = userService.getUserDetails(login);
		String firstname = "";
		String lastname = "";
		String username1 = "";
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
			emailaddress = user.getEmail();
			password_login = user.getPassword();
			country = user.getCountry();
			phone = user.getPhone();
			// request.getSession().setAttribute("username", username);
			//
			// String profileimg = user.getProfileimg();
			// int userid = user.getUserid();
			// System.out.println("profileimg####" + profileimg);
			// System.out.println("userid####" + userid);
			// request.getSession().setAttribute("profileimg", profileimg);
			// request.getSession().setAttribute("userid", userid);
			// mav = new ModelAndView("dashboard");
			// mav.addObject("firstname", user.getFirstname());
		} else {
			// mav = new ModelAndView("login");
			// mav.addObject("message", "Username or Password is wrong!!");
		}

		// String user = "";

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
			message.setSubject("Here You Go");
			String myvar = "<!DOCTYPE html>" + "<html>" + "<body>" + "" + "<p><b>" + username1
					+ "</b> here with you</p>" + "<p>As per your request, here is your personalized invitation" + ""
					+ "Please check it out right away and get back with me</p>" + "<p><a href=\""
					+ user_link.getInvitelink() + "\">Click Here</a></p>" + "<p>Let me know what you think?</p>"
					+ "<p><b>" + username1 + "</b></p>" + "<p><b>" + emailaddress + "</b></p>" + "<p><b>" + phone
					+ "</b></p>" + "" + "</body>" + "</html>";
			message.setContent(myvar, "text/html");

			/* mail template close */
			Transport.send(message);

			System.out.println("message sent successfully...");

		} catch (MessagingException e) {
			e.printStackTrace();
		}

		//

		return new ModelAndView("user_link", "firstname", login.getResendemail());
	}
	
	 @RequestMapping(value = "/downloadCSV")
	    public void downloadCSV(HttpServletResponse response,@ModelAttribute("user") User user) throws IOException {
	 
	        String csvFileName = "sharehistory.csv";
	 
	        response.setContentType("text/csv");
	 
	        // creates mock data
	        String headerKey = "Content-Disposition";
	        String headerValue = String.format("attachment; filename=\"%s\"",
	                csvFileName);
	        response.setHeader(headerKey, headerValue);
	        user.setUserid(83759);
	        List<User_Link> listBooks=userService.showShareHistory(user);
	        

	 
	        // uses the Super CSV API to generate CSV data from the model data
	        ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(),
	                CsvPreference.STANDARD_PREFERENCE);

	        
	        String[] header = { "Email", "Link","Date"};
	 
	        csvWriter.writeHeader(header);
	 
	        for (User_Link aBook : listBooks) {
	            csvWriter.write(aBook, header);
	        }
	 
	        csvWriter.close();
	    }

}
