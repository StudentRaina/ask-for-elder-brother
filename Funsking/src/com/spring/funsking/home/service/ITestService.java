package com.spring.funsking.home.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ITestService {

	ArrayList<HashMap<String, String>> getgu(HashMap<String, String> params) throws Throwable ;

	ArrayList<HashMap<String, String>> getplace(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, String>> getplace3(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, String>> reflashplace(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, String>> genre(HashMap<String, String> params) throws Throwable;

	String insertrsv(HashMap<String, String> params) throws Throwable;

	String insertsche(HashMap<String, String> params) throws Throwable;

	ArrayList<HashMap<String, String>> rsvall(HashMap<String, String> params) throws Throwable;

}
