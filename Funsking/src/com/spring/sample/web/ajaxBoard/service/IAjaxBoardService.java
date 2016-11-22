package com.spring.sample.web.ajaxBoard.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.sample.web.ajaxBoard.bean.AjaxBoardBean;

public interface IAjaxBoardService {

	public void insertBoard(AjaxBoardBean abb) throws Throwable;

	public int getBoardCount(HashMap<String, Object> params) throws Throwable;
	
	public ArrayList<AjaxBoardBean> getBoardList(HashMap<String, Object> params) throws Throwable;

	public AjaxBoardBean getBoardDetail(String boardNo) throws Throwable;

	public void updateHitCnt(String boardNo) throws Throwable;

	public String checkPass(AjaxBoardBean abb) throws Throwable;

	public void updateBoard(AjaxBoardBean abb) throws Throwable;

	public void deleteBoard(AjaxBoardBean abb) throws Throwable;

}
