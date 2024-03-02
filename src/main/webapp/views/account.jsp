<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="../../fonts/icomoon/style.css">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>
  <div class="site-wrap">
    <%@include file="../../common/header.jsp"%>

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

    <div class="px-5">
      <div class="row">
        <div class="col-md-7">
          <div class="site-section">
            <div class="form-group">
              <table class="table table-hover">
                <thead>
                  <tr class="text-black">
                    <th>User Name</th>
                    <th>PassWord</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Activied</th>
                    <th>Admin</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="account" items="${accounts}">
                    <tr>
                      <td>${account.username}</td>
                      <td>${account.password}</td>
                      <td>${account.fullname}</td>
                      <td>${account.email}</td>
                      <td>${account.activated}</td>
                      <td>${account.admin}</td>
                      <td><a class="link-warning"
                        href="/account.html/edit/${account.username}">Edit</a></td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>

        <div class="col-md-5">
          <div class="site-section">
            <form action="/account.html" modelAttribute="item">
              <div class="p-3 p-lg-5 border">
                <label class="form-label">User Name</label> <input type="text"
                  id="username" class="form-control" name="username"
                  value="${item.username}" required="required"> <label for="inputPassword"
                  class="form-label">Password</label> <input type="password"
                  id="password" class="form-control" name="password"
                  aria-describedby="passwordHelpBlock" value="${item.password}" required="required">
                <label class="form-label">Full Name</label> <input type="text"
                  id="fullname" class="form-control" name="fullname"
                  value="${item.fullname}" required="required"> <label
                  for="exampleInputEmail1" class="form-label">Email
                  address</label> <input type="email" class="form-control" id="email"
name="email" value="${item.email}" required="required"> <label
                  class="form-label">Activated</label><br>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activated"
                    id="activatedYes" value="true"
                    ${item.activated ? 'checked' : ''}> <label
                    class="form-check-label" for="activatedYes">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activated"
                    id="activatedNo" value="false"
                    ${!item.activated ? 'checked' : ''}> <label
                    class="form-check-label" for="activatedNo">No</label>
                </div>

                <br> <label class="form-label">Admin</label><br>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="admin"
                    id="adminYes" value="true" ${item.admin ? 'checked' : ''}>
                  <label class="form-check-label" for="adminYes">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="admin"
                    id="adminNo" value="false" ${!item.admin ? 'checked' : ''}>
                  <label class="form-check-label" for="adminNo">No</label>
                </div>

                <div class="form-group mt-3">
                  <button class="btn btn-info " formaction="/account.html/create"
                    type="submit">Create</button>
                  <button class="btn btn-info " formaction="/account.html/update">Edit</button>
                  <button class="btn btn-info"
                    formaction="/account.html/delete/${item.username}">Delete</button>
                  <button class="btn btn-info" formaction="/account.html">Reset</button>
                </div>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>

    <%@include file="../../common/footer.jsp"%>
  </div>

  <script src="../../js/jquery-3.3.1.min.js"></script>
  <script src="../../js/bootstrap.min.js"></script>
  <script src="../../js/main.js"></script>
</body>
</html>