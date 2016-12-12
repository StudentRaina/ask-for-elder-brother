package com.spring.funsking.home.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.ILoginDao;

@Service
public class LoginService implements ILoginService {
	@Autowired
	public ILoginDao iLoginDao;
	
	@Override
	public HashMap<String, String> getFuser(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLoginDao.getFuser(params);
	}

	@Override
	public HashMap<String, String> getIdview1(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLoginDao.getIdview1(params);
	}

	@Override
	public HashMap<String, String> getIdview2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLoginDao.getIdview2(params);
	}

	@Override
	public HashMap<String, String> getPasswordview1(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLoginDao.getPasswordview1(params);
	}

	@Override
	public HashMap<String, String> getPasswordview2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iLoginDao.getPasswordview2(params);
	}
}
