package com.spring.funsking.home.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ITestDao {

	HashMap<String, String> getFuser(HashMap<String, String> params) throws Throwable;

	
	ArrayList<HashMap<String, String>> getgu(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, String>> getplace(HashMap<String, String> params) throws Throwable;
}
