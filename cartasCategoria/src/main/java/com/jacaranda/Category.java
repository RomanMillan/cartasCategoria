package com.jacaranda;

import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity(name="CATEGORY")
public class Category {
	@Id
	private int codeCategory;
	private String nameCategory;
	@OneToMany(mappedBy="categ")
	private Set<Card> card;
	
	public Category() {
		super();	
		this.codeCategory=0;
		this.nameCategory = null;
		this.card = null;
	}

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


