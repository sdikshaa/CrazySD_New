package com.crazysd.springmvc.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.crazysd.springmvc.model.Company;
import com.crazysd.springmvc.model.Offers;
import com.crazysd.springmvc.service.CategoryService;
import com.crazysd.springmvc.service.CompanyService;
import com.crazysd.springmvc.service.OffersService;



@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {
	
	@Autowired
	CompanyService companyService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	OffersService offersService;
/*
	@Autowired
	MessageSource messageSource;
*/
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {

		List<Company> companies = companyService.findAllCompanies();
		List<Offers> offers = offersService.findAllOffers();
		List<Offers[]> offerstypewise = offersService.findAllOffersTypewise();
		List<Offers[]> offerscompanywise = offersService.findAllOffersCompanywise();
		List<Offers[]> offerscategorywise = offersService.findAllOffersCategorywise();

		model.addAttribute("companies", companies);
		model.addAttribute("offers", offers);
		model.addAttribute("offerstypewise", offerstypewise);
		model.addAttribute("offerscompanywise", offerscompanywise);
		model.addAttribute("offerscategorywise", offerscategorywise);

/*		for(Company comp:companies)
			System.out.println(comp);
*/
		return "mainindex";
	}

	 @RequestMapping(value = "/offersByCompanyId", method = RequestMethod.GET)
	    public  @ResponseBody   String getOffersByCompanyId(@RequestParam String companyid) {
			List<Offers> offers = offersService.findCompanyOffers(Integer.parseInt(companyid));
//	    String result = "Ajax ran successfully";
	    
		StringBuffer result = new StringBuffer("<h2>Ajax Offers Loaded.. Company ID: "+companyid+".</h2>");
		for(Offers offer:offers)
		{
			result.append("<div class='col-sm-4 col-lg-4 col-md-4'><div class='thumbnail'><div class='caption'>	<h4 class='pull-right'>"+offer.getExpiry_date()+"</h4>	"
					+ "<h4><a href='getoffer/"+offer.getId_offers()+"'>"+offer.getOffer_title()+"</a> </h4>	<p>"+offer.getOffer_description()
					+"<a target='_blank' href='getcouponcode/"+offer.getCoupon_code()+"'>See more</a>.</p>	 </div>	 <div class='ratings'>	<p class='pull-right'>"+offer.getCoupon_code()
					+"</p>	<p> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star-empty'></span> <span class='glyphicon glyphicon-star-empty'></span> </p>	</div> </div> </div> </div>");
		}
	    
	    return result.toString();
	  }
	 
	 @RequestMapping(value = "/companiesBySearch", method = RequestMethod.GET)
	    public  @ResponseBody   String getCompaniesBySearch(@RequestParam String search) {
//			List<Offers> offers = offersService.findCompanyOffers(Integer.parseInt(companyid));
//	    String result = "Ajax ran successfully. Search : "+search;

		List<Offers[]> offerscompanywise = offersService.findAllOffersCompanywise();
		System.out.println(offerscompanywise);
		StringBuffer result = new StringBuffer();
		for(Object companyoffers[]:offerscompanywise)
		{
			if(((Company)companyoffers[0]).getCompany_name().toUpperCase().contains(search.toUpperCase()))
			{
				result.append("<li class='list-group-item'><span class='badge'>"+companyoffers[1]+"</span>"); 
				result.append("<a href='javascript:loadOffersAjax("+((Company)companyoffers[0]).getId_company()+")'>"+((Company)companyoffers[0]).getCompany_name()+"</a></li>");
			}
		}		

/*
		<c:forEach items="${offerscompanywise}" var="companyoffers">
		<li class="list-group-item"><span class="badge">${companyoffers[1]}</span> 
<!-- 
<label class="go-checkbox"><input type="checkbox" name="filterBy" data-catid=
"23" data-type="cat" class="coupon-filter-check" />							
-->
			<a href="javascript:loadOffersAjax(${companyoffers[0].id_company})">${companyoffers[0].company_name}</a></li>
	
</c:forEach>
		
		/*	    
		StringBuffer result = new StringBuffer("<h2>Ajax Offers Loaded.. Company ID: "+companyid+".</h2>");
		for(Offers offer:offers)
		{
			result.append("<div class='col-sm-4 col-lg-4 col-md-4'><div class='thumbnail'><div class='caption'>	<h4 class='pull-right'>"+offer.getExpiry_date()+"</h4>	"
					+ "<h4><a href='getoffer/"+offer.getId_offers()+"'>"+offer.getOffer_title()+"</a> </h4>	<p>"+offer.getOffer_description()
					+"<a target='_blank' href='getcouponcode/"+offer.getCoupon_code()+"'>See more</a>.</p>	 </div>	 <div class='ratings'>	<p class='pull-right'>"+offer.getCoupon_code()
					+"</p>	<p> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star'></span> <span class='glyphicon glyphicon-star-empty'></span> <span class='glyphicon glyphicon-star-empty'></span> </p>	</div> </div> </div> </div>");
		}
*/	    
	    return result.toString();
	  }
	 

	 /**
	 * This method will list all existing users.
	@RequestMapping(value = { "/", "/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {

		List<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		return "userslist";
	}
	 */

	/**
	 * This method will provide the medium to add a new user.
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		return "registration";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}
		
		userService.saveUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
		//return "success";
		return "registrationsuccess";
	}


	/**
	 * This method will provide the medium to update an existing user.
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String ssoId, ModelMap model) {
		User user = userService.findBySSO(ssoId);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		return "registration";
	}
	
	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result,
			ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*Uncomment below 'if block' if you WANT TO ALLOW UPDATING SSO_ID in UI which is a unique key to a User.
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}

		userService.updateUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
		return "registrationsuccess";
	}

	
	/**
	 * This method will delete an user by it's SSOID value.
	 
	@RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String ssoId) {
		userService.deleteUserBySSO(ssoId);
		return "redirect:/list";
	}
	

	/**
	 * This method will provide UserProfile list to views
	 
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}
*/
}
