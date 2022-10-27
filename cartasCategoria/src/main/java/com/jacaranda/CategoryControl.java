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
	
	public static boolean deleteCategory(Category c) {
		boolean delete = false;
		Session session = ConnectionDAO.getSession();
		try {
			session.getTransaction().begin();
			session.delete(c);
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
			session.getTransaction().commit();
			add=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return add;
	}
	
	public static boolean modCategory(String category, int id) throws ExceptionCategory {
		boolean mod = false;
		Session session = ConnectionDAO.getSession();
		CategoryControl c = new CategoryControl();
		Category oldCategory= c.getCategory(id);
		oldCategory.setNameCategory(category);
		try {
			
			session.getTransaction().begin();
			session.update(oldCategory);
			session.getTransaction().commit();
			mod=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return mod;
	}
}
