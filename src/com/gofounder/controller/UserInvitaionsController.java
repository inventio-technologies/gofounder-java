package com.gofounder.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.gofounder.model.MyInvitations;
import com.gofounder.model.Sent_Invitation;
import com.gofounder.model.User;
import com.gofounder.service.UserService;


@Controller
public class UserInvitaionsController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserLinkController.class);
	
	@Autowired
	UserService userService;

	// user_link
	@RequestMapping(value = "/invitations", method = RequestMethod.GET)
	public ModelAndView showUserlink(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("invitations");
		// System.out.println("login.................");
		mav.addObject("myinvit", new MyInvitations());
		return mav;
	}
	
	@ModelAttribute("emailtemplateList")
	public Map<Integer, String> getEmailTemplateList(HttpServletRequest request, HttpServletResponse response) {

		Map<Integer, String> templateList = new HashMap<Integer, String>();
		templateList =  userService.fetchEmailTemplate();
		request.getSession().setAttribute("emailtemplateList", templateList);
		return templateList;
	}
	
	// user_link for table list
		@RequestMapping(value = "/sentinvitaion", method = RequestMethod.GET)
		public ModelAndView showsentinvitaion(HttpServletRequest request, HttpServletResponse response,
				@ModelAttribute("user") User user) {

			ModelAndView mav = new ModelAndView("sentinvitaion");
			/* ###HARD CODED USER ID### */
			user.setUserid(83759); // hard coded value for testing purpose
			
			/* ###HARD CODED USER ID### */
			List<Sent_Invitation> list = userService.showShareHistory_sentinvitaion(user);
			if (null != list) {
				System.out.println("sentinvitaion_list" + list.size());

				mav.addObject("sentinvitaion_list", list);
			}

			return mav;
		}
		
		// download CSV
		@RequestMapping(value = "/downloadCSV_sentinvitaion")
		public void downloadCSV(HttpServletResponse response, @ModelAttribute("user") User user) throws IOException {

			String csvFileName = "sentinvitaion_history.csv";

			response.setContentType("text/csv");

			// creates mock data
			String headerKey = "Content-Disposition";
			String headerValue = String.format("attachment; filename=\"%s\"", csvFileName);
			response.setHeader(headerKey, headerValue);
			/* ###HARD CODED USER ID### */
			user.setUserid(83759);
			/* ###HARD CODED USER ID### */
			List<Sent_Invitation> listBooks = userService.showShareHistory_sentinvitaion(user);

			// uses the Super CSV API to generate CSV data from the model data
			ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(), CsvPreference.STANDARD_PREFERENCE);

			String[] header = { "first_name", "last_name", "email", "dates" };

			csvWriter.writeHeader(header);

			for (Sent_Invitation aBook : listBooks) {
				csvWriter.write(aBook, header);
			}

			csvWriter.close();
		}
		
		// email tamplate
		@RequestMapping(value = "/emailtemplate", method = RequestMethod.GET)
		public ModelAndView showEmailtemplate(HttpServletRequest request, HttpServletResponse response) {

			ModelAndView mav = new ModelAndView("emailtemplate");
			// System.out.println("login.................");
			// mav.addObject("user_link", new User_Link());
			return mav;
		}



}
