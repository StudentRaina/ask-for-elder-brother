package com.spring.funsking.intr.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class IntrDao implements IIntrDao{
	@Autowired
	public SqlMapClient sqlMapClient;
	
	
	
	@SuppressWarnings("unchecked")
	@Override  //버스커 첫화면
	public ArrayList<HashMap<String, String>> getBusker(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("Intr.getBusker", params);
	}
	
	@SuppressWarnings("unchecked")
	@Override //버스커 상세보기
	public HashMap<String, String> getBusker2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
	 return (HashMap<String, String>)sqlMapClient.queryForObject("Intr.getBusker2", params);
	}
	
	//버스커 상세보기 파일
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> getBusker3(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("Intr.getBusker3", params);
	}

	//버스커 인서트
	@Override
	public String insertBusker(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		String res = "false";
		
		int sequence = (int)sqlMapClient.queryForObject("Intr.buskerSeq", params);
		
		params.put("sequence", Integer.toString(sequence));
		
		sqlMapClient.startTransaction();
		sqlMapClient.startBatch();
		
		//에러가나면 res는 false로 되서 end트렉젝션함. => 롤백이된다.
		try{
			sqlMapClient.insert("Intr.insertBusker", params);
			sqlMapClient.insert("Intr.insertBusker2", params);
			sqlMapClient.insert("Intr.insertBusker3", params);
		
			sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction();
			
			res = "true";
		} catch (Exception e) {
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
	}


	//paging
	@Override
	public int getBuskerCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("Intr.getBuskerCount", params);
	}
	
	//오디션회차 가져오기
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> audition(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub   
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("Intr.audition", params);
	}

	//오디션 회차별 버스커팀명 가져오기
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> audition2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("Intr.audition2", params);
	}

	//버스커 소개 삭제
	@Override
	public int deleteBusker(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		int res1 = (int)sqlMapClient.delete("Intr.deleteBusker", params);
		int res2 = (int)sqlMapClient.delete("Intr.deleteBusker2", params);
		
		int res= 0;
		res = res1 +res2;
		
		return res;
	
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> GenreBusker(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("Intr.GenreBusker", params);
	}

	//포토 카운트
	@Override
	public int getphotoCount(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (int) sqlMapClient.queryForObject("Intr.getphotoCount", params);
	}

	//포토 첫화면 가져오기
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> photoajax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("Intr.photoajax", params);
	}

	//포토 상세보기
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, String> buskerphoto2(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (HashMap<String, String>)sqlMapClient.queryForObject("Intr.buskerphoto2", params);
	}

	//포토 상세보기 파일
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> buskerphoto3(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>)sqlMapClient.queryForList("Intr.buskerphoto3", params);
	}

	@Override
	public String insertphoto(HashMap<String, String> params) throws Throwable {
		String res = "false";
		
		int seq = (int)sqlMapClient.queryForObject("Intr.photoseq", params);
		
		params.put("seq", Integer.toString(seq));
		
		sqlMapClient.startTransaction();
		//sqlMapClient.startBatch();
		
		//에러가나면 res는 false로 되서 end트렉젝션함. => 롤백이된다.
		try{
			sqlMapClient.insert("Intr.insertphoto", params);
			sqlMapClient.insert("Intr.insertphoto2", params);
			/* sqlMapClient.insert("Intr.insertBusker3", params);*/
		
			//sqlMapClient.executeBatch();
			sqlMapClient.commitTransaction();
			
			res = "true";
		} catch (Exception e) {
			res = "false";
			e.printStackTrace();
		}
		
		sqlMapClient.endTransaction();
		return res;
	}

	//예약된 장소 가져오기 ajax
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<HashMap<String, String>> rsvplaceAjax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return (ArrayList<HashMap<String, String>>) sqlMapClient.queryForList("Intr.rsvplaceAjax", params);
	}

	//버스커 소개 수정
	@Override
	public int updateajax(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		int res1= (int)sqlMapClient.update("Intr.updateajax", params);
		int res2= (int)sqlMapClient.update("Intr.updateajax2", params);
		int res3= (int)sqlMapClient.update("Intr.updateajax3", params);
		 int res = 0;
		 res= res1+res2+res3;
		return res;
	}


}
