package com.jacaranda;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
/**
 * Establish the session with the database.
 * @version 1.0
 *
 */
public class ConnectionDAO {
	private static StandardServiceRegistry sr =new StandardServiceRegistryBuilder().configure().build();;
	private static SessionFactory sf =new MetadataSources(sr).buildMetadata().buildSessionFactory();
	private static Session session = sf.openSession();
	
		
	public static Session getSession() {
		return session;
	}
	
	public static void closeSession() {
		session.close();
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
	

	//Metodos para clase Category 
	
	public void deleteCategory(String nameCategory) {
		Category cat = (Category) session.get(Category.class,nameCategory);
		session.getTransaction().begin();
		session.delete(cat);
		session.getTransaction().commit();
	}
	
	
}
