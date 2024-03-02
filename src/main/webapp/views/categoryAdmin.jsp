<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
            <strong class="text-black">Category</strong>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <h1>Category Management</h1>
        <form action="/categoryAdmin" modelAttribute="item" class="my-4" method="post">
          <div class="mb-3">
            <input id="id" type="text" name="id" placeholder=" Category ID" value="${item.id}"
              class="form-control" /> 
              
            
          </div>
          <div class="mb-3">
            <input id="name" name="name" type="text" placeholder="Category Name"
              class="form-control" value="${item.name}" />
            <form:errors path="name" class="form-text text-danger" />
          </div>

          <button formaction="/categoryAdmin/create" 
            class="btn btn-info mr-2">Create</button>
          <button formaction="/categoryAdmin/update" 
            class="btn btn-info mr-2">Update</button>
          <button formaction="/categoryAdmin/delete/${item.id}"
            class="btn btn-info mr-2">Delete</button>
          <button formaction="/categoryAdmin" 
            class="btn btn-info ">Reset</button>
        </form>

        <table class="table table-hover">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Name</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${categoryItems}" var="cate">
              <tr>
                <td>${cate.id}</td>
                <td>${cate.name}</td>
                <td><a href="/categoryAdmin/edit/${cate.id}">Edit</a> / 
                <a href="/categoryAdmin/delete/${cate.id}">Delete</a></td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
     
    <%@include file="/common/footer.jsp"%>
  </div>

  <%@include file="/common/jsFile.jsp"%>

</body>
</html>