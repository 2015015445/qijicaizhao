package com.qjcpjobshop.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.catalina.connector.Request;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qjcpjobshop.entity.Position;
import com.qjcpjobshop.service.AdminService;
import com.qjcpjobshop.service.PositionService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource
	private AdminService adminService;

	@RequestMapping(value="/alluser", method=RequestMethod.GET)
	public String alluser(Model model){
		List userfindjoblist = adminService.userfindjobList();
		List usercompanylist = adminService.usercompanyList();
		
		model.addAttribute("userfindjoblist", userfindjoblist);
		model.addAttribute("usercompanylist", usercompanylist);
		
		return "adminuser";
	}
	
	@RequestMapping(value="/finduser", method=RequestMethod.POST)
	public String finduser(@RequestParam("email") String email,Model model){
		List userfindjoblist = adminService.finduserfindjobList(email);
		List usercompanylist = adminService.findusercompanyList(email);
		
		model.addAttribute("userfindjoblist", userfindjoblist);
		model.addAttribute("usercompanylist", usercompanylist);
		
		return "adminuser";
	}
	
	@RequestMapping(value="/deleteuser", method=RequestMethod.GET)
	public String finduser(HttpServletRequest request,Model model){
		String email = request.getParameter("email");
		adminService.deleteuser(email);
		JOptionPane.showMessageDialog(null,"删除成功!", "系统提示", JOptionPane.INFORMATION_MESSAGE);
		return "redirect:/admin/alluser";
	}
}
