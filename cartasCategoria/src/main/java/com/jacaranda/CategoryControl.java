package com.jacaranda;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;



public class CategoryControl {
	
	public static Category getCategory(int id) {
		Session session = ConnectionDAO.getSession();
		Category category = (Category) session.get(Category.class,id);
		return category;
	}
	
	public static List<Category> getCategoryC(){
		Session session= ConnectionDAO.getSession();
		Query<Category> query = session.createQuery("SELECT p FROM com.jacaranda.Category p");
		List<Category> category = (List<Category>) query.getResultList();
		return category;
	}
	
	public static boolean deleteCategory(int id) {
		boolean delete = false;
		Session session = ConnectionDAO.getSession();
		try {
			session.getTransaction().begin();
			session.delete(id);
			session.getTransaction().commit();
			delete=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return delete;
	}
	
	public static boolean addCategory( Category category) {
		boolean add = false;
		Session session = ConnectionDAO.getSession();
		
		try {
			session.getTransaction().begin();
			session.save(category);
			session.getTransaction();
			add=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return add;
	}
}
