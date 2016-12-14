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
	
	@RequestMapping(value="/introupdate") //버스커소개 수정
	public ModelAndView introupdate(HttpServletRequest request,
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
		
		modelAndView.setViewName("intr/introupdate");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/updateajax") //버스커 소개 업데이트
	   public @ResponseBody ResponseEntity<String> updateajax(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      
	      
	      int res = iIntrService.updateajax(params);
	      //true 또는 false로 넘어옴 TestDao에서 그렇게 설정했기때문에
	      modelMap.put("res",  res);
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	  
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);
	    
	      
	   }
	
	//버스커 소개 삭제
	@RequestMapping(value = "/deleteBusker")
	   public @ResponseBody ResponseEntity<String> deleteBusker(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, //한번에 받아오기  이 한줄땜에 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      //key value형태로 데이터를 넣음
	      
	      int res = iIntrService.deleteBusker(params);
	      //true 또는 false로 넘어옴 TestDao에서 그렇게 설정했기때문에
	      modelMap.put("res",  res);
	      
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);
	      
	   }	
	
	//버스커 장르 가져오기
	@RequestMapping(value = "/GenreBusker") 
	   public @ResponseBody ResponseEntity<String> GenreBusker(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();

	      
	      
	      ArrayList<HashMap<String, String>>  genre = iIntrService.GenreBusker(params);
	      
	      modelMap.put("genre", genre);
	      
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);	      
	   }
	
	@RequestMapping(value ="/buskerphoto") //버스커 포토
	public ModelAndView buskerphoto(HttpServletRequest request, ModelAndView modelAndView) {
		
		
		modelAndView.setViewName("intr/buskerphoto");
			
			return modelAndView;
		}
	
	@RequestMapping(value ="/buskermedia") //버스커 미디어
	public ModelAndView buskermedia(HttpServletRequest request, ModelAndView modelAndView) {
		
		
		modelAndView.setViewName("intr/buskermedia");
			
			return modelAndView;
		}
	
	
	//포토 첫화면
	@RequestMapping(value = "/photoajax") 
	   public @ResponseBody ResponseEntity<String> photoajax(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();

	      PagingBean pb = iPagingService.getPageingBean(
	    		  Integer.parseInt(params.get("page")), iIntrService.getphotoCount(params));
	      
	      params.put("start",  Integer.toString(pb.getStartCount()));
	      params.put("end",  Integer.toString(pb.getEndCount()));
	      
	      modelMap.put("pb",  pb);	
	      
	      ArrayList<HashMap<String, String>> list3 = iIntrService.photoajax(params);
	      
	      modelMap.put("list3", list3);
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);	      
	   }
	
	@RequestMapping(value ="/buskerphoto2") //버스커 포토 상세보기
	public ModelAndView buskerphoto2(HttpServletRequest request,
			@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {
		
		HashMap<String, String> con = iIntrService.buskerphoto2(params); // 파일을 뺀 포토 나머지 데이터
		
		modelAndView.addObject("con", con); //데이터를 보낸다
		
		ArrayList<HashMap<String, String>> con2 = iIntrService.buskerphoto3(params); // 포토 파일
			
		modelAndView.addObject("con2", con2);
		
		/*int imgCnt = 0;
		int videoCnt = 0;
		
		for(int i = 0 ; i < con2.size() ; i++) {
			if(con2.get(i).get("FILE_EXT").equals("jpg") || 
					con2.get(i).get("FILE_EXT").equals("png") || 
					con2.get(i).get("FILE_EXT").equals("bmp") ||
					con2.get(i).get("FILE_EXT").equals("gif")) {
				imgCnt++;
				
			}
			if(list5.get(i).get("FILE_EXT").equals ("mp4")) {
				videoCnt++;
			}
		}
		
		
		modelAndView.addObject("con2", con2);
		modelAndView.addObject("imgCnt", imgCnt);
		modelAndView.addObject("videoCnt", videoCnt);*/
		
		modelAndView.setViewName("intr/buskerphoto2");
		
		return modelAndView;
			
		}
	
	@RequestMapping(value ="/photowrite") //버스커 포토 쓰기
	public ModelAndView photowrite(HttpServletRequest request, ModelAndView modelAndView) {
		
		
		modelAndView.setViewName("intr/photowrite");
			
			return modelAndView;
		}
	
	@RequestMapping(value = "/insertphoto") //인서트 포토
	   public @ResponseBody ResponseEntity<String> insertphoto(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, //한번에 받아오기  이 한줄땜에 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      //key value형태로 데이터를 넣음
	      
	      String res = iIntrService.insertphoto(params);
	      //true 또는 false로 넘어옴 TestDao에서 그렇게 설정했기때문에
	      modelMap.put("res",  res);
	   
	      /*String res2 = iTestService.insertBusker2(params);
	      
	      modelMap.put("res2", res2);*/
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);
	   }
	
	
	//예약된 장소 가져오기 ajax
	@RequestMapping(value = "/rsvplaceAjax") 
	   public @ResponseBody ResponseEntity<String> rsvplaceAjax(
			   HttpServletRequest request,
			   @RequestParam HashMap<String, String> params, 
			   ModelAndView modelAndView) throws Throwable{
	      ObjectMapper mapper = new ObjectMapper();
	      Map<String, Object> modelMap = new HashMap<String, Object>();

	      
	      ArrayList<HashMap<String, String>> place = iIntrService.rsvplaceAjax(params);
	      
	      modelMap.put("place", place);
	      
	      
	      HttpHeaders responseHeaders = new HttpHeaders();
	      responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	      
	      
	      return new ResponseEntity<String>(mapper.writeValueAsString(modelMap),
	    		  							responseHeaders, HttpStatus.CREATED);	      
	   }
	
}
