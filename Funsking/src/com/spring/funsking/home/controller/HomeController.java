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
	
	@RequestMapping(value="/home2")
	public ModelAndView home2(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/home2");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/home3")
	public ModelAndView home3(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/home3");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/home4")
	public ModelAndView home4(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/home4");
		
		return modelAndView;
	}

}
