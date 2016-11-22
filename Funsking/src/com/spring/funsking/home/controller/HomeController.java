package com.spring.funsking.home.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value="/home1")
	public ModelAndView home1(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/home1");
		
		return modelAndView;
	}

}
