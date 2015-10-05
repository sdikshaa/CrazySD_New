package com.crazysd.springmvc.service;

import java.util.List;
import java.util.Map;

import com.crazysd.springmvc.model.Offers;

public interface OffersService {
	
	Offers findById(int id);
	
	void save(Offers offers);

	void updateOffers(Offers offers);

	void deleteById(int id);
	
	List<Offers> findAllOffers();

	List<Offers[]> findAllOffersTypewise();

	List<Offers[]> findAllOffersCompanywise();
	
	Map<Offers, Integer> findTypewiseOffersCount();

}