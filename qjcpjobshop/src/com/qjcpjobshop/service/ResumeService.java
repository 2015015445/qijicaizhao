package com.qjcpjobshop.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.qjcpjobshop.dao.ResumeDao;
import com.qjcpjobshop.entity.Resume;

@Service
public class ResumeService {

	@Resource
	private ResumeDao resumeDao;
	
	public Resume findR(String name) {
		return resumeDao.findR(name);
	}
	public void savep(Resume p, HttpSession session) {
		resumeDao.savep(p, session);
	}
}
