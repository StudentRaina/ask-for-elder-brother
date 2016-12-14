package com.spring.funsking.home.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.funsking.home.dao.ISelectGenreDao;

@Service
public class SelectGenreService implements ISelectGenreService{
	@Autowired
	public ISelectGenreDao iSelectGenreDao;

	@Override
	public ArrayList<HashMap<String, String>> selectgenre(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iSelectGenreDao.selectgenre(params);
	}
}
