<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="/common/cssFile.jsp"%>

</head>
<body>

	<div class="site-wrap">
		<%@include file="/common/header.jsp"%>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">${prod.name}</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 dt">
							<img src="../../images/${prod.image}" object-fit="cover" alt="Image"
							class="img-fluid img-dt">
					</div>
					<div class="col-md-4">
						<%--             <h2 class="text-black">${prod.brand}</h2> --%>
						<p>${prod.name}</p>
						<%--            <p>${prod.name}-${prod.details}</p> --%>
						<p>
							<strong class="text-primary h4">$ ${prod.price}</strong>
						</p>
						<p>
							<a href="/cart.html/add/${prod.id}"
								class="mt-5 buy-now btn btn-sm w-100 btn-primary">Add To
								Cart</a>
						</p>

						<p>
							<a href="/shop.html" class="btn btn-primary btn-sm btn-block">Continue
								Shopping</a>
						</p>

					</div>

					<!--  tab -->
					<c:forEach items="${prod.category.products}" var="item">
						<div class="row thumb-img">
							<figure class="col-lg-3 block-4-image">
								<a href="/shop-single.html/${item.id}"><img
									src="../../images/${item.image}" alt="Image placeholder" max-width="100px" max-height="100px" object-fit="cover"
									class="img-thumb"></a>
							</figure>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>



		<%@include file="/common/footer.jsp"%>
	</div>
	<%@include file="/common/jsFile.jsp"%>

</body>
</html>