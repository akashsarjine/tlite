package com.tlite.service;

import java.util.List;

import com.tlite.model.Client;
import com.tlite.model.Sport;

public interface AdminService {

	public void addClient(Client client);
	public void updateClient(Client client);
	public List<Client> listClients();
	public Client getClientById(int client_id);
	public void removeClient(int client_id);
	public boolean validateLogin(String email, String password);
	public List<Sport> listSports();
	public boolean addSport(Sport sport);
	public void removeSport(int sport_id);
	
	
}
