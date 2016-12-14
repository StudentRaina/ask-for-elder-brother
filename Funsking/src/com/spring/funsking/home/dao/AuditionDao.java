package com.spring.funsking.home.dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class AuditionDao implements IAuditionDao {

	@Autowired
	public SqlMapClient sqlMapClient;

	@Override
	public String insertAuditionJoin(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res ="false";
		
		sqlMapClient.startTransaction();
		//Transaction start
		sqlMapClient.startBatch();
		
		try{
			sqlMapClient.insert("auditionApply.insertAuditionApply",params);
			
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
	}
}
