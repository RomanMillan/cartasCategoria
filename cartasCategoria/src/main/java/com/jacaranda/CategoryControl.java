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
	
}
