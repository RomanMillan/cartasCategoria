package com.jacaranda;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;


/**
 * Class that allows to interact with the database of the Category table.
 * @version 1.0
 *
 */
public class CategoryControl {
	
	/**
	 * Method that allows to obtain a category.
	 * @param id
	 * @return a category
	 */
	public static Category getCategory(int id) {
		Session session = ConnectionDAO.getSession();
		Category category = (Category) session.get(Category.class,id);
		
		return category;
	}
	
	/**
	 * Method to get a category list
	 * @return a category list
	 */
	public static List<Category> getCategoryC(){
		Session session= ConnectionDAO.getSession();
		Query<Category> query = session.createQuery("SELECT p FROM com.jacaranda.Category p");
		List<Category> category = (List<Category>) query.getResultList();
		return category;
	}
	
	/**
	 * Method that allows to delete a category.
	 * @param c
	 * @return A boolean of whether or not the category has been deleted.
	 */
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
	
	/**
	 * Method that allows to add a category.
	 * @param category
	 * @return A boolean of whether or not the category has been added.
	 */
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
	
	/**
	 * Method that allows to modify a category.
	 * @param category
	 * @param id
	 * @return A boolean of whether or not the category has been modified.
	 * @throws ExceptionCategory If it could not be modified.
	 */
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
