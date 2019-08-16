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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gofounder.dao.InviteeDao;
import com.gofounder.model.Invitee;
import com.gofounder.service.InviteeService;
import com.gofounder.statusreports.EmailStatus;

@Controller
public class InviteesController {
	
	@Autowired
	private InviteeService inviteeService;

	@RequestMapping(value = "/invitees", method = RequestMethod.GET)
	public ModelAndView showUser_Link(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("invitees");
		int userId = (Integer) request.getSession().getAttribute("userid");
		System.out.println("invitees userId = "+userId);
		List<Invitee> inviteeList = inviteeService.fetchInviteesByUserId(userId);
		mav.addObject("inviteeList", inviteeList);
		return mav;
	}
	
	@RequestMapping(value = "/inviteeListByFnameLnameEmail", method = RequestMethod.POST)
	public ModelAndView findInviteesByFnameLnameEmail(HttpServletRequest request, HttpServletResponse response, 
														@ModelAttribute("invitee") Invitee invitee) {
		ModelAndView mav = new ModelAndView("invitees");
		int userId = (Integer) request.getSession().getAttribute("userid");
		List<Invitee> inviteeList = inviteeService.fetchInviteesByFnameLnameEmail(userId, invitee.getNameEmail());
		mav.addObject("inviteeList", inviteeList);
		mav.addObject("nameEmail", invitee.getNameEmail());
		return mav;
	}
	
	@RequestMapping(value = "/deleteInvitee", method = RequestMethod.POST)
	public ModelAndView deleteInvitee(HttpServletRequest request, HttpServletResponse response, 
			@ModelAttribute("invitee") Invitee invitee) {
		ModelAndView mav = new ModelAndView("invitees");
		int userId = (Integer) request.getSession().getAttribute("userid");
		inviteeService.removeInvitee(invitee.getInviteeId());
		List<Invitee> inviteeList = inviteeService.fetchInviteesByUserId(userId);
		mav.addObject("inviteeList", inviteeList);
		return mav;
	}
	
	@RequestMapping(value = "/mailSend", method = RequestMethod.POST)
	public ModelAndView mailSend(HttpServletRequest request, HttpServletResponse response, 
			@ModelAttribute("invitee") Invitee invitee) {
		
		String subject = invitee.getMailSubject();
		String to = invitee.getEmail();
		//String to = "sudipto@inventiotechnologies.com";
		String from = "debraj@inventiotechnologies.com";
		String host = "webmail.inventiotechnologies.com";

		Properties properties = System.getProperties();
		properties.setProperty("mail.smtp.host", host);
		properties.setProperty("mail.user", "debraj@inventiotechnologies.com");
		properties.setProperty("mail.password", "debraj@inventio324");
		properties.put("mail.smtp.localhost", host);
		Session session = Session.getDefaultInstance(properties);

		String mailStatus = "";
		ModelAndView mav = new ModelAndView("invitees");
		
		int userId = (Integer) request.getSession().getAttribute("userid");
		List<Invitee> inviteeList = inviteeService.fetchInviteesByUserId(userId);
		try {
			MimeMessage mailMessage = new MimeMessage(session);
			mailMessage.setContent(invitee.getMailText(),"text/html");
			mailMessage.setFrom(new InternetAddress(from));
			mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mailMessage.setSubject(subject);

			// Send message
			//userService.setUserDetailWithGeneratedPassword(emailFromSession, password);

			Transport.send(mailMessage);
			System.out.println("message sent successfully....");
			mailStatus = EmailStatus.mailSentStatus_Active;
			
			mav.addObject("inviteeList", inviteeList);
			mav.addObject("message", "Email send successfully.");
			return mav;
		} catch (MessagingException mex) {
			mex.printStackTrace();
			mailStatus = EmailStatus.mailSentStatus_Inactive;
			mav.addObject("inviteeList", inviteeList);
			mav.addObject("message", "Internal server error occurred.");
			return mav;
		}

	}
}
