package com.tlite.controller;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String viewSidebar() {
		return "adminSidebar";
	}
	
	@RequestMapping(value="adminManageClients",method=RequestMethod.GET)
	public String adminManageClients(Model model) {
		model.addAttribute("clientList", this.adminService.listClients());
		return "adminManageClients";
	}
	
	@RequestMapping(value="adminAddClients",method=RequestMethod.GET)
	public String adminAddClients(Model model) {
		model.addAttribute("client", new Client());
		return "adminAddClients";
	}
	
	@RequestMapping(value="addClient",method=RequestMethod.POST)
	public String addClient(@ModelAttribute("client") Client client) {
		
		if(client.getClient_id()==0){
			
			this.adminService.addClient(client);	
			
		}else {
			
			this.adminService.updateClient(client);
		}
		
		
		return "redirect:/adminManageClients";
	}
	
	@RequestMapping(value="deleteClient/{client_id}")
	public String deleteClient(@PathVariable("client_id") int client_id){
		
		this.adminService.removeClient(client_id);
		
		return "redirect:/adminManageClients";
	}
	
	
	
	@RequestMapping(value="editClient/{client_id}")
	public String editClient(@PathVariable("client_id") int client_id, Model model){
		
		Client client=this.adminService.getClientById(client_id);
		
		model.addAttribute("client",client);
		
		
		
		return "adminAddClients";
	}
	
}
