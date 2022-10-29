package com.jacaranda;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 * Class that allows to interact with the database of the Card table.
 * @version 1.0
 *
 */
public class CardControl {
	
	/**
	 * Method that allows to obtain a card.
	 * @param id
	 * @return a card.
	 */
	public static Card getCard(int id) {
		Session session = ConnectionDAO.getSession();
		Card card = (Card) session.get(Card.class,id);
		return card;
	}
	
	/**
	 * Method to get a list of cards
	 * @return card list.
	 */
	public static List<Card> getCard(){
		Session session= ConnectionDAO.getSession();
		Query<Card> query = session.createQuery("SELECT h FROM com.jacaranda.Card h");
		List<Card> card = (List<Card>) query.getResultList();
		return card;
	}
	
	/**
	 * Method that allows to delete a card.
	 * @param card
	 * @return A boolean of whether or not the card has been deleted.
	 */
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
	
	/**
	 * Method that allows to add a card.
	 * @param card
	 * @return A boolean of whether or not the card has been added.
	 */
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
	
	/**
	 * Method that allows to modify a card.
	 * @param card
	 * @return A boolean of whether or not the card has been modified.
	 * @throws ExceptionCategory If it could not be modified.
	 */
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
