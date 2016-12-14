package com.spring.funsking.home.controller;

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
import com.spring.funsking.home.service.INoticeService;

@Controller
public class noticeController {

	@Autowired
	public INoticeService iNoticeService;
	
	@Autowired
	public IPagingService iPagingService;
	
	@RequestMapping(value="/notice")
	public ModelAndView notice(HttpServletRequest request, ModelAndView modelAndView){
		
		modelAndView.setViewName("home/notice");
		
		return modelAndView;
	}
	
@RequestMapping(value="/refreshTest")
	
	public @ResponseBody ResponseEntity<String> refreshText(
			HttpServletRequest request,
			@RequestParam HashMap<String, String> params,
			ModelAndView modelAndView) throws Throwable{
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		PagingBean pb = iPagingService.getPageingBean(Integer.parseInt(params.get("page")), iNoticeService.getTestCount(params));
		params.put("start", Integer.toString(pb.getStartCount()));
		
		params.put("end", Integer.toString(pb.getEndCount()));
		
		ArrayList<HashMap<String, String>> list
				= iNoticeService.getTest(params);
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/json; charset=UTF-8");
	
		
		return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
	}

@RequestMapping(value="/noticeDetailedView")

	public ModelAndView noticeDetailedView(HttpServletRequest request,
										   @RequestParam HashMap<String, String> params,
										   ModelAndView modelAndView) throws Throwable{
		HashMap<String, String> con = iNoticeService.getTestCon(params); 
		ArrayList<HashMap<String, String>> con2= iNoticeService.getFileCon(params);
		
		int imgCnt = 0;
        
        for(int i = 0 ; i < con2.size() ; i++) {
           if(con2.get(i).get("FILE_EXT").equals("jpg") || 
        		   con2.get(i).get("FILE_EXT").equals("png") || 
        		   con2.get(i).get("FILE_EXT").equals("bmp") ||
        		   con2.get(i).get("FILE_EXT").equals("gif")) {
              imgCnt++;
              
           }
 
        }
        
        
        modelAndView.addObject("imgCnt", imgCnt);
		
		modelAndView.addObject("con", con);
		modelAndView.addObject("con2", con2);
	
		modelAndView.setViewName("home/noticeDetailedView");
	
		return modelAndView;
	}

@RequestMapping(value="/noticeinsert")
public ModelAndView noticeinsert(HttpServletRequest request,
						  ModelAndView modelAndView) {
	
	modelAndView.setViewName("home/noticeinsert");
	
	return modelAndView;
}

@RequestMapping(value="/insertTest")
public @ResponseBody ResponseEntity<String> insertTest(
		HttpServletRequest request,
		@RequestParam HashMap<String, String> params,
		ModelAndView modelAndView) throws Throwable{
	System.out.println(params);
	ObjectMapper mapper = new ObjectMapper();
	Map<String, Object> modelMap = new HashMap<String, Object>();
	
	String res = iNoticeService.insertTest(params);
	
	modelMap.put("res", res); //res가 ajax결과로 넘어온다
	
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.add("Content-Type", "text/json; charset=UTF-8");

	
	return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
}

@RequestMapping(value="/deleteTest")
public @ResponseBody ResponseEntity<String> deleteTest(
		HttpServletRequest request,
		@RequestParam HashMap<String, String> params,
		ModelAndView modelAndView) throws Throwable{
	ObjectMapper mapper = new ObjectMapper();
	Map<String, Object> modelMap = new HashMap<String, Object>();
	
	int res = iNoticeService.deleteTest(params);
	
	modelMap.put("res", res);
	
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.add("Content-Type", "text/json; charset=UTF-8");

	
	return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
}

@RequestMapping(value="/noticeupdate")

public ModelAndView noticeupdate(HttpServletRequest request,
									   @RequestParam HashMap<String, String> params,
									   ModelAndView modelAndView) throws Throwable{
	
	HashMap<String, String> con = iNoticeService.getTestCon(params); 
	ArrayList<HashMap<String, String>> con2= iNoticeService.getFileCon(params);
	
	int imgCnt = 0;
    
    for(int i = 0 ; i < con2.size() ; i++) {
       if(con2.get(i).get("FILE_EXT").equals("jpg") || 
    		   con2.get(i).get("FILE_EXT").equals("png") || 
    		   con2.get(i).get("FILE_EXT").equals("bmp") ||
    		   con2.get(i).get("FILE_EXT").equals("gif")) {
          imgCnt++;
          
       }

    }
    
    
    modelAndView.addObject("imgCnt", imgCnt);
	
	modelAndView.addObject("con", con);
	modelAndView.addObject("con2", con2);

	modelAndView.setViewName("home/noticeupdate");

	return modelAndView;
}

@RequestMapping(value="/updateTest")
public @ResponseBody ResponseEntity<String> updateTest(
		HttpServletRequest request,
		@RequestParam HashMap<String, String> params,
		ModelAndView modelAndView) throws Throwable{
	ObjectMapper mapper = new ObjectMapper();
	Map<String, Object> modelMap = new HashMap<String, Object>();
	
	int res = iNoticeService.updateTest(params);
	
	modelMap.put("res", res);
	
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.add("Content-Type", "text/json; charset=UTF-8");

	
	return new ResponseEntity<String>(mapper.writeValueAsString(modelMap), responseHeaders, HttpStatus.CREATED);
}

}
