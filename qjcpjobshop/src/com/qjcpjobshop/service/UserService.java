package com.qjcpjobshop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.UserDao;
import com.qjcpjobshop.entity.Userfindjob;

@Service
public class UserService {
	@Resource
	private UserDao userDao;
	
	public void regist(Userfindjob user) {
		userDao.insert(user);
	}
	
	public Userfindjob findByName(String name){
		return userDao.findByName(name);
	}
	
	public Userfindjob login(String name,String password) {
		return userDao.selectByUsername(name, password);
	}
}
