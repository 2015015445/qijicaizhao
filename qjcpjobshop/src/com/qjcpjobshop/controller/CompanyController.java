package com.qjcpjobshop.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qjcpjobshop.entity.Company;
import com.qjcpjobshop.entity.CompanyProduct;
import com.qjcpjobshop.entity.FoundingTeam;
import com.qjcpjobshop.entity.Page;
import com.qjcpjobshop.entity.Page1;
import com.qjcpjobshop.entity.Position;
import com.qjcpjobshop.service.CompanyProductService;
import com.qjcpjobshop.service.CompanyService;
import com.qjcpjobshop.service.FoundingTeamService;
import com.qjcpjobshop.service.PositionService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Resource
	private CompanyService companyService;
	@Resource
	private CompanyProductService companyProductService;
	@Resource
	private FoundingTeamService foundingTeamService;
	@Resource
	private PositionService positionService;
	
	private final int PAGESIZE = 6;
			
	@RequestMapping(value="/findallcompany", method=RequestMethod.GET)
	public String findAllCompany(Model model,HttpSession session,HttpServletRequest request,HttpServletResponse response){
		
		String pageNum = (String)request.getParameter("pageNum");
		int num = 0;
		if(pageNum ==null || pageNum.equals("")){
			num = 1;
		}else{
			num = Integer.parseInt(pageNum);
		}
		int count = companyService.findCount();
		List<Company> list = companyService.findCompanyByPage(num,PAGESIZE);
		Page<Company> p = new Page<Company>(num,PAGESIZE);
		p.setList(list);
		p.setTotalCount(count);
		session.setAttribute("count", p.getTotalPageNum());
		
		List pagelist1 = new ArrayList();
		for (int i = 1; i < p.getTotalPageNum()+1; i++) {
			pagelist1.add(i);
		}
		model.addAttribute("pagelist1", pagelist1);
		model.addAttribute("page", p);
		model.addAttribute("list", list);
		
//		List list = companyService.findAllCompany();
		
		Cookie cookie = (Cookie) session.getAttribute("cookie");
		model.addAttribute("list", list);
		if(cookie!=null){
			model.addAttribute("email", cookie.getName());
		}else{
			model.addAttribute("email", null);
		}
		
		return "companylist";
	}
	
	@RequestMapping(value="/companydetail", method=RequestMethod.GET)
	public String companydetail(Model model,@RequestParam("email") String email,@RequestParam("id1") String id1){
		Company c = companyService.findCompanyByEmail(email);
		List<CompanyProduct> companyproductlist = companyProductService.findCompanyProductByEmail(email);
		List<FoundingTeam> foundingteamlist = foundingTeamService.findCompanyProductByEmail(email);
		List<Position> positionlist = positionService.findPositionByEmail(email);
		model.addAttribute("company", c);
		model.addAttribute("productlist",companyproductlist);
		model.addAttribute("foundingteamlist",foundingteamlist );
		model.addAttribute("positionlist",positionlist);
		model.addAttribute("id1", id1);
//		for(CompanyProduct pruduct:companyproductlist){
//			System.out.println(pruduct.getImage());
//		}
		
//		System.out.println(c.getName());
		return "companydetail";
	}
}
