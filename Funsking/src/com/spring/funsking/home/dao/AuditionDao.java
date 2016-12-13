package com.spring.funsking.home.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class AuditionDao implements IAuditionDao {

	@Autowired
	public SqlMapClient sqlMapClient;
}
