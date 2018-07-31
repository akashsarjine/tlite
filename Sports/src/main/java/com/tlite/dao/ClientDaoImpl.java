package com.tlite.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.tlite.model.Client;
import com.tlite.model.Ground;
import com.tlite.model.Slot;

public class ClientDaoImpl implements ClientDao {
 
	    private SessionFactory sessionFactory;
		
		public void setSessionFactory(SessionFactory sf){
			this.sessionFactory = sf;
		}

		@Override
		public int validateClient(String email, String password) {
				
			Session session = this.sessionFactory.getCurrentSession();
			
			Query query = session.createQuery("FROM Client WHERE client_email='"+email+"'AND client_password='"+password+"'");
            Client  client = (Client) query.uniqueResult();
            
            return client.getClient_id();
		}

		@Override
		public void addGround(Ground ground) {
			Session session = this.sessionFactory.getCurrentSession();
			session.persist(ground);
			
		}

		@Override
		public void updateGround(Ground ground) {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(ground);
			
		}

		@SuppressWarnings("unchecked")
		@Override
		public List<Ground> listGrounds(int client_id) {
         Session session = this.sessionFactory.getCurrentSession();
			
			return (List<Ground>) session.createQuery("FROM Ground WHERE client_id='"+client_id+"'").list();
		}

		@Override
		public void removeGround(int ground_id) {
			Session session = this.sessionFactory.getCurrentSession();
			Ground ground = (Ground) session.load(Ground.class, new Integer(ground_id));
			
			if(null != ground){
				
				session.delete(ground);
			}
			
		}

		@Override
		public Ground getGroundById(int ground_id) {
			Session session = this.sessionFactory.getCurrentSession();
			Ground ground = (Ground) session.createQuery("FROM Ground WHERE ground_id='"+ground_id+"'").uniqueResult();
			return ground;
		}

		@Override
		public Client getClientById(int client_id) {
			
            Session session = this.sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM Client WHERE client_id="+client_id);
            return (Client) query.uniqueResult();
		}

		@Override
		public void addSlot(Slot slot) {
			Session session = this.sessionFactory.getCurrentSession();
			session.persist(slot);
			
		}

		@Override
		public void updateSlot(Slot slot) {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(slot);
			
		}

		@SuppressWarnings("unchecked")
		@Override
		public List<Slot> listSlotsByGround(int ground_id) {
			Session session = this.sessionFactory.getCurrentSession();
			return (List<Slot>) session.createQuery("FROM Slot WHERE ground_id='"+ground_id+"'").list();
		}

		@Override
		public Slot getSlotById(int slot_id) {
			
		   	Session session = this.sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM Slot WHERE slot_id="+slot_id);
            return (Slot) query.uniqueResult();
		}

		@Override
		public void removeSlot(int slot_id) {
			
			Session session = this.sessionFactory.getCurrentSession();
			Slot slot = (Slot) session.load(Slot.class, new Integer(slot_id));
			
			if(null != slot){
				
				session.delete(slot);
			}
			
		}
	
		
}
