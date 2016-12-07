package com.spring.funsking.home.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class TestDao implements ITestDao {
	@Autowired
	public SqlMapClient sqlMapClient;

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getgu(HashMap<String, String> params) throws Throwable {
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("test.getgu",params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getplace(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("test.getplace",params);
	}
 
}
