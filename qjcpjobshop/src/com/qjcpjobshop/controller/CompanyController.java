package com.qjcpjobshop.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qjcpjobshop.service.CompanyService;
import com.qjcpjobshop.service.PositionService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Resource
	private CompanyService companyService;
	
	@RequestMapping(value="/findallcompany", method=RequestMethod.GET)
	public String findAllCompany(Model model){
		List list = companyService.findAllCompany();
		model.addAttribute("list", list);
		
		return "companylist";
	}
}
