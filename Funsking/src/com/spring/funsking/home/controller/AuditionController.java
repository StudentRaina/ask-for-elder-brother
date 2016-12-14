package com.spring.funsking.home.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	
	@RequestMapping(value = "/insertAuditionJoin")//회원가입
	public @ResponseBody ResponseEntity<String> insertAuditionJoin(	
			HttpServletRequest request,
			@RequestParam HashMap<String, String>  params,
			ModelAndView modelAndView) throws Throwable{
		
		ObjectMapper mapper = new ObjectMapper(); 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		String res=iAuditionService.insertAuditionJoin(params);
		
		modelMap.put("res",res);
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);   
	}
	
	
}
