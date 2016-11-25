package com.spring.funsking.web.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.web.login.bean.LoginBean;
import com.spring.funsking.web.login.dao.ILoginDao;

@Service
public class LoginService implements ILoginService {
	
	@Autowired
	public ILoginDao iLoginDao;

	@Override
	public LoginBean getUserInfo(LoginBean lb) throws Throwable {
		return iLoginDao.getUserInfo(lb);
	}

}
