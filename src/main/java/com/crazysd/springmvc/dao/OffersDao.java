package com.crazysd.springmvc.dao;

import java.util.List;
import java.util.Map;

import com.crazysd.springmvc.model.Offers;


public interface OffersDao {

	Offers findById(int id);
	
	void save(Offers offers);
	
	void deleteById(int id);
	
	List<Offers> findAllOffers();

	List<Offers[]> findAllOffersTypewise();

	List<Offers[]> findAllOffersCompanywise();

	List<Offers> findCompanyOffers(Integer id_company);

	List<Offers[]> findAllOffersCategorywise();

	List<Offers> findCategoryOffers(Integer id_category);

}

