package com.spring.funsking.home.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.funsking.home.service.IAuditionService;

@Controller
public class AuditionController {

	@Autowired
	public IAuditionService iAuditionService;
	
	@RequestMapping(value ="/auditionmain")
	public ModelAndView auditionmain(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/auditionmain");

		return modelAndView;
	}
	
	@RequestMapping(value="/auditioninfo")
	public ModelAndView auditioninfo(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/auditioninfo");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/auditionapply")
	public ModelAndView auditionapply(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/auditionapply");
		
		return modelAndView;
	}
	
}
