package com.qjcpjobshop.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.UserDao;
import com.qjcpjobshop.entity.Resume;
import com.qjcpjobshop.entity.Usercompany;
import com.qjcpjobshop.entity.Userfindjob;

@Service
public class UserService {
	@Resource
	private UserDao userDao;
	

	public void registUser(Userfindjob user) {
		userDao.insertUser(user);
	}
	public void registCompany(Usercompany c){
		userDao.insertCompany(c);
	}
	
	public Userfindjob findByUserName(String name){
		return userDao.findByUserName(name);
	}
	public Usercompany findByCompanyName(String name){
		return userDao.findByCompanyName(name);
	}
	
	public Userfindjob login(String name,String password) {
		return userDao.selectByUsername(name, password);
	}
}
