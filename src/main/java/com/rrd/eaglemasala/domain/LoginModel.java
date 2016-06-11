package com.rrd.eaglemasala.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "USER")
public class LoginModel {
	 
	
	@Id
	@Column(name = "USERNAME")
    private String userName;
 	
 	@Column(name = "FIRSTNAME")
    private String firstname;

 	@Column(name = "LASTNAME")
    private String lastname;

 	@Column(name = "EMAIL")
    private String email;
    
 	@Column(name = "PASSWORD")
    private String password;
 
   





	public String getUserName() {
		return userName;
	}





	public void setUserName(String userName) {
		this.userName = userName;
	}





	public String getFirstname() {
		return firstname;
	}





	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}





	public String getLastname() {
		return lastname;
	}





	public void setLastname(String lastname) {
		this.lastname = lastname;
	}





	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getPassword() {
		return password;
	}





	public void setPassword(String password) {
		this.password = password;
	}





	@Override
    public String toString() {
        return "LoginModel{" + "userName=" + userName + ", password=" + password + '}';
    }
}