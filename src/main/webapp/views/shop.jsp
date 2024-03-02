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
							class="text-black">Menu</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">

				<div class="row mb-5">
					<div class="col-md-9 order-2">

						<div class="row">
							<div class="col-md-12 mb-5">
								<div class="float-md-left mb-4">
									<h2 class="text-black h5">Menu All</h2>
								</div>
								<div class="d-flex">
									<div class="dropdown mr-1 ml-md-auto">
										<button type="button"
											class="btn btn-secondary btn-sm dropdown-toggle"
											id="dropdownMenuOffset" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">Menu</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuOffset">
											<a class="dropdown-item" href="/shop.html/searchBrand?brand=Ice Coffee">Ice Coffee</a>
											<a class="dropdown-item" href="/shop.html/searchBrand?brand=Milk Coffee">Milk Coffee</a>
											<a class="dropdown-item" href="/shop.html/searchBrand?brand=Fruit Tea">Fruit Tea</a>
										</div>
									</div>
									<div class="btn-group">
										<button type="button"
											class="btn btn-secondary btn-sm dropdown-toggle"
											id="dropdownMenuReference" data-toggle="dropdown">Reference</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuReference">
											<a class="dropdown-item" href="/shop.html/sort1?asc=name">Name,
												A to Z</a> <a class="dropdown-item" href="/shop.html/sort?desc=name">Name,
												Z to A</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="/shop.html/sort1?asc=price">Price,
												low to high</a> <a class="dropdown-item"
												href="/shop.html/sort?desc=price">Price, high to low</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-5">

							<c:forEach var="item" items="${products.content}">
								<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
									<div class="block-4 text-center border">
										<figure class="block-4-image">
											<a href="/shop-single.html/${item.id}"><img
												src="../../images/${item.image}" alt="Image placeholder"
												class="img-fluid img-dt"></a>
										</figure>
										<div class="block-4-text p-4">
											<h3>
												<a href="/shop-single.html/${item.id}">${item.category.name}</a>
											</h3>
											<p class="mb-0">${item.name}</p>
											<p class="text-primary font-weight-bold">$ ${item.price}</p>
											<a href="/cart.html/add/${item.id}">Add to cart</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="row" data-aos="fade-up">
							<div class="col-md-12 text-center">
								<div class="site-block-27">
                  <!-- ĐIỀU HƯỚNG -->
									<c:choose>
										<c:when test="${not empty check}">
											<ul>
												<li><a href="/shop.html/search?p=0">&lt;</a></li>
												<c:forEach varStatus="i" begin="1"
													end="${products.totalPages}">
													<li><a href="/shop.html/search?p=${i.index-1}">${i.index}</a></li>
												</c:forEach>
												<li><a
													href="/shop.html/search?p=${products.totalPages - 1}">&gt;</a></li>
											</ul>
										</c:when>
										
										<c:when test="${not empty check1}">
                      <ul>
                        <li><a href="/shop.html/findByPrice?p=0">&lt;</a></li>
                        <c:forEach varStatus="i" begin="1"
                          end="${products.totalPages}">
                          <li><a href="/shop.html/findByPrice?p=${i.index-1}">${i.index}</a></li>
                        </c:forEach>
                        <li><a
                          href="/shop.html/findByPrice?p=${products.totalPages - 1}">&gt;</a></li>
                      </ul>
                    </c:when>
                    
                    <c:when test="${not empty check2}">
                      <ul>
                        <li><a href="/shop.html/searchBrand?p=0">&lt;</a></li>
                        <c:forEach varStatus="i" begin="1"
                          end="${products.totalPages}">
                          <li><a href="/shop.html/searchBrand?p=${i.index-1}">${i.index}</a></li>
                        </c:forEach>
                        <li><a
                          href="/shop.html/searchBrand?p=${products.totalPages - 1}">&gt;</a></li>
                      </ul>
                    </c:when>
                    
                    <c:when test="${not empty check3}">
                      <ul>
                        <li><a href="/shop.html/sort?p=0">&lt;</a></li>
                        <c:forEach varStatus="i" begin="1"
                          end="${products.totalPages}">
                          <li><a href="/shop.html/sort?p=${i.index-1}">${i.index}</a></li>
                        </c:forEach>
                        <li><a
                          href="/shop.html/sort?p=${products.totalPages - 1}">&gt;</a></li>
                      </ul>
                    </c:when>
                    
                    <c:when test="${not empty check4}">
                      <ul>
                        <li><a href="/shop.html/sort1?p=0">&lt;</a></li>
                        <c:forEach varStatus="i" begin="1"
                          end="${products.totalPages}">
                          <li><a href="/shop.html/sort1?p=${i.index-1}">${i.index}</a></li>
                        </c:forEach>
                        <li><a
                          href="/shop.html/sort1?p=${products.totalPages - 1}">&gt;</a></li>
                      </ul>
                    </c:when>
                    
										<c:otherwise>
											<ul>
												<li><a href="/shop.html?p=0">&lt;</a></li>
												<c:forEach varStatus="i" begin="1"
													end="${products.totalPages}">
													<li><a href="/shop.html?p=${i.index-1}">${i.index}</a></li>
												</c:forEach>
												<li><a href="/shop.html?p=${products.totalPages - 1}">&gt;</a></li>
											</ul>
										</c:otherwise>
									</c:choose>



								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3 order-1 mb-5 mb-md-0">
						<div class="border p-4 rounded mb-4">
							<h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
							<ul class="list-unstyled mb-0">
								<li class="mb-1"><a href="/shop.html?brand=Ice Coffee"
									class="d-flex"><span>Ice Coffee</span> <span
										class="text-black ml-auto">(2,220)</span></a></li>
								<li class="mb-1"><a href="/shop.html?brand=Milk Coffee"
									class="d-flex"><span>Milk Coffee</span> <span
										class="text-black ml-auto">(2,550)</span></a></li>
								<li class="mb-1"><a href="/shop.html?brand=Fruit Tea"
									class="d-flex"><span>Fruit Tea</span> <span
										class="text-black ml-auto">(2,124)</span></a></li>
							</ul>
						</div>

						<div class="border p-4 rounded mb-4">
							<div class="mb-4">
								<h3 class="mb-3 h6 text-uppercase text-black d-block">Filter
									by Price</h3>
								<form action="/shop.html/findByPrice" method="get">
									<div class="row justify-content-center">
										<div class="col">
											<div class="input-group">

												<input type="text" class="form-control rounded" name="min"
													value="${param.min}" placeholder="Giá thấp">
											</div>
										</div>
										<div>
											<span class="h4">-</span>
										</div>
										<div class="col">
											<div class="input-group">
												<input type="text" class="form-control rounded" name="max"
													value="${param.max}" placeholder="Giá cao">
											</div>
										</div>
										<div class="col-auto mt-2 ">
											<button type="submit" class="btn btn-warning"
												style="height: 30px; width: 210px">
												<i class="bi bi-search"></i> Tìm kiếm
											</button>
										</div>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>


			</div>
		</div>

		<%@include file="/common/footer.jsp"%>
	</div>

	<%@include file="/common/jsFile.jsp"%>

</body>
</html>