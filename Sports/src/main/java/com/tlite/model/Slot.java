package com.tlite.model;

import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="slots")
public class Slot {
	
	
	@Id
	@Column(name="slot_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int slot_id;
	
	@ManyToOne
	@JoinColumn(name="ground_id", nullable=false)
	private Ground ground;
	
	
	private String start_time;
	private String end_time;
	private Double weekdays_charge;
	private Double weekend_charge;
	

	public Slot() {}
	
	
	public int getSlot_id() {
		return slot_id;
	}
	public void setSlot_id(int slot_id) {
		this.slot_id = slot_id;
	}
	public Ground getGround() {
		return ground;
	}
	public void setGround(Ground ground) {
		this.ground = ground;
	}

	
	
	public String getStart_time() {
		return start_time;
	}





	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}





	public String getEnd_time() {
		return end_time;
	}





	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}





	public Double getWeekdays_charge() {
		return weekdays_charge;
	}

	public void setWeekdays_charge(Double weekdays_charge) {
		this.weekdays_charge = weekdays_charge;
	}

	public Double getWeekend_charge() {
		return weekend_charge;
	}
	public void setWeekend_charge(Double weekend_charge) {
		this.weekend_charge = weekend_charge;
	}
	
	
	

}
