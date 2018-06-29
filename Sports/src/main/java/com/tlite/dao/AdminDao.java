package com.tlite.dao;

import java.util.List;

import com.tlite.model.Client;

public interface AdminDao {

	public void addClient(Client client);
	public void updateClient(Client client);
	public List<Client> listClient();
	public Client getClientById(int client_id);
	public void removeClient(int client_id);
}
