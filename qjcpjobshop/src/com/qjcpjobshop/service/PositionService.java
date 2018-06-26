package com.qjcpjobshop.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.PositionDao;
import com.qjcpjobshop.dao.UserDao;
import com.qjcpjobshop.entity.Page;
import com.qjcpjobshop.entity.Position;

@Service
public class PositionService {
	@Resource
	private PositionDao positionDao;
	
	public void addPosition(Position position){
		positionDao.insert(position);
	}
	
	public int findCompanypositionCount(String id){
		int count = positionDao.findCompanypositionCount(id);
		return count;
	}
	

	public List<Position> findPositionByEmail(String email){
		return positionDao.findPositionByEmail(email);
	}
	
	public List<Position> findPositionById(int id1){
		return positionDao.findPositionById(id1);
	}
	
	public Page findPositionByPage(int num, int size){
		return positionDao.findPositionByPage(num, size);
	}
	
	public List<Position> findPosition(int size){
		return positionDao.findPosition(size);
	}
	
	public void useless(int id,int size){
		positionDao.useless(id, size);
	}
	
	public void delete(int id){
		positionDao.delete(id);
	}
	
	public Page searchPosition(int num, int size, String name) {
		return positionDao.searchPosition(num, size, name);
	}
	
	public Page searchPositionByType(int num, int size, String name) {
		return positionDao.searchPositionByType(num, size, name);
	}
	
	public Position findJobDetail(int id) {
		return positionDao.findJobDetail(id);
	}
}
