package com.crazysd.springmvc.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="COMPANY")
public class Company {
/*
	id_company,
	company_name,
	logo_src
*/
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_company", unique=true, updatable=false, nullable=false)
	private Integer id_company;	

	@Column(name="company_name", unique=true, nullable=false)
	private String company_name;
	
	@Column(name="logo_src", nullable=true)
	private String logo_src;
	
	public Integer getId_company() {
		return id_company;
	}

	public void setId_company(Integer id_company) {
		this.id_company = id_company;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getLogo_src() {
		return logo_src;
	}

	public void setLogo_src(String logo_src) {
		this.logo_src = logo_src;
	}

	@OneToMany(mappedBy="company")
    private Set<Offers> offers;
	
	public Set<Offers> getOffers() {
		return offers;
	}

	public void setOffers(Set<Offers> offers) {
		this.offers = offers;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id_company == null) ? 0 : id_company.hashCode());
		result = prime * result + ((company_name == null) ? 0 : company_name.hashCode());
		result = prime * result + ((logo_src == null) ? 0 : logo_src.hashCode());
		return result;
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Company))
			return false;
		Company other = (Company) obj;
		
		if (id_company == null) {
			if (other.id_company != null)
				return false;
		} else if (!id_company.equals(other.id_company))
			return false;

		if (company_name == null) {
			if (other.company_name != null)
				return false;
		} else if (!company_name.equals(other.company_name))
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
		return "Company [id_company=" + id_company + ", company_name=" + company_name + ", logo_src=" + logo_src + "]";
	}




}
