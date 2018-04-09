package com.yumben.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yumben.dao.UserDao;
import com.yumben.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;

	public void add(User entity) {
		userDao.insertSelective(entity);
	}

	public int count(String phone) {
		return userDao.count(phone);
	}

	public User query(User entity) {
		return userDao.query(entity);
	}

}
