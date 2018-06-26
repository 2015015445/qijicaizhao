package com.qjcpjobshop.controller;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kang.CompanySize;
import com.kang.UCF;
import com.kang.degree;
import com.qjcpjobshop.entity.Company;
import com.qjcpjobshop.entity.Position;
import com.qjcpjobshop.service.CompanyService;
import com.qjcpjobshop.service.PositionService;

@Controller
public class HtoForumController {

	@Resource
	private CompanyService companyService;
	
	@Resource
	private PositionService positionService;
	
	@RequestMapping(value="/htofroum", method=RequestMethod.POST)
	public String htoFroum(@RequestParam("age") int age,@RequestParam("size") int size,
			@RequestParam("salary") int salary,@RequestParam("degree") int degree,
			@RequestParam("gender") int gender, Model model) {
		System.out.println(size);
		UCF ucf = new UCF();
		CompanySize companySize = new CompanySize();
		degree dg = new degree();
		String companySizeMsg = companySize.suanfa(age, size, salary, degree, gender, 1);
		String degreeMsg = dg.suanfa(age, size, salary, degree, gender, 1);
		String UCFMsg = ucf.suanfa(age, size, salary, degree, gender, 1);
		if(companySizeMsg.equals("1")) {
			companySizeMsg = "1-50人";
		}else if(companySizeMsg.equals("2")) {
			companySizeMsg = "50-100人";
		}else if(companySizeMsg.equals("3")) {
			companySizeMsg = "100-300人";
		}else if(companySizeMsg.equals("4")) {
			companySizeMsg = "300-500人";
		}else if(companySizeMsg.equals("5")) {
			companySizeMsg = "500-1000人";
		}else if(companySizeMsg.equals("6")) {
			companySizeMsg = "1000-10000人";
		}else if(companySizeMsg.equals("7")) {
			companySizeMsg = "10000人以上";
		}
		List cpl = new ArrayList();
		List l = companyService.findCompanyBySize(companySizeMsg);
		List<Position> l2 = new ArrayList<Position>();
		Iterator i = l.iterator();
		while(i.hasNext()) {
			Company company = (Company) i.next();
			List<Position> l1 = positionService.findPositionByType(UCFMsg, company.getEmail());
			l2.addAll(l1);
		}
		Iterator i1 = l2.iterator();
		while(i1.hasNext()){
			Position pos = (Position) i1.next();
			String email = pos.getEmail();
			Company cp = companyService.findCompanyByEmail(email);
			cpl.add(cp);
		}
		model.addAttribute("company", cpl);
		model.addAttribute("msg1",companySizeMsg);
		model.addAttribute("msg2",UCFMsg);
		model.addAttribute("msg3", degreeMsg);
		model.addAttribute("yvcelist",l2);
		Position p = (Position) l2.get(0);
		System.out.println(p.getName());
		return "yvcejieguo";
	}
}
