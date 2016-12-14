package com.spring.funsking.home.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.IAuditionDao;

@Service
public class AuditionService implements IAuditionService {
	
	@Autowired
	public IAuditionDao iAuditionDao;

	@Override
	public String insertAuditionJoin(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAuditionDao.insertAuditionJoin(params);
	}
}
