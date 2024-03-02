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
            <form action="/productAdmin" modelAttribute="item">>
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                  <div class="col-md-1">
                    <label for="c_id" class="text-black">ID</label> <input
                      type="text" class="form-control" id="id" disabled name="id"
                      required>
                  </div>

                  <div class="col-md-2">
                    <label for="category" class="text-black">Category</label> 
                    <select
                      class="form-control" id="category" name="category" required>
                      <option value="">Select a category</option>
                      <c:forEach var="cate" items="${categories}">
                        <option value="${cate.name}">${cate.name}</option>
                      </c:forEach>
                      <!--Thêm các tùy chọn khác tại đây-->
                    </select>
                  </div>


                  <div class="col-md-9">
                    <label for="c_name" class="text-black">Name</label> <input
                      type="text" class="form-control" id="c_name" name="name"
                      required>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-8">
                    <label for="c_img" class="text-black">Image</label> <input
                      class="form-control" type="file" id="image" required>
                  </div>
                  <div class="col-md-4 input-group">
                    <label for="c_price" class="text-black">Price</label>
                    <div class="input-group">
<input type="text" class="form-control" id="c_price"
                        name="price" oninput="validatePrice(this)" required>
                      <span class="input-group-text">VND</span>
                    </div>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-8">
                    <label for="c_date" class="text-black">Date</label> <input
                      type="text" class="form-control" id="c_date"
                      name="createDate"  required>
                  </div>
                  <div class="col-md-2">
                    <label for="c_size" class="text-black">Size</label> <input
                      type="text" class="form-control" id="c_size" name="size"
                      required>
                  </div>
                  <div class="col-md-1">
                    <label for="c_size" class="text-black">Quantity</label> <input
                      type="text" class="form-control" id="quantity"
                      name="quantity" required>
                  </div>
                  <div class="col-md-1">
                    <label for="c_size" class="text-black">Available</label> <input
                      type="checkbox" class="form-control " id="available"
                      name="available" checked>
                  </div>
                </div>

                <div class="form-group row">
                  <div class="col-md-12">
                    <button formaction="/productAdmin/create"
                      class="btn btn-info mr-2" type="submit">Create</button>
                    <button class="btn btn-info mr-2" type="submit">Edit</button>
                    <button class="btn btn-info mr-2" type="submit">Delete</button>
                    <button class="btn btn-info" type="submit">Reset</button>
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
          <table class="table table-hover table-striped">
            <thead>
              <tr class="text-black">
                <th>ID</th>
                <th>Category</th>
                <th>Name</th>
                <th>Image</th>
                <th>Price</th>
                <th>Size</th>
                <th>Date</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${productItems}" var="pro">
                <tr class="text-dark">
                  <td>${pro.id}</td>
                  <td>${pro.category.name}</td>
                  <td>${pro.name}</td>
                  <td>${pro.image}</td>
                  <td>${pro.price}</td>
                  <td>${pro.size}</td>
      
                  <td><a href="#">Edit</a> / <a href="#">Delete</a></td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <%@include file="/common/footer.jsp"%>
  </div>

  <script>
    function validatePrice(input) {
      var price = input.value;
      var isValid = /^\d+$/.test(price);

      if (!isValid) {
        input.value = price.replace(/[^\d]/g, '');
        input.style.borderColor = "red";
      } else {
        input.style.borderColor = "";
      }
    }
  </script>

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