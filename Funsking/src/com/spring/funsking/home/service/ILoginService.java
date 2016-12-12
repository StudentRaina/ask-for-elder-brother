package com.spring.funsking.home.service;

import java.util.HashMap;

public interface ILoginService {
	
	public HashMap<String, String> getFuser(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getIdview1(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getIdview2(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getPasswordview1(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getPasswordview2(HashMap<String, String> params) throws Throwable;
}
