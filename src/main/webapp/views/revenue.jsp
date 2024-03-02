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
						<strong class="text-black">Revenue</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
        <h1 class="text-center text-black">Revenue by Year</h1>
        
        <form action="/revenue" method="get" id="yearForm">
            <div class="form-group">
                <label for="yearSelect">Select Year</label>
                <select class="form-control" id="yearSelect" name="year" onchange="document.getElementById('yearForm').submit();">
                    <option value="" disabled selected>Select Year</option>
                    <c:forEach var="year" items="${years}">
                        <option value="${year}">${year}</option>
                    </c:forEach>
                </select>
            </div>
        </form>
        
        <c:if test="${selectedYear != null}">
            <%-- <h3 class="my-3">Year: ${selectedYear}</h3> --%>
            <h3 class="my-3 font-weight-bold text-dark">Year: ${selectedYear}</h3>
            <table class="table table-hover text-black">
                <thead>
                    <tr>
                        <th class="text-primary">Month</th>
                        <th class="text-primary">Total Revenue</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${revenueItems}" var="item">
                        <tr>
                            <td>${item.month}</td>
                            <td>$${item.totalRevenue}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>


		<%@include file="/common/footer.jsp"%>
	</div>

	<%@include file="/common/jsFile.jsp"%>

</body>
</html>