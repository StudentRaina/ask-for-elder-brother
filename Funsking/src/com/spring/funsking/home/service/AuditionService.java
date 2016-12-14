package com.spring.funsking.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.IAuditionDao;

@Service
public class AuditionService implements IAuditionService {
	
	@Autowired
	public IAuditionDao iAuditionDao;
}
