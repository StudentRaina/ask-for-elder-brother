package com.spring.funsking.home.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.IJoinDao;

@Service
public class JoinService implements IJoinService {
	@Autowired
	public IJoinDao iJoinDao;

	@Override
	public String insertJoin(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iJoinDao.insertJoin(params);
	}

	@Override
	public HashMap<String, String> idCheckAjax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iJoinDao.idCheckAjax(params);
	}
	
}
