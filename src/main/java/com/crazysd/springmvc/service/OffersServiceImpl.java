package com.crazysd.springmvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crazysd.springmvc.dao.OffersDao;
import com.crazysd.springmvc.model.Offers;


@Service("offersService")
@Transactional
public class OffersServiceImpl implements OffersService{

	@Autowired
	private OffersDao dao;

	public Offers findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	public void save(Offers offers) {
		// TODO Auto-generated method stub
		dao.save(offers);				
	}

	public void updateOffers(Offers offers) {
		// TODO Auto-generated method stub
		Offers entity = dao.findById(offers.getId_offers());
		if(entity!=null){
			entity.setOffer_title(offers.getOffer_title());
			// remaining do later
		}
	}

	public List<Offers> findAllOffers() {
		// TODO Auto-generated method stub
		return dao.findAllOffers();
	}

	public void deleteById(int id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}

	public List<Offers[]> findAllOffersTypewise() {
		// TODO Auto-generated method stub
		return dao.findAllOffersTypewise();
	}

	public List<Offers[]> findAllOffersCompanywise() {
		// TODO Auto-generated method stub
		return dao.findAllOffersCompanywise();
	}

	public List<Offers> findCompanyOffers(Integer id_company) {
		// TODO Auto-generated method stub
		return dao.findCompanyOffers(id_company);
	}
}
