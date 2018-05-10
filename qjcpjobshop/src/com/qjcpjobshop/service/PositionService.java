package com.qjcpjobshop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.PositionDao;
import com.qjcpjobshop.dao.UserDao;
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
}
