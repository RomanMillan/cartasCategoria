package com.jacaranda;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CardControl {
	
	//obtener una carta
	public static Card getCard(int id) {
		Session session = ConnectionDAO.getSession();
		Card card = (Card) session.get(Card.class,id);
		return card;
	}
	
	//obtener una lista de cartas
	public static List<Card> getCard(){
		Session session= ConnectionDAO.getSession();
		Query<Card> query = session.createQuery("SELECT h FROM com.jacaranda.Card h");
		List<Card> card = (List<Card>) query.getResultList();
		return card;
	}
	
	//borrar una carta
	public static boolean deleteCard(Card card) {
		boolean delete = false;
		Session session = ConnectionDAO.getSession();
		try {
			session.getTransaction().begin();
			session.delete(card);
			session.getTransaction().commit();
			delete=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return delete;
	}
	
	//añadir una carta
	public static boolean addCard( Card card) {
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
	
	//modificar una carta
	public static boolean modCard(Card card) throws ExceptionCategory {
		boolean mod = false;
		Session session = ConnectionDAO.getSession();
		
		try {
			session.getTransaction().begin();
			session.update(card);
			session.getTransaction().commit();
			mod=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return mod;
	}
}
