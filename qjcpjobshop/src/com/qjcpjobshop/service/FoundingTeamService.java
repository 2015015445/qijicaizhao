package com.qjcpjobshop.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.FoundingTeamDao;
import com.qjcpjobshop.entity.FoundingTeam;

@Service
public class FoundingTeamService {
	
	@Resource
	private FoundingTeamDao foundingTeamDao;
	
	public List<FoundingTeam> findCompanyProductByEmail(String email){
		return foundingTeamDao.findCompanyProductByEmail(email);
	}
}
