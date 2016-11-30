package com.spring.funsking.home.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ITestService {

	HashMap<String, String> getFuser(HashMap<String, String> params) throws Throwable;
	ArrayList<HashMap<String, String>> getgu(HashMap<String, String> params) throws Throwable ;

	ArrayList<HashMap<String, String>> getplace(HashMap<String, String> params) throws Throwable;
}
