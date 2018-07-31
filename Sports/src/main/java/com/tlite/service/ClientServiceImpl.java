package com.tlite.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.tlite.dao.ClientDao;
import com.tlite.model.Client;
import com.tlite.model.Ground;
import com.tlite.model.Slot;

public class ClientServiceImpl implements ClientService {

private ClientDao clientDao;

	  public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	 }

		@Override
		@Transactional
		public int validateLogin(String email, String password) {
			
			return this.clientDao.validateClient(email,password);
			
		}
		
		@Override
		@Transactional
		public void addGround(Ground ground) {
			this.clientDao.addGround(ground);
			
		}
		
		@Override
		@Transactional
		public void updateGround(Ground ground) {
			this.clientDao.updateGround(ground);
			
		}

		@Override
		@Transactional
		public List<Ground> listGrounds(int client_id) {
			return  this.clientDao.listGrounds(client_id);
		}

		@Override
		@Transactional
		public Ground getGroundById(int ground_id) {
		
			return this.clientDao.getGroundById(ground_id);
		}

		@Override
		@Transactional
		public void removeGround(int ground_id) {
			this.clientDao.removeGround(ground_id);
			
		}

		@Override
		@Transactional
		public Client getClientById(int client_id) {
			return this.clientDao.getClientById(client_id);
		}

		@Override
		@Transactional
		public void addSlot(Slot slot) {
			 this.clientDao.addSlot(slot);
		}

		@Override
		@Transactional
		public void updateSlot(Slot slot) {
			this.clientDao.updateSlot(slot);
			
		}

		@Override
		@Transactional
		public List<Slot> listSlotsByGround(int ground_id) {
			return this.clientDao.listSlotsByGround(ground_id);
		}

		@Override
		@Transactional
		public Slot getSlotById(int slot_id) {
			
			return this.clientDao.getSlotById(slot_id);
		}

		@Override
		@Transactional
		public void removeSlot(int slot_id) {
			this.clientDao.removeSlot(slot_id);
			
		}
			
		
	}
