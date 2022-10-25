package com.jacaranda;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CardControl {
	
	
	public static Card getCard(int id) {
		Session session = ConnectionDAO.getSession();
		Card card = (Card) session.get(Card.class,id);
		return card;
	}
	
	public static List<Card> getCard(){
		Session session= ConnectionDAO.getSession();
		Query<Card> query = session.createQuery("SELECT h FROM com.jacaranda.Card h");
		List<Card> card = (List<Card>) query.getResultList();
		return card;
	}
	
	public static boolean deleteCard(int id) {
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
	
	public static boolean addCategory( Card card) {
		boolean add = false;
		Session session = ConnectionDAO.getSession();
		
		try {
			session.getTransaction().begin();
			session.save(card);
			session.getTransaction().commit();
			add=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return add;
	}
}
