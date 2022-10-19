package com.jacaranda;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CARD")
public class Card {
	@GeneratedValue
	private int code;
	private String name;
	private double price;
	private String acquisition ;
	private boolean deck_cards;
	@ManyToOne
	@JoinColumn(name="codeCategory",
	foreignKey = @ForeignKey(name="fk_historial"))
	private Category categ;
	
	public Card(int code, String name, double price, String acquisition, boolean deck_cards) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.acquisition = acquisition;
		this.deck_cards = deck_cards;
	}
	
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) throws ExceptionCard {
		if(code<0) {
			throw new ExceptionCard("El c�digo no puede ser menor que 0");
		}
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) throws ExceptionCard {
		if(name==null||"".equals(name)) {
			throw new ExceptionCard("El campo nombre es obligat�rio");
		}else if(name.length()>100) {
			throw new ExceptionCard("El nombre no puede tener una longitud mayor a 100");
		}
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) throws ExceptionCard {
		if(code<0) {
			throw new ExceptionCard("El precio no puede ser menor que 0");
		}
		this.price = price;
	}
	public String getAcquisition() {
		return acquisition;
	}
	public void setAcquisition(String acquisition) {
		this.acquisition = acquisition;
	}
	public boolean isDeck_cards() {
		return deck_cards;
	}
	public void setDeck_cards(boolean deck_cards) {
		this.deck_cards = deck_cards;
	}
	public Category getCateg() {
		return categ;
	}
	public void setCateg(Category categ) {
		this.categ = categ;
	}


	@Override
	public int hashCode() {
		return Objects.hash(code);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Card other = (Card) obj;
		return code == other.code;
	}
	
	
	
}
