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
							class="text-black">Admin</strong> <span class="mx-2 mb-0">/</span>
						<strong class="text-black">History</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<%-- <form:form action="/admin.html/order/create"
      modelAttribute="orderItem" method="post" class="my-4">
      <div class="mb-3">
        <form:input path="id" type="text" placeholder="Order Id"
          class="form-control" />
        <c:if test="${not empty error}">
            <div class="form-text text-danger" >${error}</div>
         </c:if>
      </div>
      <div class="mb-3">
        <form:input path="account.username" type="text"
          placeholder="UserName" class="form-control" />
      </div>
      <div class="mb-3">
        <form:input path="address" type="text" placeholder="Address"
          class="form-control" />
      </div>
      <div class="mb-3">
        <form:input path="createDate" type="text" placeholder="CreatDate"
          class="form-control" />
      </div>

      <button formaction="/admin.html/order/create" type="submit"
        class="btn btn-primary">Create</button>
      <button formaction="/admin.html/order/update" type="submit"
        class="btn btn-secondary">Update</button>
      <button formaction="/admin.html/order/delete" type="submit"
        class="btn btn-danger">Delete</button>
      <button formaction="/admin.html/order/index" type="submit"
        class="btn btn-warning">Reset</button>
    </form:form> --%>


			<table class="table table-hover text-black">
				<thead>
					<tr>
						<th scope="col text-primary">ID</th>
						
						<th scope="col text-primary">Address</th>
						<th scope="col text-primary">CreatDate</th>
						<th scope="col text-primary">Người nhận</th>
						<th scope="col text-primary">Tổng đơn</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderItems}" var="item">
						<tr>
							<td>${item.id}</td>
							
							<td>${item.address}</td>
							<td>${item.createDate}</td>
							<td>${item.nguoinhan}</td>
							<td>$${item.tongtien}</td>
					</c:forEach>
				</tbody>
			</table>

			
			
		</div>
		
		


		<%@include file="/common/footer.jsp"%>
	</div>

	<%@include file="/common/jsFile.jsp"%>

</body>
</html>