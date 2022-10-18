package com.jacaranda;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class ConnectionDAO {
	private StandardServiceRegistry sr ;
	private SessionFactory sf;
	private Session session;
	
	public ConnectionDAO() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
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
	
}
