package com.gofounder.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserLinkController {

	@RequestMapping(value = "/user_link", method = RequestMethod.GET)
	public ModelAndView showUser_Link(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("user_link");

		return mav;
	}
}
