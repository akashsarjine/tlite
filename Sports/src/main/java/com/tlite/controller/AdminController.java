package com.tlite.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tlite.model.Client;
import com.tlite.service.AdminService;

@Controller
public class AdminController {
	
   private AdminService adminService;
	
	@Autowired(required=true)
	@Qualifier(value="adminService")
	public void setAdminService(AdminService adminService){
		this.adminService = adminService;
	}
	
	@RequestMapping(value="viewSidebar",method=RequestMethod.GET)
	public String viewSidebar() {
		return "adminSidebar";
	}
	
	@RequestMapping(value="adminManageClients",method=RequestMethod.GET)
	public String adminManageClients(Model model) {
		model.addAttribute("clientList", this.adminService.listClients());
		return "adminManageClients";
	}
	
	@RequestMapping(value="adminAddClients",method=RequestMethod.GET)
	public String adminAddClients() {
		return "adminAddClients";
	}
	
	@RequestMapping(value="addClient",method=RequestMethod.POST)
	public String addClient(@ModelAttribute("client") Client client,Model model) {
		
		this.adminService.addClient(client);
		
		return "redirect:/adminManageClients";
	}

}
