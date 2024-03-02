<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
              class="text-black">Admin</strong> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">OrderDetail</strong>
          </div>
        </div>
      </div>
    </div>
		<div class="container">
		 
    


    <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">OrderId</th>
          <th scope="col">ProductId</th>
          <th scope="col">Price</th>
          <th scope="col">Quantity</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${orderDetailItems}" var="item">
          <tr>
            <td>${item.id}</td>
            <td>${item.order.id}</td>
            <td>${item.product.id}</td>
            <td>${item.price}</td>
            <td>${item.quantity}</td>
            <td><a href="/admin.html/order/edit?id=${item.id}">Edit</a> /
              <a href="/admin.html/order/delete?id=${item.id}">Delete</a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
		</div>
		




		<%@include file="/common/footer.jsp"%>
	</div>

	<%@include file="/common/jsFile.jsp"%>

</body>
</html>