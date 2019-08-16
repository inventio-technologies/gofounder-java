package com.gofounder.controller;

import java.io.File;
import java.util.ArrayList;
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
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gofounder.model.GoUserWebinar;
import com.gofounder.model.User;
import com.gofounder.service.InvitationsService;
import com.gofounder.service.UserService;
import com.gofounder.statusreports.EmailStatus;
import com.gofounder.statusreports.PasswordGenerator;

@Controller
public class InviteesAndLinksController {
	
	@Autowired
	private InvitationsService invitationsServiceImpl;
	
	@Autowired
	UserService userService;

	@RequestMapping(value = "/myinvitees", method = RequestMethod.GET)
	public ModelAndView myInvitees(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("invitees");
		

		return mv;
	}
	
	@RequestMapping(value = "/webinarinvitees", method = RequestMethod.GET)
	public ModelAndView webinarInvitees(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("webinar_invitees");
		int flag = 1;
		
		String email = (String) request.getSession().getAttribute("email");
		String passwd = (String) request.getSession().getAttribute("password");
		User user = userService.getLoginUser(email, passwd);
		
		List<GoUserWebinar> goUserWebinar = invitationsServiceImpl.getAllWebinarUsers(flag, 18886);
		mv.addObject("goUserWebinar", goUserWebinar);
		return mv;
	}
	
	@RequestMapping(value="/openDialog", method = RequestMethod.GET)
	public ModelAndView openDialog(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("DialogForWebinarInvite");
		String webineruserId = ServletRequestUtils.getStringParameter(request, "userId", "");
		
		String email = (String) request.getSession().getAttribute("email");
		String passwd = (String) request.getSession().getAttribute("password");
		User user = userService.getLoginUser(email, passwd);
		
		List<GoUserWebinar> goUserWebinar = new ArrayList<>();
		if(!webineruserId.equals("")) {
			goUserWebinar = invitationsServiceImpl.getWebinarUsersById(Integer.parseInt(webineruserId));
		}
		if(goUserWebinar.size()>0)
		    mv.addObject("goUserWebinar", goUserWebinar.get(0));
		else {
			mv.addObject("goUserWebinar", new GoUserWebinar());
		}
		return mv;
	}
	
	@RequestMapping(value="/sendMailWebinerInvitee", method=RequestMethod.GET)
	private ModelAndView sendMailWebinerInvitee(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("DialogForWebinarInvite");
		String userEmail = (String) request.getSession().getAttribute("email");
		
		String toEmail = ServletRequestUtils.getStringParameter(request, "userMail", "");
		String userMsg = ServletRequestUtils.getStringParameter(request, "msg", "");
		
		String mailStatus = sendMail(request, userEmail,toEmail, userMsg);
		String status="";
		if(mailStatus.equals(EmailStatus.mailSentStatus_Active)) {
			status = EmailStatus.mailSentStatusForMessage;;
		}else {
			status = EmailStatus.mailNotSentStatusForMessage;
		}
		mv.addObject("status", status);
		return mv;
	}
	
	@RequestMapping(value="/searchWebinarInv", method=RequestMethod.POST)
	public ModelAndView searchWebinarInv(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("webinar_invitees");
		String searchCriteria = ServletRequestUtils.getStringParameter(request, "search_val", "");
		List<GoUserWebinar> userWebinars = invitationsServiceImpl.searchWebinarInvByCriteria(searchCriteria);
		
		if(userWebinars.size() > 0) {
			mv.addObject("goUserWebinar", userWebinars);
			mv.addObject("search_val", searchCriteria);
		}else {
			mv = new ModelAndView("redirect:/webinarinvitees");
		}
		return mv;
	}
	
	private String sendMail(HttpServletRequest request, String email,String toEmail, String userMsg) {
		// takes input from e-mail form

		String emailFromSession = email;
		String subject = EmailStatus.mailMessageForWebinerInvitee;

		User user = userService.getLoginUser(emailFromSession);
		String userFirstName = user.getFirstname();

		
		String to = toEmail;
		String from = emailFromSession;
		String host = "webmail.inventiotechnologies.com";

		Properties properties = System.getProperties();
		properties.setProperty("mail.smtp.host", host);
		properties.setProperty("mail.user", from);
		//properties.setProperty("mail.password", "debraj@inventio324");
		properties.put("mail.smtp.localhost", host);
		Session session = Session.getDefaultInstance(properties);

		String mailStatus = "";

		try {
			MimeMessage mailMessage = new MimeMessage(session);
			mailMessage.setContent(
					userMsg,
					"text/html");
			mailMessage.setFrom(new InternetAddress(from));
			mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mailMessage.setSubject(subject+userFirstName);

			// Send message

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
