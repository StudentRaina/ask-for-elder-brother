package com.spring.funsking.home.dao;

import java.util.HashMap;

public interface ILoginDao {

	HashMap<String, String> getFuser(HashMap<String, String> params) throws Throwable;
}
