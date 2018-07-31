package com.tlite.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tlite.dao.AdminDao;
import com.tlite.model.Client;
import com.tlite.model.Sport;

@Service
public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;
	
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	@Override
	@Transactional
	public void addClient(Client client) {
		this.adminDao.addClient(client);
		
	}

	@Override
	@Transactional
	public void updateClient(Client client) {
		this.adminDao.updateClient(client);
		
	}

	@Override
	@Transactional
	public List<Client> listClients() {
		return this.adminDao.listClient();
	}

	@Override
	@Transactional
	public Client getClientById(int client_id) {
		
		Client client=this.adminDao.getClientById(client_id);
		System.out.println(client.getClient_id());
		return client;
	}

	@Override
	@Transactional
	public void removeClient(int client_id) {
		
		this.adminDao.removeClient(client_id);
		
	}

	@Override
	public boolean validateLogin(String email, String password) {
		
		boolean result=false;
		
		
		if(email.equals("admin@gmail.com") && password.equals("123") ){
			
		    result=true;
		    
		}
		
		
		return result;
	}

	@Override
	@Transactional
	public List<Sport> listSports() {
		return this.adminDao.listSport();
	}

	@Override
	@Transactional
	public boolean addSport(Sport sport) {
		return this.adminDao.addSport(sport);
	}

	@Override
	@Transactional
	public void removeSport(int sport_id) {
		 this.adminDao.deleteSport(sport_id);
	}

	

	
	
	
}
