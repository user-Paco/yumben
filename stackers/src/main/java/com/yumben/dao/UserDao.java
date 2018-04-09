package com.yumben.dao;


import com.yumben.entity.User;

public interface UserDao  {

	void insertSelective(User entity);

	int count(String phone);

	User query(User entity);
	
}