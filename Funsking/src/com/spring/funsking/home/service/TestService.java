package com.spring.funsking.home.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.ITestDao;

@Service // <= anotation ��釉�由ъ�ㅻ�쇨� �멸�����寃�.
public class TestService implements ITestService {
	@Autowired
	public ITestDao iTestDao;

	@Override
	public ArrayList<HashMap<String, String>> getgu(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getgu(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getplace(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getplace(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getplace2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getplace2(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> getplace3(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.getplace3(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> reflashplace(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.reflashplace(params);
	}

	@Override
	public ArrayList<HashMap<String, String>> genre(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.genre(params);
	}

	@Override
	public String insertrsv(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iTestDao.insertrsv(params);
	}






}
