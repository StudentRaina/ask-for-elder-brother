package com.spring.funsking.web.login.service;

import com.spring.funsking.web.login.bean.LoginBean;

public interface ILoginService {

	public LoginBean getUserInfo(LoginBean lb) throws Throwable;

}
