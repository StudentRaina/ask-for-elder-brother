package com.spring.funsking.home.service;

import java.util.HashMap;

public interface IJoinService {

	public String insertJoin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> idCheckAjax(HashMap<String, String> params) throws Throwable;

}
