package com.tlite.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sport")
public class Sport {
	
	@Id
	@Column(name="sport_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int sport_id;
	
	
	private String sport_name;

	
	public Sport() {}

	public int getSport_id() {
		return sport_id;
	}


	public void setSport_id(int sport_id) {
		this.sport_id = sport_id;
	}


	public String getSport_name() {
		return sport_name;
	}


	public void setSport_name(String sport_name) {
		this.sport_name = sport_name;
	}
    
}
