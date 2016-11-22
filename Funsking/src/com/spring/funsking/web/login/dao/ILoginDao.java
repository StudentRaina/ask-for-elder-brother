package com.spring.funsking.web.login.dao;

import com.spring.funsking.web.login.bean.LoginBean;

public interface ILoginDao {

	public LoginBean getUserInfo(LoginBean lb) throws Throwable;

}
