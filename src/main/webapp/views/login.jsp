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
							class="text-black">Login</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<!-- Form-->
				<div class="form">
					<div class="form-toggle"></div>
					<div class="form-panel one">
						<div class="form-header">
							<h1>Account Login</h1>
						</div>
						<div class="form-content">
							<form action="/login.html" method="post">
								<p class="text-danger"> ${message}${param.error}</p>
								<div class="form-group">
									<label for="username">Username</label> <input id="username"
										type="text" name="username" required="required" />
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input id="password"
										type="password" name="password" required="required" />
								</div>
								<div class="form-group">
									<label class="form-remember"> <input type="checkbox" />Remember
										Me
									</label><a class="form-recovery" href="#">Forgot Password?</a>
								</div>
								<div class="form-group">
									<button type="submit">Log In</button>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>


		--

		<%@include file="/common/footer.jsp"%>
	</div>

	<%@include file="/common/jsFile.jsp"%>

</body>
</html>