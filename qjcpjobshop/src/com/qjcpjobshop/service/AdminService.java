package com.qjcpjobshop.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.AdminDao;
import com.qjcpjobshop.dao.PositionDao;

@Service
public class AdminService {
	
	@Resource
	private AdminDao adminDao;
	
	public List userfindjobList(){
		return adminDao.userfindjoblist();
	}
	public List usercompanyList(){
		return adminDao.usercompanylist();
	}
	
	public List finduserfindjobList(String email){
		return adminDao.finduserfindjoblist(email);
	}
	public List findusercompanyList(String email){
		return adminDao.findusercompanylist(email);
	}
	
	public void deleteuser(String email){
		adminDao.deleteUser(email);
	}
	
}
