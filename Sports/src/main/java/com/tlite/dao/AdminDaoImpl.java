package com.tlite.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tlite.model.Client;
@Repository
public class AdminDaoImpl implements AdminDao {

      private SessionFactory sessionFactory;
	
			public void setSessionFactory(SessionFactory sf){
				this.sessionFactory = sf;
			}
	
	@Override
	public void addClient(Client client) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(client);
		
	}

	@Override
	public void updateClient(Client client) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(client);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Client> listClient() {
		
		Session session = this.sessionFactory.getCurrentSession();
		List<Client> clientList = session.createQuery("from Client").list();
		
		return clientList;
	}

	@Override
	public Client getClientById(int client_id) {
		
		Session session = this.sessionFactory.getCurrentSession();
		
		
		Client client = (Client) session.load(Client.class, new Integer(client_id));
		
		 
		return client;
	}

	@Override
	public void removeClient(int client_id) {
		Session session = this.sessionFactory.getCurrentSession();
		Client client = (Client) session.load(Client.class, new Integer(client_id));
		
		if(null != client){
			
			session.delete(client);
		}
	}

}
