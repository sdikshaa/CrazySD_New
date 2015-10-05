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
<link href="<c:url value='/static/css/bootstrap.min.css' />"
	rel="stylesheet"></link>
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
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header page-scroll"
			style="float: left; border: #333 thin dotted">
			<a href="index.html" class="page-scroll logo"> <img
				src="<c:url value='/static/images/Crazy Shopping Deals Logo.png' />"
				alt="Crazy Shopping Deals" class="img-responsive">
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
		<div
			class="collapse navbar-collapse navbar-ex1-collapse navbar-header page-scroll searchbar"
			id="bs-example-navbar-collapse-1"
			style="border: #006 thin dotted; float: right">

			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group input-group"
					style="border: #006 thin dotted; float: right">
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-addon" style="padding: 0px 5px"> <a
						href="#"><img src="images/Search Icon.png" height="20"
							width="20"> </a></span>
				</div>
			</form>
		</div>
		<!-- Top Menu bar -->
		<div
			class="collapse navbar-collapse js-navbar-collapse navbar-ex1-collapse "
			id="bs-example-navbar-collapse-1"
			style="border: #006 thin dotted; float: right;" align="left">
			<ul class="nav navbar-nav navbar-center col-sm-12">
				<li class="dropdown"><a class="dropdown-toggle " href="#home"
					data-toggle="dropdown" role="button" aria-expanded="false">Home
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
				<li><a class="menu " href="#about">About us</a></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle topmenu" data-toggle="dropdown">Our
						services <span class="glyphicon glyphicon-chevron-down pull-right"></span>
				</a>
					<ul class="dropdown-menu mega-dropdown-menu row">
						<li class="col-sm-6">
							<ul>
								<li class="dropdown-header">New in Stores</li>
								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><img
												src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 1"></a>
											<h4>
												<small>Summer dress floral prints</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/ef5e55/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 2"></a>
											<h4>
												<small>Gold sandals with shiny touch</small>
											</h4>
											<button class="btn btn-primary" type="button">9,99 €</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 3"></a>
											<h4>
												<small>Denin jacket stamped</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="#">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Dresses</li>
								<li><a href="#">Unique Features</a></li>
								<li><a href="#">Image Responsive</a></li>
								<li><a href="#">Auto Carousel</a></li>
								<li><a href="#">Newsletter Form</a></li>
								<li><a href="#">Four columns</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Tops</li>
								<li><a href="#">Good Typography</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Jackets</li>
								<li><a href="#">Easy to customize</a></li>
								<li><a href="#">Glyphicons</a></li>
								<li><a href="#">Pull Right Elements</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Pants</li>
								<li><a href="#">Coloured Headers</a></li>
								<li><a href="#">Primary Buttons & Default</a></li>
								<li><a href="#">Calls to action</a></li>
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
										<label class="sr-only" for="email">Email address</label> <input
											type="email" class="form-control" id="email"
											placeholder="Enter email">
									</div>
									<button type="submit" class="btn btn-primary btn-block">Sign
										in</button>
								</form>
							</ul>
						</li>
					</ul></li>
				<li><a class="menu" href="#contact"> contact us</a></li>
				<li><a class="menu" href="#about">about us</a></li>
				<li><a class="menu" href="#about">about us</a></li>
			</ul>
		</div>
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
						<h3>Today's Crazy Deals</h3>

						<ul class="list-group">
					<c:forEach items="${offerscompanywise}" var="companyoffers">
							<li class="list-group-item"><span class="badge">${companyoffers[1]}</span> 
							<a href="#">${companyoffers[0].company_name}</a></li>
					</c:forEach>
					
<!--						<li class="list-group-item"><span class="badge">2</span> <a
								href="#">Paytm Coupons</a></li>
							<li class="list-group-item"><span class="badge">1</span> <a
								href="#">SnapDeals Offers</a></li>
		
 -->	
 						</ul>
 					</div>
					<div class="sidebar-item  recent">
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
					<h2 class="title text-center">recommended items</h2>
					<div id="recommended-item-carousel" class="carousel slide"
						data-ride="carousel" style="border: #00F outset thin">
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="left recommended-item-control"
							href="#recommended-item-carousel" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right recommended-item-control"
							href="#recommended-item-carousel" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
				<div class="row" style="margin-top: 50px">
					<div
						class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/1.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded folio">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/2.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/3.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/4.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mobile">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/5.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mockup">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/6.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded folio">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/7.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/8.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
						</div>
					</div>
					<div
						class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
						<div class="portfolio-wrapper">
							<div class="portfolio-single">
								<div class="portfolio-thumb">
									<img src="images/product-img.jpg" class="img-responsive" alt="">
								</div>
								<div class="portfolio-view">
									<ul class="nav nav-pills">
										<li><a href="portfolio-details.html"><i
												class="fa fa-link"></i></a></li>
										<li><a href="images/portfolio/9.jpg"
											data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="portfolio-info ">
								<h2>Sailing Vivamus</h2>
							</div>
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
				<c:forEach items="${offers}" var="offer">
					<tr>
						<td>${offer.id_offers}</td>
						<td>${offer.small_title}</td>
						<td>${offer.offer_title}</td>
						<td>${offer.offer_description}</td>
						<td>${offer.coupon_code}</td>
						<td>${offer.created_date}</td>
						<td>${offer.expiry_date}</td>
						<td>${offer.start_date}</td>
						<td>${offer.tracking_url}</td>
					</tr>
				</c:forEach>
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
</body>
</html>
