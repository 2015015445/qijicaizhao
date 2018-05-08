package com.qjcpjobshop.service;

import javax.annotation.Resource;

import com.qjcpjobshop.dao.PositionDao;
import com.qjcpjobshop.dao.UserDao;
import com.qjcpjobshop.entity.Position;

public class PositionService {
	@Resource
	private PositionDao positionDao;
	
	public void addPosition(Position position){
		positionDao.insert(position);
	}
	
}
