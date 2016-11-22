package com.spring.sample.common.service;

import org.springframework.stereotype.Service;

import com.spring.sample.common.CommonProperties;
import com.spring.sample.common.bean.PagingBean;

@Service
public class PagingService implements IPagingService{
	/*
	 * Paging
	 */
	//테이블 시작row
	@Override
	public int getStartCount(int page) {
		int startCount = 0;
		int viewCount = CommonProperties.VIEWCOUNT;
		startCount = (page - 1) * viewCount + 1;
		return startCount;
	}
	
	//테이블 종료row
	@Override
	public int getEndCount(int page) {
		int endCount = 0;
		endCount = page * CommonProperties.VIEWCOUNT;
		return endCount;
	}
	
	//페이징 최대 크기
	@Override
	public int getMaxPcount(int maxCount) {
		int maxPcount = 0;
		
		if(maxCount % CommonProperties.VIEWCOUNT > 0){
			maxPcount = (maxCount / CommonProperties.VIEWCOUNT) + 1;
		} else {
			maxPcount = (maxCount / CommonProperties.VIEWCOUNT);
		}
		
		if(maxCount == 0) {
			maxPcount = 1;
		}
		
		return maxPcount;
	}
	
	//현재페이지 기준 시작페이지
	@Override
	public int getStartPcount(int page) {
		int startPcount = 0;
		
		if(page % CommonProperties.PAGECOUNT == 0 ) {
			startPcount = page - CommonProperties.PAGECOUNT + 1;
		} else {
			startPcount = ((page / CommonProperties.PAGECOUNT) * CommonProperties.PAGECOUNT) + 1;
		}
		
		return startPcount;
	}
	
	//현재페이지 기준 종료페이지
	@Override
	public int getEndPcount(int page, int maxCount) {
		int endPcount = 0;
		int maxPcount = getMaxPcount(maxCount);
		
		if(page % CommonProperties.PAGECOUNT == 0 ) {
			endPcount = page;
		} else {
			endPcount = ((page / CommonProperties.PAGECOUNT) * CommonProperties.PAGECOUNT) + CommonProperties.PAGECOUNT;
		}
		
		if(endPcount >= maxPcount){
			endPcount = maxPcount;
		}
		
		return endPcount;
	}
	
	//빈형식으로 취득
	@Override
	public PagingBean getPageingBean(int page, int maxCount) {
		PagingBean pb = new PagingBean();
		
		pb.setStartCount(getStartCount(page));
		pb.setEndCount(getEndCount(page));
		pb.setMaxPcount(getMaxPcount(maxCount));
		pb.setStartPcount(getStartPcount(page));
		pb.setEndPcount(getEndPcount(page, maxCount));
		
		return pb;
	}
}
