package com.spring.funsking.home.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface INoticeService {

	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable;

	public int getTestCount(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getTestCon(HashMap<String, String> params) throws Throwable;

	public ArrayList<HashMap<String, String>> getFileCon(HashMap<String, String> params) throws Throwable;

	public String insertTest(HashMap<String, String> params) throws Throwable;

	public int deleteTest(HashMap<String, String> params) throws Throwable;

	public int updateTest(HashMap<String, String> params) throws Throwable;



}
