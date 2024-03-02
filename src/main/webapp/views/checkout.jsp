<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/magnific-popup.css">
<link rel="stylesheet" href="../../css/jquery-ui.css">
<link rel="stylesheet" href="../../css/owl.carousel.min.css">
<link rel="stylesheet" href="../../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../css/aos.css">
<link rel="stylesheet" href="../../css/style.css">

</head>
<body>

	<div class="site-wrap">
		<%@include file="/common/header.jsp"%>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <a
							href="cart.html">Cart</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Checkout</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-md-12">
						<div class="border p-4 rounded" role="alert">
							Returning customer? <a href="#">Click here</a> to login
						</div>
					</div>
				</div>

				<form action="/checkout.html" method="post">
					<div class="row">
						<div class="col-md-6 mb-5 mb-md-0">
							<h2 class="h3 mb-3 text-black">Your Order</h2>
							<div class="p-3 p-lg-5 border">
								<table class="table site-block-order-table mb-5">
									<thead>
										<th>Product</th>
										<th>Total</th>
									</thead>
									<tbody>
										<c:forEach var="item" items="${cartItems}">
											<tr>
											  <input type="hidden" name="idProduct" value="${item.id}"/>
											  <input type="hidden" name="countProduct" value="${item.quantity}"/>											 
												<td>${item.name}<strong class="mx-2">x</strong>${item.quantity}</td>
												<td>$<fmt:formatNumber type="number"
														value="${item.price * item.quantity}" /></td>
											</tr>
										</c:forEach>

										<!-- <tr>
											<td class="text-black font-weight-bold"><strong>Ship</strong></td>
											<td class="text-black">$2</td>
										</tr> -->
										<tr>
											<td class="text-black font-weight-bold"><strong>Order
													Total</strong></td>
											<td class="text-black font-weight-bold"><strong>$${total}</strong></td>
										</tr>
									</tbody>
								</table>

								<div class="btn-group btn-group-toggle d-flex flex-column mb-4"
									data-toggle="buttons">
									<label class="btn btn-secondary active"> <input
										type="radio" name="options" id="option1" autocomplete="off"
										checked> Thanh toán khi nhận hàng
									</label> <label class="btn btn-secondary"> <input type="radio"
										name="options" id="option2" autocomplete="off">
										Momo/ZaloPay
									</label> <label class="btn btn-secondary"> <input type="radio"
										name="options" id="option3" autocomplete="off"> Thẻ
										ngân hàng
									</label>
								</div>

								<div class="form-group">
									<button class="btn btn-primary btn-lg py-3 btn-block">Place Order</button>
								</div>
							</div>
						</div>

						<div class="col-md-6">

							<div class="row mb-5">
								<div class="col-md-12">
									<h2 class="h3 mb-3 text-black">Billing Details</h2>
									<div class="p-3 p-lg-5 border">

										<div class="form-group row">
											<div class="col-md-12">
												<label for="c_fname" class="text-black">Name<span
													class="text-danger">*</span></label> <input type="text"
													class="form-control" id="fullname" name="fullname"
													value="${sessionScope.user.fullname}" required>
											</div>
										</div>

										<div class="form-group row">
											<div class="col-md-12">
												<label for="c_address" class="text-black">Address <span
													class="text-danger">*</span></label> <input type="text"
													class="form-control" id="address" name="address"
													placeholder="Address" required>
											</div>
										</div>
										<div class="form-group row">
											<div class="col-md-12">
												<label for="c_email_address" class="text-black">Email
													Address <span class="text-danger">*</span>
												</label> <input type="text" class="form-control"
													id="email" name="email"
													value="${sessionScope.user.email}" required>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row mb-5">
								<div class="col-md-12">
									<h2 class="h3 mb-3 text-black">Coupon Code</h2>
									<div class="p-3 p-lg-5 border">
										<label for="c_code" class="text-black mb-3">Enter your
											coupon code if you have one</label>
										<div class="input-group w-75">
											<input type="text" class="form-control" id="c_code"
												placeholder="Coupon Code" aria-label="Coupon Code"
												aria-describedby="button-addon2">
											<div class="input-group-append">
												<button class="btn btn-primary btn-sm" type="button"
													id="button-addon2">Apply</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>



			</div>
		</div>

		<%@include file="/common/footer.jsp"%>
	</div>

	<script src="../../js/jquery-3.3.1.min.js"></script>
	<script src="../../js/jquery-ui.js"></script>
	<script src="../../js/popper.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/owl.carousel.min.js"></script>
	<script src="../../js/jquery.magnific-popup.min.js"></script>
	<script src="../../js/aos.js"></script>
	<script src="../../js/main.js"></script>

</body>
</html>