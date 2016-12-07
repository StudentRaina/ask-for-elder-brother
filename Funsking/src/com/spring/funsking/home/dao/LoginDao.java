package com.spring.funsking.home.dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class LoginDao implements ILoginDao {
	@Autowired
	public SqlMapClient sqlMapClient;
	
	@Override
	public HashMap<String, String> getFuser(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>)
				sqlMapClient.queryForObject("login.getFuser", params);
	}
}
