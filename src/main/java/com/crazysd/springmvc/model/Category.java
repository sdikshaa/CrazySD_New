package com.crazysd.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CATEGORY")
public class Category {
/*
	id_category,
	category_name,
	logo_src
*/
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_category;	

	@Column(name="category_name", unique=true, nullable=false)
	private String category_name;
	
	@Column(name="logo_src", nullable=true)
	private String logo_src;
	
	public Integer getId_category() {
		return id_category;
	}

	public void setId_category(Integer id_category) {
		this.id_category = id_category;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getLogo_src() {
		return logo_src;
	}

	public void setLogo_src(String logo_src) {
		this.logo_src = logo_src;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id_category == null) ? 0 : id_category.hashCode());
		result = prime * result + ((category_name == null) ? 0 : category_name.hashCode());
		result = prime * result + ((logo_src == null) ? 0 : logo_src.hashCode());
		return result;
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Category))
			return false;
		Category other = (Category) obj;
		
		if (id_category == null) {
			if (other.id_category != null)
				return false;
		} else if (!id_category.equals(other.id_category))
			return false;

		if (category_name == null) {
			if (other.category_name != null)
				return false;
		} else if (!category_name.equals(other.category_name))
			return false;
		
		if (logo_src == null) {
			if (other.logo_src != null)
				return false;
		} else if (!logo_src.equals(other.logo_src))
			return false;
		
		return true;
	}

	@Override
	public String toString() {
		return "Category [id_category=" + id_category + ", category_name=" + category_name + ", logo_src=" + logo_src + "]";
	}


}
