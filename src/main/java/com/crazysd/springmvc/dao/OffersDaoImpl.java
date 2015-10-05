package com.crazysd.springmvc.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.crazysd.springmvc.model.Offers;

@Repository("offersDao")
public class OffersDaoImpl extends AbstractDao<Integer, Offers> implements OffersDao {

	public Offers findById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id_offers", id));
		Offers offers = (Offers)crit.uniqueResult();
		if(offers!=null){
			Hibernate.initialize(offers.getOffer_title());
			Hibernate.initialize(offers.getOffer_description());
		}
		return offers;
	}

	public void save(Offers offers) {
		// TODO Auto-generated method stub
		persist(offers);
	}

	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id_offers", id));
		Offers offers = (Offers)crit.uniqueResult();
		delete(offers);		
	}

	@SuppressWarnings("unchecked")
	public List<Offers> findAllOffers() {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("offer_title"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Offers> offers = (List<Offers>) criteria.list();
		return offers;
	}

	@SuppressWarnings("unchecked")
	public Map<Offers, Integer> findTypewiseOffersCount() {
/*
		Criteria crit = session.createCriteria(Product.class);
		ProjectionList projList = Projections.projectionList();
		projList.add(Projections.property("name"));
		projList.add(Projections.property("description"));
		crit.setProjection(projList);
		crit.addOrder(Order.asc("price"));
		List<object[]> results = crit.list();

		Criteria criteria = createEntityCriteria().addOrder(Order.asc("offer_title"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		Map<Offers, Integer> offers = (Map<Offers, Integer>) criteria.list();
		return offers;
*/	
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Offers[]> findAllOffersTypewise() {
		Criteria criteria = createEntityCriteria();
		
		ProjectionList projList = Projections.projectionList();
		projList.add(Projections.property("offer_title"));
		projList.add(Projections.property("offer_description"));
		projList.add(Projections.property("offertype"));
		projList.add(Projections.count("offertype"),"offertype_count");
		projList.add(Projections.groupProperty("offertype"));

		criteria.setProjection(projList);
		criteria.addOrder(Order.asc("offer_title"));

		List<Offers[]> results = criteria.list();
		return results;
	}

	@SuppressWarnings("unchecked")
	public List<Offers[]> findAllOffersCompanywise() {
		Criteria criteria = createEntityCriteria();
		
		ProjectionList projList = Projections.projectionList();
		projList.add(Projections.property("company"));
		projList.add(Projections.count("company"),"company_count");
		projList.add(Projections.groupProperty("company"));

		criteria.setProjection(projList);
		criteria.addOrder(Order.asc("company"));

		List<Offers[]> results = criteria.list();
		return results;
	}

	/*
	public User findById(int id) {
		User user = getByKey(id);
		if(user!=null){
			Hibernate.initialize(user.getUserProfiles());
		}
		return user;
	}
	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("firstName"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<User> users = (List<User>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
/*		return users;
	}

	public void save(User user) {
		persist(user);
	}

	public void deleteBySSO(String sso) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		User user = (User)crit.uniqueResult();
		delete(user);
	}
*/
}
