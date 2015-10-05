package com.crazysd.springmvc.service;

import java.util.List;
import java.util.Map;

import com.crazysd.springmvc.model.Category;

public interface CategoryService {
/*	
	User findById(int id);
	
	User findBySSO(String sso);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserBySSO(String sso);

	List<User> findAllUsers(); 
	
	boolean isUserSSOUnique(Integer id, String sso);
*/
	
	Category findById(int id);
	
	Category findByName(String name);
	
	void save(Category category);
	
	void saveCategory(Category category);
	
	void updateCategory(Category category);
	
	void deleteCategoryByName(String name);
	
	List<Category> findAllCategories();

	Map<Category, Integer> findCategoryCount();

}