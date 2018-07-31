package com.tlite.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.tlite.model.Client;
import com.tlite.model.Sport;
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

	@SuppressWarnings("unchecked")
	@Override
	public List<Sport> listSport() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from Sport").list();
		
	}

	@Override
	public boolean addSport(Sport sport) {
		boolean result=false;
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(sport);
		result=true;
		
		return result;
	}

	@Override
	public void deleteSport(int sport_id) {
		Session session = this.sessionFactory.getCurrentSession();
		Sport sport = (Sport) session.load(Sport.class, new Integer(sport_id));
		
		if(null != sport){
			
			session.delete(sport);
		}
	}

}
