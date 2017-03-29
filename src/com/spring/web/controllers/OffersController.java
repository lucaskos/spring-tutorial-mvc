package com.spring.web.controllers;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OffersController {
	
	@RequestMapping("/")
	public ModelAndView showHome(HttpSession session) {
		ModelAndView mv = new ModelAndView("Home");
		Map<String, Object> model = mv.getModel();
		model.put("name", "<b>Igor</b>");
		
		//session.setAttribute("name", "Boris");
		return mv;
	}
}
