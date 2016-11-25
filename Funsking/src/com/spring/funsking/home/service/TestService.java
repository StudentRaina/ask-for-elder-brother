package com.spring.funsking.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.ITestDao;

@Service // <= anotation ��釉�由ъ�ㅻ�쇨� �멸�����寃�.
public class TestService implements ITestService {
	@Autowired
	public ITestDao iTestDao;	




}
