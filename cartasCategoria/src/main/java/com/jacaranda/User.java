package com.jacaranda;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="USER")
public class User {
	private String password;
	private String name ;
	
	public User() {
		super();
		this.password ="null";
		this.name = "null";
	}
	
	
	public User(String password, String name) {
		super();
		this.password = password;
		this.name = name;
	}



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


