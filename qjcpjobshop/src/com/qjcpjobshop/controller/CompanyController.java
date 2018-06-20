package com.qjcpjobshop.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
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
		//allcompany
		model.addAttribute("style", 1);
		return "companylist";
	}
	
	@RequestMapping(value="/findcompanybyfield", method=RequestMethod.GET)
	public String findCompanyByField(@RequestParam("field") String field,HttpServletRequest request,HttpSession session,Model model){
		try {
//			String industryfield = new String(request.getParameter("field").getBytes(
//			        "ISO-8859-1"), "utf-8");//其中ISO-8859-1是tomcat默认的编码类型  ,utf-8为项目编码类型
			System.out.println(field);
//			System.out.println(industryfield);
			String pageNum = (String)request.getParameter("pageNum");
			int num = 0;
			if(pageNum ==null || pageNum.equals("")){
				num = 1;
			}else{
				num = Integer.parseInt(pageNum);
			}
			
			List<Company> list = companyService.findCompanyByField(num, PAGESIZE, field);
			
			int count = list.size();
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
			
//			List list = companyService.findAllCompany();
			
			Cookie cookie = (Cookie) session.getAttribute("cookie");
			model.addAttribute("list", list);
			if(cookie!=null){
				model.addAttribute("email", cookie.getName());
			}else{
				model.addAttribute("email", null);
			}
			
			
			//byfield
			model.addAttribute("style", 2);
			return "companylist";
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "companylist";
		}
	}
	
	
	@RequestMapping(value="/findcompanybylocation", method=RequestMethod.GET)
	public String findCompanyByLocation(@RequestParam("field") String field,HttpServletRequest request,HttpSession session,Model model){
		try {
//			String industryfield = new String(request.getParameter("field").getBytes(
//			        "ISO-8859-1"), "utf-8");//其中ISO-8859-1是tomcat默认的编码类型  ,utf-8为项目编码类型
			System.out.println(field);
//			System.out.println(industryfield);
			String pageNum = (String)request.getParameter("pageNum");
			int num = 0;
			if(pageNum ==null || pageNum.equals("")){
				num = 1;
			}else{
				num = Integer.parseInt(pageNum);
			}
			
			List<Company> list = companyService.findCompanyByLocation(num, PAGESIZE, field);
			
			int count = list.size();
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
			
//			List list = companyService.findAllCompany();
			
			Cookie cookie = (Cookie) session.getAttribute("cookie");
			model.addAttribute("list", list);
			if(cookie!=null){
				model.addAttribute("email", cookie.getName());
			}else{
				model.addAttribute("email", null);
			}
			
			//bylocation
			model.addAttribute("style", 3);
			return "companylist";
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "companylist";
		}
	}
	
	@RequestMapping(value="/findcompanybystage", method=RequestMethod.GET)
	public String findCompanyByStage(@RequestParam("field") String field,HttpServletRequest request,HttpSession session,Model model){
		try {
//			String industryfield = new String(request.getParameter("field").getBytes(
//			        "ISO-8859-1"), "utf-8");//其中ISO-8859-1是tomcat默认的编码类型  ,utf-8为项目编码类型
			System.out.println(field);
//			System.out.println(industryfield);
			String pageNum = (String)request.getParameter("pageNum");
			int num = 0;
			if(pageNum ==null || pageNum.equals("")){
				num = 1;
			}else{
				num = Integer.parseInt(pageNum);
			}
			
			List<Company> list = companyService.findCompanyByStage(num, PAGESIZE, field);
			
			int count = list.size();
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
			
//			List list = companyService.findAllCompany();
			
			Cookie cookie = (Cookie) session.getAttribute("cookie");
			model.addAttribute("list", list);
			if(cookie!=null){
				model.addAttribute("email", cookie.getName());
			}else{
				model.addAttribute("email", null);
			}
			
			//bystage
			model.addAttribute("style", 4);
			return "companylist";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "companylist";
		}
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
	
	@RequestMapping(value="/mycompany", method=RequestMethod.GET)
	public String mycompany(Model model,@RequestParam("email") String email){
		System.out.println("进入CompanyController");
		
		Company c = companyService.findCompanyByEmail(email);
		List<CompanyProduct> companyproductlist = companyProductService.findCompanyProductByEmail(email);
		List<FoundingTeam> foundingteamlist = foundingTeamService.findCompanyProductByEmail(email);
		List<Position> positionlist = positionService.findPositionByEmail(email);
		model.addAttribute("email", email);
		model.addAttribute("company", c);
		model.addAttribute("productlist",companyproductlist);
		model.addAttribute("foundingteamlist",foundingteamlist );
		model.addAttribute("positionlist",positionlist);
		for(CompanyProduct pruduct:companyproductlist){
			System.out.println(pruduct.getName());
		}
		
//		System.out.println(c.getName());
		return "mycompany";
	}
	
	@RequestMapping(value="/updatemycompany", method=RequestMethod.POST)
	public String updatemycompany(@RequestParam("email") String email,@RequestParam("name") String name,@RequestParam("briefintroduction") String briefintroduction,@RequestParam("id") int id){
		System.out.println("进入CompanyController，并修改公司信息");
		companyService.updateMyCompany(name, briefintroduction, id);
		
		System.out.println("即将跳转出CompanyController");
		return "redirect:/company/mycompany?email="+email;
	}
	
	@RequestMapping(value="/updateproduct", method=RequestMethod.POST)
	public String updateproduct(@RequestParam("email") String email,@RequestParam("name") String name,@RequestParam("url") String url,@RequestParam("introduction") String introduction,@RequestParam("id") int id){
		System.out.println("进入CompanyController，并修改产品信息");
		companyService.updateProduct(name,url,introduction,id);
		
		System.out.println("即将跳转出CompanyController");
		return "redirect:/company/mycompany?email="+email;
	}
	
	@RequestMapping(value="/updatecompanyintroduction", method=RequestMethod.POST)
	public String updatecompanyintroduction(@RequestParam("email") String email,@RequestParam("detailintroduction") String detailintroduction,@RequestParam("id") int id){
		System.out.println("进入CompanyController，并修改公司介绍");
		companyService.updatecompanyintroduction(detailintroduction,id);
		
		System.out.println("即将跳转出CompanyController");
		return "redirect:/company/mycompany?email="+email;
	}
	
	@RequestMapping(value="/updatemycompany2", method=RequestMethod.POST)
	public String updatemycompany2(@RequestParam("location") String location,@RequestParam("industryfield") String industryfield,@RequestParam("scale") String scale,@RequestParam("url") String url,@RequestParam("email") String email,@RequestParam("id") int id){
		System.out.println("进入CompanyController，并修改公司信息");
		companyService.updateMyCompany2(location,industryfield,scale,url,id);
		
		System.out.println("即将跳转出CompanyController");
		return "redirect:/company/mycompany?email="+email;
	}
	
	@RequestMapping(value="/updatemycompany3", method=RequestMethod.POST)
	public String updatemycompany3(@RequestParam("id") int id,@RequestParam("email") String email,@RequestParam("thefinancingstage") String thefinancingstage){
		System.out.println("进入CompanyController，并修改公司信息");
		companyService.updateMyCompany3(thefinancingstage, id);
		
		System.out.println("即将跳转出CompanyController");
		return "redirect:/company/mycompany?email="+email;
	}
	
	@RequestMapping(value="/updatefoundingteam", method=RequestMethod.POST)
	public String updatefoundingteam(@RequestParam("id") int id,@RequestParam("email") String email,@RequestParam("name") String name,@RequestParam("positionnow") String positionnow,@RequestParam("weibourl") String weibourl,@RequestParam("introduction") String introduction){
		System.out.println("进入CompanyController，并修改创始团队信息");
		companyService.updateFoundingTeam(name,positionnow,weibourl,introduction, id);
		
		System.out.println("即将跳转出CompanyController");
		return "redirect:/company/mycompany?email="+email;
	}
	
	@RequestMapping(value="/deleteproduct", method=RequestMethod.POST)
	public String deleteproduct(@RequestParam("id") int id,@RequestParam("email") String email){
		System.out.println("进入CompanyController，并删除产品信息");
		companyService.deleteProduct(id);
		
		System.out.println("即将跳转出CompanyController");
		return "redirect:/company/mycompany?email="+email;
	}
}
