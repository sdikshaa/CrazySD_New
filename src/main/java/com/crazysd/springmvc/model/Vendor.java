package com.crazysd.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="VENDOR")
public class Vendor {
/*
	id_vendor,
	vendor_name,
	logo_src
*/
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_vendor;	

	@Column(name="vendor_name", unique=true, nullable=false)
	private String vendor_name;
	
	@Column(name="logo_src", nullable=true)
	private String logo_src;
	
	
	public Integer getId_vendor() {
		return id_vendor;
	}

	public void setId_vendor(Integer id_vendor) {
		this.id_vendor = id_vendor;
	}

	public String getVendor_name() {
		return vendor_name;
	}

	public void setVendor_name(String vendor_name) {
		this.vendor_name = vendor_name;
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
		result = prime * result + ((id_vendor == null) ? 0 : id_vendor.hashCode());
		result = prime * result + ((vendor_name == null) ? 0 : vendor_name.hashCode());
		result = prime * result + ((logo_src == null) ? 0 : logo_src.hashCode());
		return result;
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Vendor))
			return false;
		Vendor other = (Vendor) obj;
		
		if (id_vendor == null) {
			if (other.id_vendor != null)
				return false;
		} else if (!id_vendor.equals(other.id_vendor))
			return false;

		if (vendor_name == null) {
			if (other.vendor_name != null)
				return false;
		} else if (!vendor_name.equals(other.vendor_name))
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
		return "vendor [id_vendor=" + id_vendor + ", vendor_name=" + vendor_name + ", logo_src=" + logo_src + "]";
	}




}
