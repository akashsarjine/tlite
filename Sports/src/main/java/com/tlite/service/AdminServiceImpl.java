package com.tlite.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tlite.dao.AdminDao;
import com.tlite.model.Client;

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
		
		return client;
	}

	@Override
	@Transactional
	public void removeClient(int client_id) {
		
		this.adminDao.removeClient(client_id);
		
	}

	
	
	
}
