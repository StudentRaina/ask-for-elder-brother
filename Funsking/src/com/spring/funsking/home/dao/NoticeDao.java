package com.spring.funsking.home.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class NoticeDao implements INoticeDao{
	@Autowired
	public SqlMapClient sqlMapClient;

	@Override
	public ArrayList<HashMap<String, String>> getTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("notice.getTest", params);
	}

	@Override
	public int getTestCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("notice.getTestCount", params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> getTestCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>)
				sqlMapClient.queryForObject("notice.getTestCon", params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getFileCon(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("notice.getFileCon", params);
	}

	@Override
	public String insertTest(HashMap<String, String> params) throws Throwable {
		String res = "false";
		
		sqlMapClient.startTransaction();
		sqlMapClient.startBatch(); // batch를 적용 안했을 때 oracle의 작업을 늘린다.
									//하나씩 쿼리를 날리는데
									// startBatch와 executeBatch의 사이의 쿼리를 묶어서 날려준다.
									//데이터가 1000건이상이 되어갈때는 차이가 난다.
									// 인덱스를 제대로 쓰는 경우가 아니면 batch를 거는 의미가 없음
									
									
		try{
			sqlMapClient.insert("notice.insertTest", params);
			sqlMapClient.insert("notice.insertFile", params);
			
			sqlMapClient.executeBatch(); 
			sqlMapClient.commitTransaction(); // 적용
			
			res = "true";
		} catch (Exception e){
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		
		return res;
		
	}

	@Override
	public int DeleteTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		int res1 = (int)sqlMapClient.delete("notice.deleteTest", params);
		int res2 = (int)sqlMapClient.delete("notice.deleteFile", params);
		
		int res = 0;
		
		res = res1 + res2;
		
		return res;
	}
	
	@Override
	public int updateTest(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		int res1 = sqlMapClient.update("notice.updateTest", params);
		int res2 = sqlMapClient.update("notice.updateFile", params);
		
		int res = 0;
		
		res = res1 + res2;
		
		return res;
	}

}
