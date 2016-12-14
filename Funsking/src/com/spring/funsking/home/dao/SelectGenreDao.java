package com.spring.funsking.home.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class SelectGenreDao implements ISelectGenreDao{
	@Autowired
	public SqlMapClient sqlMapClient;

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> selectgenre(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("auditionApply.selectgenre", params);
	}
}
