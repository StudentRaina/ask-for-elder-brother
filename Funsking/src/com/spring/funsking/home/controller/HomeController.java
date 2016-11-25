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
	
	@RequestMapping(value="/login")
	public ModelAndView login(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/login");
		
		return modelAndView;
	}
	
	
	@RequestMapping(value="/join_tos")
	public ModelAndView join_tos(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/join_tos");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/real_name_conf")
	public ModelAndView real_name_conf(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/real_name_conf");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/rsv")
	public ModelAndView rsv(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/rsv");
		
		return modelAndView;
	}
}
