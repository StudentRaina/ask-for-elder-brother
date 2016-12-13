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

	int deleteBusker(HashMap<String, String> params)throws Throwable; //버스커 소개 삭제

	ArrayList<HashMap<String, String>> GenreBusker(HashMap<String, String> params)throws Throwable; //버스커 장르 가져오기;

	int updateajax(HashMap<String, String> params)throws Throwable; // 버스커 소개 수정
	
	int getphotoCount(HashMap<String, String> params)throws Throwable; //photo count paging

	ArrayList<HashMap<String, String>> photoajax(HashMap<String, String> params)throws Throwable; //포토 첫화면 리스트

	HashMap<String, String> buskerphoto2(HashMap<String, String> params)throws Throwable; //포토 상세보기

	ArrayList<HashMap<String, String>> buskerphoto3(HashMap<String, String> params) throws Throwable; //포토 상세보기 파일

	String insertphoto(HashMap<String, String> params) throws Throwable; // 포토 인서트

	ArrayList<HashMap<String, String>> rsvplaceAjax(HashMap<String, String> params) throws Throwable; // 예약된 장소 가져오기

	
	
}
