package com.gofounder.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

import com.gofounder.model.GoUserWebinar;
import com.gofounder.model.User;
import com.gofounder.service.InvitationsService;
import com.gofounder.service.UserService;
import com.gofounder.statusreports.EmailStatus;
import com.gofounder.statusreports.PasswordGenerator;
import com.opencsv.CSVWriter;

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
		
		List<GoUserWebinar> goUserWebinar = invitationsServiceImpl.getAllWebinarUsers(flag, user.getUserId());
		request.getSession().setAttribute("goUserWebinar", goUserWebinar);
		StringBuffer emails = new StringBuffer();
		if(goUserWebinar!= null && goUserWebinar.size()>0) {
			for(GoUserWebinar userWebinar : goUserWebinar) {
				emails.append(userWebinar.getEmailAddress());
				emails.append(",");
			}
			mv.addObject("emails", emails);
		}
		String fullName=user.getFirstname()+" "+user.getLastname();
		mv.addObject("email1", email);
		mv.addObject("goUserWebinar", goUserWebinar);
		mv.addObject("fullName", fullName);
		
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
	
	@RequestMapping(value="/sendMailWebinerInvitee", method=RequestMethod.POST)
	private ModelAndView sendMailWebinerInvitee(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("redirect:/webinarinvitees");
		String userEmail = (String) request.getSession().getAttribute("email");
		
		String toEmail = ServletRequestUtils.getStringParameter(request, "email", "");
		String userMsg = ServletRequestUtils.getStringParameter(request, "mailText", "");
		
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
	
	@RequestMapping(value="/exportCSVWebinarInvitee", method=RequestMethod.GET)
	public ModelAndView exportCSVWebinarInvitee(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Inside exportCSVWebinarInvitee method");
		
		@SuppressWarnings("unchecked")
		List<GoUserWebinar> goUserWebinar = (List<GoUserWebinar>) request.getSession().getAttribute("goUserWebinar");
		
		String filePath="D://WebinarInviteeCSVs";
		File dir = new File(filePath);
		if(!dir.exists()) {
			dir.mkdir();
		}
		File file = new File(dir+File.separator+"WebinarInvitee.csv"); 
	    try { 
	        // create FileWriter object with file as parameter 
	        FileWriter outputfile = new FileWriter(file); 
	  
	        // create CSVWriter object filewriter object as parameter 
	        CSVWriter writer = new CSVWriter(outputfile); 
	  
	        // adding header to csv 
	        String[] header = { "First Name", "Last Name", "Email", "Date" }; 
	        writer.writeNext(header); 
	        
	        for(GoUserWebinar userWebinar : goUserWebinar) {
	        	String[] data1 = {userWebinar.getfName(), userWebinar.getlName(), userWebinar.getEmailAddress(), userWebinar.getDateS().toString()};
	        	writer.writeNext(data1);
	        } 
	  
	        // closing writer connection 
	        writer.close(); 
	    } 
	    catch (IOException e) { 
	        // TODO Auto-generated catch block 
	        e.printStackTrace(); 
	    } 
	    ModelAndView mv = new ModelAndView("redirect:/webinarinvitees");
	    mv.addObject("downloadStatus", "File Downloaded to "+filePath);
		
		return mv;
	}
	
	@RequestMapping(value="deleteWebInvitee", method=RequestMethod.POST)
	public ModelAndView deleteWebInvitee(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("webInvitee")GoUserWebinar webInvitee) {
		ModelAndView mv = new ModelAndView("webinar_invitees");
		
		int flag = userService.deleteWebinarInvitee(webInvitee.getId());
		

		String email = (String) request.getSession().getAttribute("email");
		String passwd = (String) request.getSession().getAttribute("password");
		User user = userService.getLoginUser(email, passwd);
		List<GoUserWebinar> goUserWebinar = invitationsServiceImpl.getAllWebinarUsers(flag, user.getUserId());
		//request.getSession().setAttribute("goUserWebinar", goUserWebinar);
		
		
		if(flag == 1) {
			mv.addObject("status", "Record Deleted Successfully");
			mv.addObject("goUserWebinar", goUserWebinar);
		}else {
			mv.addObject("status", "Record Not Deleted");
		}
		return mv;
	}
	
	@RequestMapping(value="broadCastEmail", method=RequestMethod.POST)
	public ModelAndView broadCastEmail(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("redirect:/webinarinvitees");
		String fromMail=ServletRequestUtils.getStringParameter(request, "email1", "");
		String toMail=ServletRequestUtils.getStringParameter(request, "emails", "");
		String msg=ServletRequestUtils.getStringParameter(request, "msg", "");
		String mailStatus = sendMail(request,fromMail,toMail,msg);
		
		String status="";
		if(mailStatus.equals(EmailStatus.mailSentStatus_Active)) {
			status = EmailStatus.mailSentStatusForMessage;;
		}else {
			status = EmailStatus.mailNotSentStatusForMessage;
		}
		mv.addObject("status", status);
		return mv;
	}
	
	private String sendMail(HttpServletRequest request, String email,String toEmail, String userMsg) {
		// takes input from e-mail form

		String emailFromSession = email;
		String subject = EmailStatus.mailMessageForWebinerInvitee;

		User user = userService.getLoginUser(emailFromSession);
		String userFirstName = user.getFirstname();

		String firstEmail="";
		String restEmails="";
		if(toEmail.contains(",")) {
			firstEmail=toEmail.substring(0, toEmail.indexOf(","));
			restEmails=toEmail.substring(toEmail.indexOf(",")+1);
		}
		String to="";
		if(toEmail.contains(",")) {
			to=firstEmail;
		}else {
			to = toEmail;
		}
		
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
			if(toEmail.contains(",")) {
				String[] recipientss = restEmails.split(",");
				for(String recipients : recipientss) {
				   mailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress(recipients));
				}
			}
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
