package com.crazysd.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="WEBSITE")
public class Website {
/*
	id_website,
	website_name,
	homepage_title,
	logo_src
*/
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_website;	

	@Column(name="website_name", unique=true, nullable=false)
	private String website_name;
	
	@Column(name="homepage_title", nullable=true)
	private String homepage_title;
	
	@Column(name="logo_src", nullable=true)
	private String logo_src;
	

	public Integer getId_website() {
		return id_website;
	}

	public void setId_website(Integer id_website) {
		this.id_website = id_website;
	}

	public String getWebsite_name() {
		return website_name;
	}

	public void setWebsite_name(String website_name) {
		this.website_name = website_name;
	}

	public String getHomepage_title() {
		return homepage_title;
	}

	public void setHomepage_title(String homepage_title) {
		this.homepage_title = homepage_title;
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
		result = prime * result + ((id_website == null) ? 0 : id_website.hashCode());
		result = prime * result + ((website_name == null) ? 0 : website_name.hashCode());
		result = prime * result + ((homepage_title == null) ? 0 : homepage_title.hashCode());
		result = prime * result + ((logo_src == null) ? 0 : logo_src.hashCode());
		return result;
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Website))
			return false;
		Website other = (Website) obj;
		
		if (id_website == null) {
			if (other.id_website != null)
				return false;
		} else if (!id_website.equals(other.id_website))
			return false;

		if (website_name == null) {
			if (other.website_name != null)
				return false;
		} else if (!website_name.equals(other.website_name))
			return false;

		if (homepage_title == null) {
			if (other.homepage_title != null)
				return false;
		} else if (!homepage_title.equals(other.homepage_title))
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
		return "website [id_website=" + id_website + ", website_name=" + website_name + ", logo_src=" + logo_src + "]";
	}




}
