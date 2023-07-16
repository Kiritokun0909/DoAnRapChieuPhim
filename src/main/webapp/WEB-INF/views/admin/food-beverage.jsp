<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Thư viện cơ bản (core)-->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!-- Thư viện định đạng (format) -->
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!-- Thư viện hàm (function) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- Thư viện biểu mẫu (form)-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   

<%-- <%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="include/header.jsp"></jsp:include>
	
	<!-- My CSS -->
	<link href="assets/css/admin/food-beverage.css" rel="stylesheet" type="text/css">
	
	<title>Insert title here</title>
	
	<script type="text/javascript">
		$(document).ready(function(){
		  $(".js-active-food-bevarage").addClass("active");
		});
	</script>
</head>

<body>
	<jsp:include page="navigation/sidenav.jsp"></jsp:include>

	<jsp:include page="include/open-main-layout.jsp"></jsp:include>
	
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
	  Thêm món
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="staticBackdropLabel">Thông tin món</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        ...
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
	        <button type="button" class="btn btn-primary">Xác nhận</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<hr>
	
	<h1>H1 của Food Beverage</h1>

	<!-- Vùng chứa các món ăn -->
	<div class="container text-center">
		<%-- <jsp:useBean id="pagedListHolder" scope="request"
				type="org.springframework.beans.support.PagedListHolder" />
		<c:url value="admin/" var="pagedLink">
			<c:param name="p" value="~" />
		</c:url> --%>
	  <div class="row row-cols-1 row-cols-md-5 g-4">
	  	<c:forEach var="dv" items="${listDichVu}">
	  		<div class="col">
		      	<div class="card ">
			      	<button class = "card-btn" type="button" name="btn-show" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
						<img src="${dv.hinhAnh}" 
						  	  class="card-img-top" alt="..." title="">
						<div class="card-body">
							<h5 class="card-title">${dv.tenDichVu}</h5>
							<p class="card-text">${dv.donGia}</p>
						</div>
					</button>
				</div>
		     
		    </div>
	  	</c:forEach>
	  </div>
	</div>
	
	<jsp:include page="include/close-main-layout.jsp"></jsp:include>

	<jsp:include page="include/script-body.jsp"></jsp:include>
</body>

</html>