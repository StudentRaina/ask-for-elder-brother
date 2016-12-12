package com.spring.funsking.intr.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface IIntrDao {

	ArrayList<HashMap<String, String>> getBusker(HashMap<String, String> params) throws Throwable; //버스커 첫화면

	HashMap<String, String> getBusker2(HashMap<String, String> params) throws Throwable; // 버스커 상세보기

	ArrayList<HashMap<String, String>> getBusker3(HashMap<String, String> params) throws Throwable; //버스커 상세보기 파일

	String insertBusker(HashMap<String, String> params) throws Throwable; //버스커 insert(버스커 추가)

	/*String insertBusker2(HashMap<String, String> params) throws Throwable; //버스커 insert(파일 추가)*/
	
	int getBuskerCount(HashMap<String, String> params) throws Throwable; //paging

	ArrayList<HashMap<String, String>> audition(HashMap<String, String> params) throws Throwable; //오디션 회차 가져오기

	ArrayList<HashMap<String, String>> audition2(HashMap<String, String> params) throws Throwable; // 오디션 회차별 버스커팀명 가져오기

	/*int buskerSeq(HashMap<String, String> params)throws Throwable; //시퀀스 */
}
