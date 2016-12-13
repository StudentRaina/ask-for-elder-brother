package com.spring.funsking.home.dao;

import java.util.HashMap;

public interface IJoinDao {

	public String insertJoin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> idCheckAjax(HashMap<String, String> params) throws Throwable;

}
