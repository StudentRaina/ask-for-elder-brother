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


	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getplace3(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("test.getplace3",params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> reflashplace(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("test.getreflashplace",params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> genre(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("test.getgenre",params);
	}

	@Override
	public String insertrsv(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
			String res="false";
		sqlMapClient.startTransaction();
		//트렌젝션 시작한다
		sqlMapClient.startBatch();
		try{
			sqlMapClient.insert("test.insertrsv",params);
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction();
			//적용해줌.
			res="true";
		}catch(Exception e){
			res="false";
			e.printStackTrace();
		}
		sqlMapClient.endTransaction();
		//트렌젝션 끝냄  적용안되서 에러 후... 롤백됨.
		return res;
	}

	public String insertsche(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
			String res="false";
		sqlMapClient.startTransaction();
		//트렌젝션 시작한다
		sqlMapClient.startBatch();
		try{
			sqlMapClient.insert("test.insertsche",params);
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction();
			//적용해줌.
			res="true";
		}catch(Exception e){
			res="false";
			e.printStackTrace();
		}
		sqlMapClient.endTransaction();
		//트렌젝션 끝냄  적용안되서 에러 후... 롤백됨.
		return res;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> rsvall(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)
				sqlMapClient.queryForList("test.getrsvall",params);
	}

}
