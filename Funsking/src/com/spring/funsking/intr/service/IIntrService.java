package com.spring.funsking.intr.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface IIntrService {


	ArrayList<HashMap<String, String>> getBusker(HashMap<String, String> params)throws Throwable; //버스커 첫화면

	HashMap<String, String> getBusker2(HashMap<String, String> params) throws Throwable; // 버스커 상세보기

	ArrayList<HashMap<String, String>> getBusker3(HashMap<String, String> params) throws Throwable; //버스커  파일 상세보기 

	String insertBusker(HashMap<String, String> params) throws Throwable; // 버스커 정보 

	/*String insertBusker2(HashMap<String, String> params)throws Throwable; //버스커 파일 업로드
*/
	int getBuskerCount(HashMap<String, String> params)throws Throwable; //busker count  paging

	ArrayList<HashMap<String, String>> audition(HashMap<String, String> params)throws Throwable; //오디션회차번호 드랍다운리스트 ;

	ArrayList<HashMap<String, String>> audition2(HashMap<String, String> params)throws Throwable; //오디션 회차번호에 따른 버스커팀명
	
	/*int buskerSeq(HashMap<String, String> params)throws Throwable; //시퀀스가져오기*/
}
