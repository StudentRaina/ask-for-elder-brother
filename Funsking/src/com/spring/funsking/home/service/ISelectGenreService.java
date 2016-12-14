package com.spring.funsking.home.service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ISelectGenreService {

	ArrayList<HashMap<String, String>> selectgenre(HashMap<String, String> params) throws Throwable;

}
