package com.qjcpjobshop.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qjcpjobshop.entity.Company;
import com.qjcpjobshop.entity.FoundingTeam;
import com.qjcpjobshop.entity.Page;
import com.qjcpjobshop.entity.Position;
import com.qjcpjobshop.entity.PositionAndCompany;
import com.qjcpjobshop.entity.ResumeReceived;
import com.qjcpjobshop.entity.Userfindjob;
import com.qjcpjobshop.service.CompanyService;
import com.qjcpjobshop.service.FoundingTeamService;
import com.qjcpjobshop.service.PositionService;
import com.qjcpjobshop.service.ResumeService;
import com.qjcpjobshop.service.UserService;

@Controller
@RequestMapping("/position")
public class PositionController extends HttpServlet {
	
	private final int PAGESIZE = 6;
	
	@Resource
	private PositionService positionService;
	@Resource
	private UserService userService;
	
	@Resource
	private CompanyService companyService;
	
	@Resource
	private FoundingTeamService foundingTeamService;
	
	@Resource
	private ResumeService resumeService;
	@RequestMapping(value="/addposition1", method=RequestMethod.POST)
	public String addPosition1(@RequestParam("id") String id, @RequestParam(value="type",required=false) String type,@RequestParam("name") String name,@RequestParam("minSalary") String minSalary,@RequestParam("maxSalary") String maxSalary,@RequestParam("city") String city,@RequestParam(value="experience",required=false) String experience,@RequestParam(value="degree",required=false) String degree,@RequestParam("tempation") String tempation,@RequestParam(value="description",required=false) String description,@RequestParam(value="address",required=false) String address,@RequestParam(value="email",required=false) String email,@RequestParam(value="jobNature",required=false) String jobNature,HttpSession session){
		try{
			Position p = new Position();
//			int count = positionService.findCompanypositionCount(id)+1;
//			p.setId(id);
//			p.setType(type);
			
//			System.out.println("type"+type);
			
			p.setJobNature(jobNature);
			p.setEmail(email);
			p.setName(name);
			p.setMinSalary(minSalary);
			p.setMaxSalary(maxSalary);
			p.setCity(city);
			p.setExperience(experience);
			p.setDegree(degree);
			p.setTempation(tempation);
			p.setDescription(description);
			p.setAddress(address);
			p.setSize(1);
			positionService.addPosition(p);
			System.out.println("insert OK");
			JOptionPane.showMessageDialog(null,"添加职位成功!", "系统提示", JOptionPane.INFORMATION_MESSAGE);
			
//			Object[] options = {"继续"}; 
//			JOptionPane.showOptionDialog(null, "添加成功，点击以继续", "提示", 
//			JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE, 
//			null, options, options[0]);
			
			return "redirect:/position/index?pageNum=1";
		}catch(Exception e){
			e.printStackTrace();
			
			Object[] options = {"继续"}; 
			JOptionPane.showOptionDialog(null, "添加失败，请重新填写", "提示", 
			JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE, 
			null, options, options[0]);
			
			return "create";
		}
		
	}
	
	@RequestMapping(value="/index")
	public String findPositionByPage(@RequestParam("pageNum") int num, HttpSession session,Model model){
		session.removeAttribute("searchpositionpage");
		session.removeAttribute("positionpage");
		session.removeAttribute("searchpositiontypepage");
		Page p = this.positionService.findPositionByPage(num, PAGESIZE);
		
		if(p != null) {
			session.setAttribute("positionpage", p);
			List li = p.getList();
			List cpl = new ArrayList();
			Iterator i = li.iterator();
			while(i.hasNext()){
				Position pos = (Position) i.next();
				String email = pos.getEmail();
				Company cp = companyService.findCompanyByEmail(email);
				cpl.add(cp);
			}
			session.setAttribute("company", cpl);
			if(session.getAttribute("email") == null) {
				session.setAttribute("email", "123");
			}
		}
		
		model.addAttribute("email", userService.email);
		return "index";
	}
	
	@RequestMapping(value="/findposition")
	public String findUsefulPosition(HttpServletRequest request,Model model){
		int size = Integer.parseInt(request.getParameter("size"));
		System.out.println("size值:"+size);
		List<Position> list = positionService.findPosition(size);
		
		String id = request.getParameter("id");
		
		model.addAttribute("id", id);
		model.addAttribute("list", list);
		return "myposition1";
	}
	
	@RequestMapping(value="/findposition2")
	public String findPosition2(HttpServletRequest request,Model model){
		int size = Integer.parseInt(request.getParameter("size"));
		System.out.println("size值:"+size);
		List<Position> list = positionService.findPosition(size);
		
		String id = request.getParameter("id");
		
		model.addAttribute("id", id);
		
		model.addAttribute("list", list);
		return "myposition2";
	}
	
	@RequestMapping(value="/positiondetail")
	public String positionDetail(HttpServletRequest request,Model model){
		String email = request.getParameter("email");
		model.addAttribute("email", email);
		
		int id1 = Integer.parseInt(request.getParameter("id1"));
		Position p = positionService.findPositionById(id1).get(0);
		model.addAttribute("p", p);
		
		String id = request.getParameter("id");
		Company c = companyService.findCompanyByEmail(id);
		model.addAttribute("c", c);
		
		return "jobdetail2";
		
	}
	
	@RequestMapping(value="/useless")
	public String useless(HttpServletRequest request,Model model){
		int size = 0;
		int id = Integer.parseInt(request.getParameter("id"));
		positionService.useless(id, size);
		
		return "redirect:/position/findposition?size=1";
	}
	
	@RequestMapping(value="/deleteposition")
	public String delete(HttpServletRequest request,Model model){
		int id = Integer.parseInt(request.getParameter("id"));
		positionService.delete(id);
		
		return "redirect:/position/findposition2?size=0";
	}
	
//	@RequestMapping(value="/search", method=RequestMethod.POST)
//	public String searchPositions(@RequestParam("kd") String name, HttpSession session){
//			Page p = this.positionService.searchPosition(1, 12,name);
//		
//		session.setAttribute("positionpage", p);
//		return "index";
//	}
	
	@RequestMapping(value="/search")
	public String searchPosition(@RequestParam("kd") String name, HttpSession session){
		session.removeAttribute("positionpage");
		session.removeAttribute("searchpositionpage");
		session.removeAttribute("searchpositiontypepage");
		Page p = this.positionService.searchPosition(1, PAGESIZE,name);
		

		if(p != null) {
			List li = p.getList();
			Iterator i = li.iterator();
			List cpl = new ArrayList();
			while(i.hasNext()){
				Position pos = (Position) i.next();
				String email = pos.getEmail();
				Company cp = companyService.findCompanyByEmail(email);
				cpl.add(cp);
			}
			session.setAttribute("company", cpl);
			System.out.println("positionpage的页数为："+p.getTotalCount());
			session.setAttribute("searchpositionpage", p);
			session.setAttribute("searchname", name);
		}
		
		return "index";
	}
	
	@RequestMapping(value="/searchpage")
	public String searchPositionPage(@RequestParam("kd") String name,  @RequestParam("pageNum") int num, HttpSession session){
		session.removeAttribute("positionpage");
		session.removeAttribute("searchpositionpage");
		session.removeAttribute("searchpositiontypepage");
		Page p = this.positionService.searchPosition(num, PAGESIZE,name);
		
		if(p != null) {
			session.setAttribute("searchpositionpage", p);
			List li = p.getList();
			Iterator i = li.iterator();
			List cpl = new ArrayList();
			while(i.hasNext()){
				Position pos = (Position) i.next();
				String email = pos.getEmail();
				Company cp = companyService.findCompanyByEmail(email);
				cpl.add(cp);
			}
			session.setAttribute("company", cpl);
		}
		
		session.setAttribute("searchname", name);
		return "index";
	}
	
	@RequestMapping(value="/searchtype", method=RequestMethod.GET)
	public String searchPositionType(@RequestParam("kd") String name, HttpSession session){
		session.removeAttribute("searchpositionpage");
		session.removeAttribute("positionpage");
		session.removeAttribute("searchpositiontypepage");
		Page p = this.positionService.searchPositionByType(1, PAGESIZE,name);
		
		if(p != null) {
			session.setAttribute("searchpositiontypepage", p);
			session.setAttribute("searchname", name);
			List li = p.getList();
			Iterator i = li.iterator();
			List cpl = new ArrayList();
			while(i.hasNext()){
				Position pos = (Position) i.next();
				String email = pos.getEmail();
				Company cp = companyService.findCompanyByEmail(email);
				cpl.add(cp);
			}
			session.setAttribute("company", cpl);
		}
		
		return "index";
	}
	
	@RequestMapping(value="/searchtypepage", method=RequestMethod.GET)
	public String searchPositionTypePage(@RequestParam("kd") String name, @RequestParam("pageNum") int num, HttpSession session){
		session.removeAttribute("searchpositionpage");
		session.removeAttribute("searchpositiontypepage");
		session.removeAttribute("positionpage");
		Page p = this.positionService.searchPositionByType(num, PAGESIZE,name);
		
		if(p != null) {
			session.setAttribute("searchpositiontypepage", p);
			List li = p.getList();
			Iterator i = li.iterator();
			List cpl = new ArrayList();
			while(i.hasNext()){
				Position pos = (Position) i.next();
				String email = pos.getEmail();
				Company cp = companyService.findCompanyByEmail(email);
				cpl.add(cp);
			}
			session.setAttribute("company", cpl);
		}
		
		session.setAttribute("searchname", name);
		return "index";
	}
	
	@RequestMapping("jobdetail")
	public String jobDetail(@RequestParam("id") int id, @RequestParam("email") String email, HttpSession session) {
		Position p = this.positionService.findJobDetail(id);
		Company company = companyService.findCompanyByEmail(email);
		ResumeReceived rr = new ResumeReceived();
		rr.setCompanyemail(company.getEmail());
		rr.setResumeemail("123");
		rr.setType(0);
		rr.setPositionid(id);
		resumeService.saveResumeReceived(rr);
		session.setAttribute("jobdetailcompany", company);
		session.setAttribute("jobdetail", p);
		return "jobdetail";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String Create(@RequestParam("id") String id,Model model){
		model.addAttribute("id", id);
		System.out.println("PositionController中的id"+id);
		return "create";
	}
}
