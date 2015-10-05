package com.crazysd.springmvc.service;

import java.util.List;

import com.crazysd.springmvc.model.Company;

public interface CompanyService {
/*	
	User findById(int id);
	
	User findBySSO(String sso);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserBySSO(String sso);

	List<User> findAllUsers(); 
	
	boolean isUserSSOUnique(Integer id, String sso);
*/
	
	Company findById(int id);
	
	Company findByName(String name);
	
	void save(Company company);
	
	void saveCompany(Company company);
	
	void updateCompany(Company company);
	
	void deleteCompanyByName(String name);
	
	List<Company> findAllCompanies();

}