package com.spring.funsking.home.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ITestDao {

	ArrayList<HashMap<String, String>> getgu(HashMap<String, String> params) throws Throwable;
}
