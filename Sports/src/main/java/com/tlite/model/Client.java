package com.tlite.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.transaction.annotation.Transactional;

@Entity
@Table(name="client")
@Transactional
public class Client {

	@Id
	@Column(name="client_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int client_id;
	
	private String client_email;
	private String client_password;
	private String client_name;
	private long client_mobile;
	private long client_office_number;
	private String client_address;
	private String client_logo;
	
	
	
	public int getClient_id() {
		return client_id;
	}
	public void setClient_id(int client_id) {
		this.client_id = client_id;
	}
	public String getClient_email() {
		return client_email;
	}
	public void setClient_email(String client_email) {
		this.client_email = client_email;
	}
	public String getClient_password() {
		return client_password;
	}
	public void setClient_password(String client_password) {
		this.client_password = client_password;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public long getClient_mobile() {
		return client_mobile;
	}
	public void setClient_mobile(long client_mobile) {
		this.client_mobile = client_mobile;
	}
	
	public String getClient_address() {
		return client_address;
	}
	public void setClient_address(String client_address) {
		this.client_address = client_address;
	}
	public String getClient_logo() {
		return client_logo;
	}
	public void setClient_logo(String client_logo) {
		this.client_logo = client_logo;
	}
	public long getClient_office_number() {
		return client_office_number;
	}
	public void setClient_office_number(long client_office_number) {
		this.client_office_number = client_office_number;
	}
	
	
	
}
