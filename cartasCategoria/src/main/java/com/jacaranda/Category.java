package com.jacaranda;

import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="CATEGORY")
public class Category {
	@GeneratedValue
	private int codeCategory;
	private String nameCategory;
	@OneToMany(mappedBy="CATEGORY")
	private Set<Category>category;
	
	public Category() {
		super();
		this.nameCategory = null;
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

	public Set<Category> getCategory() {
		return category;
	}

	public void setCategory(Set<Category> category) {
		this.category = category;
	}

	@Override
	public int hashCode() {
		return Objects.hash(category);
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
		return Objects.equals(category, other.category);
	}
	
	
	
}


