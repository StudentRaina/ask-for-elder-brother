package com.spring.funsking.home.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.funsking.home.service.ITestService;

@Controller
public class HomeController {
	@Autowired
	public ITestService iTestService;

	
	@RequestMapping(value="/home1")
	public ModelAndView home1(HttpServletRequest request, 
							  HttpSession session,
							  @RequestParam HashMap<String, String> params,
							  ModelAndView modelAndView) throws Throwable{
		
		modelAndView.setViewName("home/home1");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/home2")
	public ModelAndView home2(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/home2");
		
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/rsv")
	public ModelAndView rsv(HttpServletRequest request, ModelAndView modelAndView) {

		modelAndView.setViewName("home/rsv");

		return modelAndView;
	}

	@RequestMapping(value = "/rsvgu")
	public @ResponseBody ResponseEntity<String> rsvgu(HttpServletRequest request,
			@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();

		Map<String, Object> modelMap = new HashMap<String, Object>();

		ArrayList<HashMap<String, String>> list = iTestService.getgu(params);

		modelMap.put("list", list);

		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);

	}
	
	
	@RequestMapping(value = "/rsvplace")
	public @ResponseBody ResponseEntity<String> rsvplace(HttpServletRequest request,
			@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();

		Map<String, Object> modelMap = new HashMap<String, Object>();

		ArrayList<HashMap<String, String>> list = iTestService.getplace(params);

		modelMap.put("list", list);

		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);

	}
	
}
