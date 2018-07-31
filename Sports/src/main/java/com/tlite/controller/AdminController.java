package com.tlite.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tlite.model.Client;
import com.tlite.model.Sport;
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
	public String homePage() {
		return "homepage";
	}
	
	
	@RequestMapping(value="/adminLoginPage",method=RequestMethod.GET)
	public String adminLoginPage() {
		return "adminLogin";
	}
	
	
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession(false).invalidate();
		return "homepage";
	}
	
	@RequestMapping(value="/adminLogin",method=RequestMethod.POST)
	public String adminLogin(@RequestParam(value="email", required=true) String email,
		    @RequestParam(value="password", required=true) String password,Model model) {
		
		if(this.adminService.validateLogin(email,password)) {
			
			model.addAttribute("clientList", this.adminService.listClients());
			
			return "adminManageClients";
			
		}else {
			
			model.addAttribute("error","Invalid Email or Password!");
			
			return "adminLogin";
			
		}
			
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
		System.out.println(client.getClient_id());
		model.addAttribute("client",client);
		return "adminAddClients";
	}
	
	
	@RequestMapping(value="/manageSports",method=RequestMethod.GET)
	public String adminManageSports(Model model) {
		
		model.addAttribute("sportList", this.adminService.listSports());
		
		return "adminManageSports";
	}
		
		@RequestMapping(value="addSport",method=RequestMethod.POST)
	public String addSport(@ModelAttribute("sport") Sport sport,Model model) {
		
			if(this.adminService.addSport(sport)) {
				
				model.addAttribute("successMsg","Sport Added");
				
				
				
			}else {
				
				model.addAttribute("errorMsg","Sport Not Added");
				
			}	
			
		
		return "redirect:/manageSports";
	}
		
		
		
		@RequestMapping(value="deleteSport/{sport_id}")
		public String deleteSport(@PathVariable("sport_id") int sport_id){
			
			this.adminService.removeSport(sport_id);
			
			return "redirect:/manageSports";
		}
		
		
		
		
}
