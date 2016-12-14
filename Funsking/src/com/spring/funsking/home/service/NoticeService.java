package com.spring.funsking.home.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.INoticeDao;

@Service
public class NoticeService implements INoticeService{
	
	@Autowired
	public INoticeDao iNoticeDao;

	@Override
	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iNoticeDao.getTest(params);
	}

	@Override
	public int getTestCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iNoticeDao.getTestCount(params);
	}

	@Override
	public HashMap<String, String> getTestCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iNoticeDao.getTestCon(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getFileCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iNoticeDao.getFileCon(params) ;
	}

	@Override
	public String insertTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iNoticeDao.insertTest(params);
	}

	@Override
	public int deleteTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iNoticeDao.DeleteTest(params);
	}

	@Override
	public int updateTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iNoticeDao.updateTest(params);
	}

}
