package com.jacaranda;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Class that builds and manages a user.
 * @version 1.0
 *
 */
@Entity
@Table(name="USER")
public class User {
	@Id
	private String password;
	private String name ;
	
	public User() {
		super();
		this.password ="null";
		this.name = "null";
	}
	
	/**
	 * Method that constructs a user object.
	 * @param password
	 * @param name
	 */
	public User(String password, String name) {
		super();
		this.password = password;
		this.name = name;
	}



	//getter and setter
	public String getPassword() {
		return password;
	}

	public void setPassword(String password)throws ExceptionUser {
		if(password==null || "".equals(password)) {
			throw new ExceptionUser("El campo password es oblicagorio");
		}
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name)throws ExceptionUser {
		if(name ==null||"".equals(name)) {
			throw new ExceptionUser("El campo nombre es oblicagorio");
		}
		this.name = name;
	}

	//hascode and Equals
	@Override
	public int hashCode() {
		return Objects.hash(password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(password, other.password);
	}
	
	
	
	
}


