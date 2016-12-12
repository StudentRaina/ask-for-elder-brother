package com.spring.funsking.intr.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.intr.dao.IIntrDao;



@Service
public class IntrService implements IIntrService {
	
	@Autowired
	public IIntrDao iIntrDao;
	

	@Override //버스커 첫화면
	public ArrayList<HashMap<String, String>> getBusker(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.getBusker(params);  
	}

	@Override //버스커 상세보기
	public HashMap<String, String> getBusker2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.getBusker2(params);
	}

	@Override // 버스커 파일
	public ArrayList<HashMap<String, String>> getBusker3(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.getBusker3(params);
	}

	@Override //버스커 업로드
	public String insertBusker(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.insertBusker(params);
	}

	/*@Override // 버스커 파일 업로드
	public String insertBusker2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.insertBusker2(params);
	}*/

	@Override // paging
	public int getBuskerCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.getBuskerCount(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> audition(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.audition(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> audition2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.audition2(params);
	}



	/*@Override
	public int buskerSeq(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iIntrDao.buskerSeq(params);
	}*/

}
