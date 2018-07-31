package com.tlite.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tlite.model.Client;
import com.tlite.model.Ground;
import com.tlite.model.Slot;
import com.tlite.model.Sport;
import com.tlite.service.AdminService;
import com.tlite.service.ClientService;

 @Controller
public class ClientController {

	 private ClientService clientService;
	 private AdminService adminService;
		
		@Autowired(required=true)
		@Qualifier(value="clientService")
		public void setClientService(ClientService clientService){
			this.clientService = clientService;
		}
	
		@Autowired(required=true)
		@Qualifier(value="adminService")
		public void setAdminService(AdminService adminService){
			this.adminService = adminService;
		}
	
		@RequestMapping(value="/clientLoginPage",method=RequestMethod.GET)
		public String clientLoginPage() {
			return "clientLogin";
		}
		
		
		@RequestMapping(value="/clientlogin",method=RequestMethod.POST)
		public String adminLogin(@RequestParam(value="email", required=true) String email,
			    @RequestParam(value="password", required=true) String password,Model model,HttpServletRequest request) {
			int  client_id=this.clientService.validateLogin(email,password);
			
			if(client_id!=0) {
				
			request.getSession().setAttribute("client_id", client_id);
			
			return "clientDashboard";
				
			}else {
				
				model.addAttribute("error","Invalid Email or Password!");
				
				return "clientLogin";
				
			}
				
		}
		
		@RequestMapping(value="/clientDashboard",method=RequestMethod.GET)
		public String clientDashboard() {
			return "clientDashboard";
		}
		
		@RequestMapping(value="/clientSports",method=RequestMethod.GET)
		public String clientSports() {
			return "clientSports";
		}
		
		@RequestMapping(value="/addGroundPage",method=RequestMethod.GET)
		public String addGroundPage(Model model) {
			model.addAttribute("ground", new Ground());
			model.addAttribute("sports",this.adminService.listSports());
			
			return "clientAddGround";
		}
		
		@RequestMapping(value="/manageGrounds",method=RequestMethod.GET)
		public String manageGround(Model model,HttpServletRequest request) {
			
			model.addAttribute("grounds",this.clientService.listGrounds((int) request.getSession(false).getAttribute("client_id")));
			
			
			return "clientManageGrounds";
		}
		
		@RequestMapping(value="/addGround",method=RequestMethod.POST)
		public String addGround(@ModelAttribute("ground") Ground  ground,HttpServletRequest request,@RequestParam (value="sport_id") int sport_id) {
			
		   ground.setClient(this.clientService.getClientById((int) request.getSession(false).getAttribute("client_id")));
		   
		   Sport sport=new Sport();
		  
		   sport.setSport_id(sport_id);
		   
		   ground.setSport(sport);
		   
			if(ground.getGround_id()==0){
				
				this.clientService.addGround(ground);	
				
			}else {
				
				this.clientService.updateGround(ground);
			}
			
			
			return "redirect:/manageGrounds";
		}
		
		
		@RequestMapping(value="/deleteGround/{ground_id}")
		public String deleteGround(@PathVariable("ground_id") int ground_id){
			
			this.clientService.removeGround(ground_id);
			
			return "redirect:/manageGrounds";
		}
		
		@RequestMapping(value="/editGround/{ground_id}")
		public String editGround(@PathVariable("ground_id") int ground_id, Model model){
			
			Ground ground=this.clientService.getGroundById(ground_id);
			System.out.println(ground.getGround_id());
			model.addAttribute("ground",ground);
			model.addAttribute("sports",this.adminService.listSports());
			
			return "clientAddGround";
		}
		
		
		@RequestMapping(value="/selectGround",method=RequestMethod.GET)
		public String selectGround(HttpServletRequest request,Model model){
			
			model.addAttribute("grounds",this.clientService.listGrounds((int) request.getSession(false).getAttribute("client_id")));	
			
			return "clientSelectGround";
		}
		
		
		@RequestMapping(value="/manageSlots",method=RequestMethod.GET)
		public String manageSlots(Model model,@RequestParam (value="ground_id") int ground_id){
			
			model.addAttribute("slots",this.clientService.listSlotsByGround(ground_id));
			model.addAttribute("ground",this.clientService.getGroundById(ground_id));
			return "clientManageSlots";
		}
		
		
		@RequestMapping(value="/addSlotPage",method=RequestMethod.POST)
		public String addSlotPage(Model model,@RequestParam (value="ground_id") int ground_id) {
		
			Slot slot=new Slot();
			slot.setGround(this.clientService.getGroundById(ground_id));
			model.addAttribute("slot",slot);

			return "clientAddSlot";
		}
		
		
		
		@RequestMapping(value="/addSlot",method=RequestMethod.POST)
		public String addSlot(@ModelAttribute("slot") Slot  slot,@RequestParam (value="ground_id") int ground_id,Model model) {
		
			slot.setGround(this.clientService.getGroundById(ground_id));
			
		   	if(slot.getSlot_id()==0){
				
				this.clientService.addSlot(slot);	
				
			}else {
				
				this.clientService.updateSlot(slot);
			}
			
         
			
			model.addAttribute("ground_id",ground_id);
			
			return "redirect:/manageSlots";
		}
		
		@RequestMapping(value="/editSlot/{slot_id}")
		public String editSlot(@PathVariable("slot_id") int slot_id, Model model){
			
			model.addAttribute("slot",this.clientService.getSlotById(slot_id));

			return "clientAddSlot";
		
		}
		
		@RequestMapping(value="/deleteSlot/{slot_id}/{ground_id}")
		public String deleteSlot(@PathVariable("slot_id") int slot_id, Model model,@PathVariable("ground_id") int ground_id){
			
			this.clientService.removeSlot(slot_id);
			
			model.addAttribute("ground_id",ground_id);
			
			return "redirect:/manageSlots";
		
		}
}
