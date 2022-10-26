package com.jacaranda;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class ConnectionDAO {
	private static StandardServiceRegistry sr =new StandardServiceRegistryBuilder().configure().build();;
	private static SessionFactory sf =new MetadataSources(sr).buildMetadata().buildSessionFactory();
	private static Session session = sf.openSession();
	
		
	public static Session getSession() {
		return session;
	}
	
	
	//Metodo leer Usuario
	public boolean validUser(String password) {
		boolean valid = false;
		User u = (User) session.get(User.class,password);
		if(u != null) {
			valid = true;
		}
		return valid;
	}
	
	//Metodos para clase Card
	public void addCard(Card c) {
		session.getTransaction().begin();
		session.save(c);
		session.getTransaction().commit();
	}
	
	public void deleteCard(int id) {
		Card c = (Card) session.get(Card.class,id);
		session.getTransaction().begin();
		session.delete(c);
		session.getTransaction().commit();
	}
	
	
	//Metodos para clase Category 
	public void addCategory(Category cat) {
		session.getTransaction().begin();
		session.save(cat);
		session.getTransaction().commit();
	}
	
	public void deleteCategory(String nameCategory) {
		Category cat = (Category) session.get(Category.class,nameCategory);
		session.getTransaction().begin();
		session.delete(cat);
		session.getTransaction().commit();
	}
	
	public Category showCategory(int id) {
		Category c = (Category) session.get(Category.class, id);
		return c;
	}
	
}
