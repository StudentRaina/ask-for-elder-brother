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
	@RequestMapping(value = "/busiintr")
	public ModelAndView busiintr(HttpServletRequest request, ModelAndView modelAndView) {

		modelAndView.setViewName("home/busiintr");

		return modelAndView;
	}
	@RequestMapping(value = "/adminrsv")
	public ModelAndView adminrsv(HttpServletRequest request, ModelAndView modelAndView) {

		modelAndView.setViewName("home/adminrsv");

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
	
	@RequestMapping(value = "/rsvplace3")
	public @ResponseBody ResponseEntity<String> rsvplace3(HttpServletRequest request,
			@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();

		Map<String, Object> modelMap = new HashMap<String, Object>();

		ArrayList<HashMap<String, String>> list = iTestService.getplace3(params);
		modelMap.put("list", list);
		
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}	
	
	@RequestMapping(value = "/genre")
	public @ResponseBody ResponseEntity<String> genre(HttpServletRequest request,
			@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list = iTestService.genre(params);
		modelMap.put("list", list);
		
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/insertrsv")
	public @ResponseBody ResponseEntity<String> insertTest(	//ResponseBody諛���濡� �몄����寃���. RsponseEntity媛�泥�. 媛�泥댁�� ����瑜� 臾몄���대� 怨���
			HttpServletRequest request,
			@RequestParam HashMap<String, String>  params,
			ModelAndView modelAndView) throws Throwable{
		
		ObjectMapper mapper = new ObjectMapper(); //ObjectMapper =>map������ json�����쇰� 留��ㅼ�댁�.
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		String res=iTestService.insertrsv(params);
	
		modelMap.put("res",res);
		//res는 ture or flase로 받아옴
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);   
	}
	
	@RequestMapping(value = "/rsvall")
	public @ResponseBody ResponseEntity<String> rsvall(HttpServletRequest request,
			@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list = iTestService.rsvall(params);
		modelMap.put("list", list);
		
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}
	
	
	@RequestMapping(value = "/insertsche")
	public @ResponseBody ResponseEntity<String> insertsche(	//ResponseBody諛���濡� �몄����寃���. RsponseEntity媛�泥�. 媛�泥댁�� ����瑜� 臾몄���대� 怨���
			HttpServletRequest request,
			@RequestParam HashMap<String, String> params,
			@RequestParam HashMap<String, String> list,
			@RequestParam (value="scheArray") ArrayList<String> scheArraylist,
			@RequestParam (value="strArray") ArrayList<String> strArraylist,
			ModelAndView modelAndView, Object scheArray) throws Throwable{
	
	
		ObjectMapper mapper = new ObjectMapper(); //ObjectMapper =>map������ json�����쇰� 留��ㅼ�댁�.
		Map<String, Object> modelMap = new HashMap<String, Object>();
		System.out.println(params);
		String res="";
		for(int a = 0 ; a < strArraylist.size() ; a ++ ){
			for(int q = 0 ; q < scheArraylist.size() ; q++){
				params.put("sche", scheArraylist.get(q));
				params.put("checkdate", strArraylist.get(a));
				System.out.println(params);
				res=iTestService.insertsche(params);
				//res += iTestService.insertsche(params);
			};
		};
		modelMap.put("res",res);
		//res는 ture or flase로 받아옴
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);   
	}
}
