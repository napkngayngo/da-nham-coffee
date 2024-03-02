<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

</head>
<body>

	<div class="site-wrap">
		<%@include file="/common/header.jsp"%>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Admin</strong> <span class="mx-2 mb-0">/</span>
						<strong class="text-black">Products</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<form action="#" method="post">
							<div class="p-3 p-lg-5 border">
								<div class="form-group row">
									<div class="col-md-2">
										<label for="c_category" class="text-black">Category</label> <input
											type="text" class="form-control" id="c_category"
											name="c_category" />
									</div>
									<div class="col-md-10">
										<label for="c_name" class="text-black"> Name</label> <input
											type="text" class="form-control" id="c_name" name="c_name" />
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-10">
										<label for="c_img" class="text-black">Image</label> <input
											class="form-control" type="file" id="c_img" />
									</div>
									<div class="col-md-2">
										<label for="c_price" class="text-black">Price</label> <input
											type="text" class="form-control" id="c_price" name="c_price" />
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-10">
										<label for="c_date" class="text-black">Date </label> <input
											type="text" class="form-control" id="c_date" name="c_date" />
									</div>
									<div class="col-md-2">
										<label for="c_size" class="text-black">Size </label> <input
											type="text" class="form-control" id="c_size" name="c_size" />
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-4">
										<button class="btn btn-info">Create</button>

										<button class="btn btn-info">Edit</button>

										<button class="btn btn-info">Delete</button>

										<button class="btn btn-info">Reset</button>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-5 ml-auto"></div>
				</div>
			</div>
		</div>
		<div class="site-section">
			<div class="container">
				<div class="form-group">
					<table class="table table-hover">
						<thead>
							<tr class="text-black">
								<th>Category</th>
								<th>Name</th>
								<th>Image</th>
								<th>Price</th>
								<th>Size</th>
								<th>Price</th>
								<th>Date</th>
							</tr>
						</thead>
						<tbody>
							<tr class="text-dark">
								<td>MLB</td>
								<td>MLB Chunky Liner Mid Denim Boston Red</td>
								<td>alb.img</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>17/1/1999</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<%@include file="/common/footer.jsp"%>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>

</body>
</html>