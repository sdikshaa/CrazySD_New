<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Crazy Shopping Deals - Coupons, Offers, Deals</title>
<!-- Bootstrap Core CSS -->

<link href="<c:url value='/static/images/CrazySD_Icon.png' />" rel="icon"></link>
<link href="<c:url value='/static/css/bootstrap.min.css' />" rel="stylesheet"></link>
<!-- Custom CSS -->
<link href="<c:url value='/static/css/CSD.css' />" rel="stylesheet"></link>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color:#313131;"">
	<div class="container">
		<div class="navbar-header page-scroll" style="float: left;">
			<a href="index.html" class="logo"> 
			<img src="<c:url value='/static/images/Crazy Shopping Deals Logo.png' />"
				alt="Crazy Shopping Deals" >
			</a>

		</div>
		<div style="float: right; border: #333 thin dotted;" class="smallmenu">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!--  IMP     <a class="navbar-brand" href="#">Menus</a> -->
		</div>

		<!-- Top Menu -->
		<div class="collapse navbar-collapse navbar-ex1-collapse navbar-header page-scroll" id="bs-example-navbar-collapse-1 "  style="float:right" >

<div class="top-searchbar">
		    <div class="input-group ">
                <div class="input-group-btn search-panel dropdown mega-dropdown">
                    <button type="button" style="height:40px;padding-left:50px; padding-right:50px" class="btn btn-default dropdown-toggle dropdown-toggle topmenu" data-toggle="dropdown">
                    	<span id="search_concept" style="font-weight:bold; font-size:17px; font-family:'Trebuchet MS', Arial, Helvetica, sans-serif"" >Categories </span> <span class="caret"></span>
                    </button>
                   
<ul class="dropdown-menu mega-dropdown-menu" style="width:700px">
            <li class="col-sm-6 col-xs-12">
              <ul>
                <li class="dropdown-header">New in Stores</li>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="item active"> <a href="#"><img src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 1"></a>
                      <h4><small>Summer dress floral prints</small></h4>
                      <button href="#" class="btn btn-success" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>
					<button type="submit" class="btn">Search</button>
                    </div>
                    <!-- End Item -->
                    <div class="item"> <a href="#"><img src="http://placehold.it/254x150/ef5e55/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 2"></a>
                      <h4><small>Gold sandals with shiny touch</small></h4>
                      <button class="btn btn-primary" type="button">9,99 €</button>
                      <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>
                    </div>
                    <!-- End Item -->
                    <div class="item"> <a href="#"><img src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 3"></a>
                      <h4><small>Denin jacket stamped</small></h4>ilin
                      <button class="btn btn-primary" type="button">49,99 €</button>
                      <button href="#" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</button>
                    </div>
                    <!-- End Item -->
                  </div>
                  <!-- End Carousel Inner -->
                </div>
                <!-- /.carousel -->
                <li class="divider"></li>
                <li><a href="#">View all Collection <span class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header">Accessories</li>
                <li><a href="#">Default Navbar</a></li>
                <li><a href="#">Lovely Fonts</a></li>
                <li><a href="#">Responsive Dropdown </a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Newsletter</li>
                <form class="form" role="form">
                  <div class="form-group">
                    <label class="sr-only" for="email">Email address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email">
              </div>
                  <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                </form>
              </ul>
            </li>
          </ul>                </div>
                <input type="hidden" name="search_param" value="all" id="search_param" style="height:40px; " >         
                <input type="text" class="form-control" name="x" placeholder="Search term..." style="height:40px;" >
                <span class="input-group-btn">
                      <button class="btn btn-default" type="button" style="height:40px; padding-left:25px; padding-right:25px; background-color:#09A5E8; color:#FFF; font-weight:bold; font-size:17px; font-family:'Trebuchet MS', Arial, Helvetica, sans-serif" >Search</button>
                </span>
            </div>
        </div>
        

  
    </div>
		<!-- Top Menu bar -->
		
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- Intro Section -->


	<section id="projects" class="padding-top">
	<div class="container contentarea">
		<div class="row">
			<div class="col-md-3 col-sm-4">
				<div class="sidebar portfolio-sidebar">
					<div class="sidebar-item categories">
					
            <div class="ipage-minor-section">
						<h3>Company wise Deals</h3>

              <div class="ipage-search form-group has-feedback">
                <input type="text"  id="searchCompany" class="form-control ipage-filter-search" placeholder=
                "Search companies" onkeyup="javascript:loadCompaniesAjax()" />
              </div>

              <div class="ipage-filters">
                <ul class="list-unstyled filters-list" id="companiesFilter">
					<c:forEach items="${offerscompanywise}" var="companyoffers">
							<li class="list-group-item"><span class="badge">${companyoffers[1]}</span> 
<!-- 
<label class="go-checkbox"><input type="checkbox" name="filterBy" data-catid=
                    "23" data-type="cat" class="coupon-filter-check" />							
 -->
 							<a href="javascript:loadOffersAjax(${companyoffers[0].id_company})">${companyoffers[0].company_name}</a></li>
						
					</c:forEach>
				</ul>
			  </div>	
			  
						<h3>Category wise Deals</h3>
              <div class="ipage-filters">
                <ul class="list-unstyled filters-list" id="companiesFilter">
					<c:forEach items="${offerscategorywise}" var="categoryoffers">
							<li class="list-group-item"><span class="badge">${categoryoffers[1]}</span> 
<!-- 
<label class="go-checkbox"><input type="checkbox" name="filterBy" data-catid=
                    "23" data-type="cat" class="coupon-filter-check" />							
 -->
 							<a href="javascript:loadOffersAjax(${categoryoffers[0].id_category})">${categoryoffers[0].category_name}</a></li>
						
					</c:forEach>
				</ul>
			  </div>	
			  
			  
					  </div>				
					
					
<!-- 
						<ul class="list-group">
					<c:forEach items="${offerscompanywise}" var="companyoffers">
							<li class="list-group-item"><span class="badge">${companyoffers[1]}</span> 
							<a href="javascript:loadOffersAjax(${companyoffers[0].id_company})">${companyoffers[0].company_name}</a></li>
					</c:forEach>

						<li class="list-group-item"><span class="badge">2</span> <a
								href="#">Paytm Coupons</a></li>
 -->	
 					</div>
					<div style="margin-top: 20px" class="sidebar-item  recent">
						<div class="panel panel-primary">
							<div class="panel-heading">Recent Searches</div>
							<div class="panel-body">
								<a href="#" style="margin: 5px 0px;">Paytm </a><br> <a
									href="#" style="margin: 5px 0px;">Paytm </a>
							</div>
						</div>
					</div>
					<div class="sidebar-item popular">
						<div class="list-group">
							<a href="#" class="list-group-item active"> Popular Items </a> <a
								href="#" class="list-group-item">Paytm </a> <a href="#"
								class="list-group-item">Snap Deal </a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-sm-8">
				<div class="recommended_items">
					<!--recommended_items-->
					<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel" >
						
<!--  New Offers  
	<c:forEach items="${offers}" var="offer">
       <div class="col-sm-4 col-lg-4 col-md-4">
        <div class="thumbnail"> 
          <div class="caption">
            <h4 class="pull-right">${offer.expiry_date}</h4>
            <h4><a href="getoffer/${offer.id_offers}">${offer.offer_title}</a> </h4>
            <p>${offer.offer_description} <a target="_blank" href="getcouponcode/${offer.id_offers}">See more</a>.</p>
          </div>
          <div class="ratings">
            <p class="pull-right">${offer.coupon_code}</p>
            <p> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star-empty"></span> <span class="glyphicon glyphicon-star-empty"></span> </p>
          </div>
        </div>
      </div>
	</c:forEach>
-->
	<c:forEach items="${offers}" var="offer">
			<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12  offer-box">
            
                <div class="col-md-3 col-sm-12 col-lg-2 col-xl-2  thumbnail text-center offer-box-company">
                    <img src="<c:url value='/static/images/Company_Logo/Paytm-Logo.png' />" style="border:#09F thin outset;" height="30" width="110">
                    <h4>100% OFF</h4>
                </div>
                <div class="col-md-9 col-sm-12 col-lg-8 offer-box-details">
		            <h4><a href="getoffer/${offer.id_offers}">${offer.offer_title}</a> </h4>
		            <p>${offer.offer_description}</p>
                </div>
                <div class="col-md-12 col-sm-12 col-lg-2 offer-box-coupon" align="center">
                    <img class="coupon-bk-main" src="<c:url value='/static/images/coupon_back.png' />" height="40" width="130" style="position:relative;">
                    <img class="coupon-bk-extra" src="<c:url value='/static/images/coupon_back.png' />" height="40" width="130" style="position:absolute;top:2px;right:10px; ">
					<h4 style="position:absolute;top:2px;right:10px; text-align:center">${offer.coupon_code}</h4>
                    <a href="getcouponcode/${offer.id_offers}" >
                    <img src="<c:url value='/static/images/coupon_front.png' />" height="48" width="120" style="position:absolute;top:-11px;right:12px; ">
					</a>
                    <h6 class="coupon-ends" style="margin-top:10px; font-weight:bold"><span class="glyphicon glyphicon-bell"></span> Ends on 12 Oct 15</h6>
                    <h6 class="coupon-verified" style="margin-top:10px;font-weight:bold; color:#390; font-style:italic"><span class="glyphicon glyphicon-ok"></span> Verified</h6>
                </div>
            </div>     
	</c:forEach>
                               
<!--  New Offers Close 

				<div class="row" style="margin-top: 50px" id="result">
				
	<c:forEach items="${offers}" var="offer">
       <div class="col-sm-4 col-lg-4 col-md-4">
        <div class="thumbnail"> 
          <div class="caption">
            <h4 class="pull-right">${offer.expiry_date}</h4>
            <h4><a href="getoffer/${offer.id_offers}">${offer.offer_title}</a> </h4>
            <p>${offer.offer_description} <a target="_blank" href="getcouponcode/${offer.id_offers}">See more</a>.</p>
          </div>
          <div class="ratings">
            <p class="pull-right">${offer.coupon_code}</p>
            <p> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star-empty"></span> <span class="glyphicon glyphicon-star-empty"></span> </p>
          </div>
        </div>
      </div>
	</c:forEach>
	
			</div>

-->                     
                        
					</div>
				</div>
					<div class="portfolio-pagination">
						<ul class="pagination">
							<li><a href="#">left</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li class="active"><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#">right</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Contact Section -->
	<!--
for Menu  
-->
	<div class="container ">
		<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a href="https://openshift.redhat.com/app/console/application_types"
				class="btn btn-primary">Add <strong>Application…</strong> <i
				class="icon-add"></i>
			</a>
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target=".js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">MegaMenu</a>
		</div>
	</div>
	<!-- /.nav-collapse -->



	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h1 align="center">OFferTypewise Section</h1>
				<table border="1" bordercolor="black" >
				<c:forEach items="${offerstypewise}" var="offerstypewise">
					<tr>
						<td>${offerstypewise[0]}</td>
						<td>${offerstypewise[1]}</td>
						<td>${offerstypewise[2].offertype_name}</td>
						<td>${offerstypewise[3]}</td>
					</tr>
				</c:forEach>
				</table>
				<h1 align="center">Companies Section</h1>
				<table>
				<c:forEach items="${companies}" var="company">
					<tr>
						<td>${company.id_company}</td>
						<td>${company.company_name}</td>
						<td>${company.logo_src}</td>
						<td><a href="<c:url value='/edit-user-${company.id_company}' />" class="btn btn-success custom-width">edit</a></td>
						<td><a href="<c:url value='/delete-user-${company.company_name}' />" class="btn btn-danger custom-width">delete</a></td>
					</tr>
				</c:forEach>
				</table>
				<h1 align="center">Offers Section</h1>
				<table>
				</table>
			</div>
		</div>
	</div>
	<!-- jQuery -->
	<script src="<c:url value='/static/js/jquery.js' />"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value='/static/js/bootstrap.min.js' />"></script>
	<!-- Scrolling Nav JavaScript -->
	<script src="<c:url value='/static/js/jquery.easing.min.js' />"></script>
	<script src="<c:url value='/static/js/scrolling-nav.js' />"></script>

	<script type="text/javascript">
	    function loadOffersAjax(compid) {
	        $.ajax({
	            url : '${pageContext.request.contextPath}/offersByCompanyId',
	            data: ({companyid : compid}),
	            success : function(data) {
	                $('#result').html(data);
	            }
	        });
//	    	alert("hi "+compid);
	    }
	    
	    function loadCompaniesAjax() {
	        $.ajax({
	            url : '${pageContext.request.contextPath}/companiesBySearch',
	            data: ({search : document.getElementById("searchCompany").value}),
	            success : function(data) {
	                $('#companiesFilter').html(data);
	            }
	        });
	        
//	    	alert("Text "+searchVal);
	    }
	    
	</script>
</body>
</html>
