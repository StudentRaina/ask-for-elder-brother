package com.spring.funsking.home.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ISelectGenreDao {

	ArrayList<HashMap<String, String>> selectgenre(HashMap<String, String> params)throws Throwable;

}
