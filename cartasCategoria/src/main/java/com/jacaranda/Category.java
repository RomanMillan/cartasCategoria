package com.jacaranda;

import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 * Class that builds and manages a category.
 * @version 1.0
 *
 */
@Entity(name="CATEGORY")
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int codeCategory;
	private String nameCategory;
	@OneToMany(mappedBy="categ")
	private Set<Card> card;
	
	
	//builder
	public Category() {
		super();	
		this.codeCategory=0;
		this.nameCategory = null;
		this.card = null;
	}

	//getter and setter
	public String getNameCategory() {
		return nameCategory;
	}

	public void setNameCategory(String nameCategory) throws ExceptionCategory {
		
		if(nameCategory==null||"".equals(nameCategory)) {
			throw new ExceptionCategory("El campo categorya es obligatorio");
			
		}
		this.nameCategory = nameCategory;
	}

	public Set<Card> getCategory() {
		return card;
	}

	public void setCategory(Set<Card> category) {
		this.card = category;
	}
	
	
	public void setCodeCategory(int codeCategory) {
		this.codeCategory = codeCategory;
	}

	public int getCodeCategory() {
		return codeCategory;
	}

	public Set<Card> getCard() {
		Set<Card> c = card;
		return c;
	}
	
	
	//hashCode and equals
	@Override
	public int hashCode() {
		return Objects.hash(codeCategory);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		return codeCategory == other.codeCategory;
	}

	
}


