package com.tlite.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="grounds")
public class Ground {
	
	
	@Id
	@Column(name="ground_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ground_id=0;
	
	
	private String ground_name;
	private String ground_dimentions;
	private String ground_description;
	
	@ManyToOne
	@JoinColumn(name="client_id", nullable=false)
	private Client client;
	
	@ManyToOne
	@JoinColumn(name="sport_id", nullable=false)
	private Sport sport;
	
	@OneToMany(mappedBy="ground")
	private Set<Slot> slots;
	
	public Ground() {}
	

    public int getGround_id() {
		return ground_id;
	}
	public void setGround_id(int ground_id) {
		this.ground_id = ground_id;
	}
	
	public String getGround_name() {
		return ground_name;
	}
	public void setGround_name(String ground_name) {
		this.ground_name = ground_name;
	}
	public String getGround_dimentions() {
		return ground_dimentions;
	}
	public void setGround_dimentions(String ground_dimentions) {
		this.ground_dimentions = ground_dimentions;
	}
	public String getGround_description() {
		return ground_description;
	}
	public void setGround_description(String ground_description) {
		this.ground_description = ground_description;
	}


	public Client getClient() {
		return client;
	}

    public void setClient(Client client) {
		this.client = client;
	}


	public Sport getSport() {
		return sport;
	}


	public void setSport(Sport sport) {
		this.sport = sport;
	}
	
    
	

}
