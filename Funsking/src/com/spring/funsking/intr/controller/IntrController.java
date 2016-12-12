package com.spring.funsking.intr.controller;

import java.util.ArrayList;
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

import com.spring.funsking.common.bean.PagingBean;
import com.spring.funsking.common.service.IPagingService;
import com.spring.funsking.intr.service.IIntrService;

@Controller
public class IntrController {

	@Autowired
	public IIntrService iIntrService;
	
	@Autowired
	public IPagingService iPagingService;
	
	
	@RequestMapping(value ="/buskerintro") //버스커 소개
	public ModelAndView buskerintro(HttpServletRequest request, ModelAndView modelAndView) {
		
		
		modelAndView.setViewName("intr/buskerintro");
			
			return modelAndView;
		}
	
	@RequestMapping(value = "/buskerajax") 
	   public @ResponseBody ResponseEntity<String> buskerajax(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();

	      PagingBean pb = iPagingService.getPageingBean(
	    		  Integer.parseInt(params.get("page")), iIntrService.getBuskerCount(params));
	      
	      params.put("start",  Integer.toString(pb.getStartCount()));
	      params.put("end",  Integer.toString(pb.getEndCount()));
	      
	      modelMap.put("pb",  pb);	
	      
	      ArrayList<HashMap<String, String>> list3 = iIntrService.getBusker(params);
	      
	      modelMap.put("list3", list3);
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);	      
	   }
	
	@RequestMapping(value="/buskerintro2") //버스커상세보기
		public ModelAndView buskerintro2(HttpServletRequest request,
				@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable{
			
			HashMap<String, String> list4 = iIntrService.getBusker2(params); //버스커 파일빼고 데이터
			
			modelAndView.addObject("list4", list4); 
			
			ArrayList<HashMap<String, String>> list5 = iIntrService.getBusker3(params); // 버스커 게시판 파일
			
			int imgCnt = 0;
			int videoCnt = 0;
			
			for(int i = 0 ; i < list5.size() ; i++) {
				if(list5.get(i).get("FILE_EXT").equals("jpg") || 
						list5.get(i).get("FILE_EXT").equals("png") || 
						list5.get(i).get("FILE_EXT").equals("bmp") ||
						list5.get(i).get("FILE_EXT").equals("gif")) {
					imgCnt++;
					
				}
				if(list5.get(i).get("FILE_EXT").equals ("mp4")) {
					videoCnt++;
				}
			}
			
			
			modelAndView.addObject("list5", list5);
			modelAndView.addObject("imgCnt", imgCnt);
			modelAndView.addObject("videoCnt", videoCnt);
			
			modelAndView.setViewName("intr/buskerintro2");
			
			return modelAndView;
		}
	
	@RequestMapping(value="/buskerwrite") //버스커 쓰기
	public ModelAndView buskerwrite(HttpServletRequest request, ModelAndView modelAndView) {
		
		
		
		modelAndView.setViewName("intr/buskerwrite");
		
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/insertBusker") //인서트
	   public @ResponseBody ResponseEntity<String> insertBusker(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, //한번에 받아오기  이 한줄땜에 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      //key value형태로 데이터를 넣음
	      
	      String res = iIntrService.insertBusker(params);
	      //true 또는 false로 넘어옴 TestDao에서 그렇게 설정했기때문에
	      modelMap.put("res",  res);
	   
	      /*String res2 = iTestService.insertBusker2(params);
	      
	      modelMap.put("res2", res2);*/
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);
	   }
	
	//오디션 회차 가져오기(ajax)
	@RequestMapping(value = "/auditionBusker") 
	   public @ResponseBody ResponseEntity<String> auditionBusker(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();

	      
	      
	      ArrayList<HashMap<String, String>>  audi = iIntrService.audition(params);
	      
	      modelMap.put("audi", audi);
	      
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);	      
	   }
	
	//오디션 회차별 버스커 팀들 가졍괴(ajax)
	@RequestMapping(value = "/auditionBusker2") 
	   public @ResponseBody ResponseEntity<String> auditionBusker2(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();

	      
	      
	       ArrayList<HashMap<String, String>> audi2 = iIntrService.audition2(params);
	      
	       modelMap.put("audi2", audi2);
	      
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);	      
	   }
}
