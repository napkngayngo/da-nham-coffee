<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<header class="site-navbar" role="banner">
	<div class="site-navbar-top">
		<div class="container">
			<div class="row align-items-center">

				<div
					class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
					<form action="/shop.html/search" class="site-block-top-search">
						<span class="icon icon-search2"></span> <input type="text"
							name="keywords" value="${keywords}" onblur="this.form.submit()"
							class="form-control border-0" placeholder="Search">
					</form>
				</div>

				<div
					class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
					<div class="site-logo">
						<a href="index.html" class="js-logo-clone">DA NHAM</a>
					</div>
				</div>

				<div class="col-6 col-md-4 order-3 order-md-3 text-right">
				
					<div class="site-top-icons">
						
						
						<ul>
							<li><a href="/login.html">${sessionScope.user.username} <span class="icon icon-person"></span></a></li>
							<li><a href="#"><span class="icon icon-heart-o"></span></a></li>
							<li><a href="cart.html" class="site-cart"> <span
									class="icon icon-shopping_cart"></span> <span class="count">${cartQuantity}</span>
							</a></li>
							<li class="d-inline-block d-md-none ml-md-0"><a href="#"
								class="site-menu-toggle js-menu-toggle"><span
									class="icon-menu"></span></a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
	<nav class="site-navigation text-right text-md-center"
		role="navigation">
		<div class="container">
			<ul class="site-menu js-clone-nav d-none d-md-block">
				<li>
					<!-- class="has-children active" --> <a href="/index.html">Home</a>
					<!-- <ul class="dropdown">
						<li><a href="#">Menu One</a></li>
						<li><a href="#">Menu Two</a></li>
						<li><a href="#">Menu Three</a></li>
						<li class="has-children"><a href="#">Sub Menu</a>
							<ul class="dropdown">
								<li><a href="#">Menu One</a></li>
								<li><a href="#">Menu Two</a></li>
								<li><a href="#">Menu Three</a></li>
							</ul></li>
					</ul> -->
				</li>
				<li>
					<!-- class="has-children" -->
					<a href="/about.html">About</a> <!-- <ul class="dropdown">
						<li><a href="#">Menu One</a></li>
						<li><a href="#">Menu Two</a></li>
						<li><a href="#">Menu Three</a></li>
					</ul> -->
				</li>
				<li class="has-children"><a href="/shop.html">Menu</a>
					<ul class="dropdown">
						<li><a href="/shop.html/searchBrand?brand=Ice Coffee">Ice Coffee</a></li>
						<li><a href="/shop.html/searchBrand?brand=Milk Coffee">Milk Coffee</a></li>
						<li><a href="/shop.html/searchBrand?brand=Fruit Tea">Fruit Tea</a></li>
					</ul></li>
				<li><a href="#">New Arrivals</a></li>
				<li><a href="/contact.html">Contact</a></li>
				
				<c:choose>
					<c:when test="${not empty sessionScope.user}">
						<li><a href="/logout.html">Logout</a></li>
					</c:when>
					<c:otherwise>
						<li class="has-children"><a href="/login.html">Login</a>
							<ul class="dropdown">
								<li><a href="/register.html">Register</a></li>						
							</ul>
						</li>
						<!-- <li><a href="/login.html">Login</a></li> -->
					</c:otherwise>
				</c:choose>
				
				 <c:if test="${sessionScope.user.admin}">
					<li class="has-children"><a href="admin.html">Admin</a>
					<ul class="dropdown">
					  <li><a href="/history">History</a></li>
            <li><a href="/revenue">Doanh thu năm</a></li>
						<li><a href="/account.html">Account</a></li>
						<li><a href="/orderDetail">OrderDetail</a></li>
						<li><a href="/productAdmin">Product</a></li>
						<li><a href="/categoryAdmin">Category</a></li>
						<li><a href="/report">Report</a></li>
					</ul>
					</li>
				</c:if> 
				
				
			</ul>
		</div>
	</nav>
</header>

