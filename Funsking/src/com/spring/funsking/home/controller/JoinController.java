package com.spring.funsking.home.controller;

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

import com.spring.funsking.home.service.IJoinService;

@Controller
public class JoinController {
	@Autowired
	public IJoinService iJoinService;


	@RequestMapping(value="/join_tos")//회원가입-약관동의
	public ModelAndView join_tos(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/join_tos");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/real_name_conf")//회원가입-실명확인
	public ModelAndView real_name_conf(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/real_name_conf");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/join_text_write")//회원가입서 작성
	public ModelAndView join_text_write(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/join_text_write");
		
		return modelAndView;
	}
	

	@RequestMapping(value = "/insertJoin")//회원가입
	public @ResponseBody ResponseEntity<String> insertJoin(	
			HttpServletRequest request,
			@RequestParam HashMap<String, String>  params,
			HttpSession session,
			ModelAndView modelAndView) throws Throwable{
		
		ObjectMapper mapper = new ObjectMapper(); 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		String res=iJoinService.insertJoin(params);
		
		session.setAttribute("sInsertID", params.get("id"));
			
		modelMap.put("res",res);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);   
	}
	
	@RequestMapping(value="/join_compl")//회원가입서 작성
	public ModelAndView join_compl(HttpServletRequest request, 
								   ModelAndView modelAndView){

		
		modelAndView.setViewName("home/join_compl");
		
		return modelAndView;
	}
	

	@RequestMapping(value = "/idCheckAjax")//회원가입 중복
	public @ResponseBody ResponseEntity<String> idCheckAjax(	
			HttpServletRequest request,
			HttpSession session,
			@RequestParam HashMap<String, String>  params,
			ModelAndView modelAndView) throws Throwable{
		
		ObjectMapper mapper = new ObjectMapper(); 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		HashMap<String, String> check_res=iJoinService.idCheckAjax(params);
		
		if(check_res == null){
			modelMap.put("ch", "success");
		}else{
			modelMap.put("ch", "fail");
		}
			
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);   
	}
	
}
