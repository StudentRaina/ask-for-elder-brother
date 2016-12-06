package com.spring.funsking.home.dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class JoinDao implements IJoinDao {
	@Autowired
	public SqlMapClient sqlMapClient;

	@Override
	public String insertJoin(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res ="false";
		
		sqlMapClient.startTransaction();
		//Transaction start
		sqlMapClient.startBatch();
		
		try{
			sqlMapClient.insert("join.insertJoin",params);
			
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction();
			//적용	
			res="true";
			
		}catch(Exception e){
			res="false";
			e.printStackTrace();
		}
		sqlMapClient.endTransaction();

		return res;
	
	}//회원가입

	@Override
	public HashMap<String, String> idCheckAjax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>) sqlMapClient.queryForObject("join.idCheckAjax",params);
	}//아이디 중복

}
