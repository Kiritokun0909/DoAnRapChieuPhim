<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Thư viện cơ bản (core)-->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- Thư viện định đạng (format) -->
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!-- Thư viện hàm (function) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- Thư viện biểu mẫu (form)-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include/header.jsp"></jsp:include>

<!-- My CSS -->
<link href="assets/css/admin/food-beverage-form.css" rel="stylesheet"
	type="text/css">

<!-- My JS -->
<script src="assets/js/admin/food-berevage.js" type="text/javascript"></script>


<title>Insert title here</title>
</head>
<body>
	<jsp:include page="navigation/sidenav.jsp"></jsp:include>

	<jsp:include page="include/open-main-layout.jsp"></jsp:include>
	${message }
	<h1 class="modal-title fs-5" id="staticBackdropLabel">Thông tin món</h1>
	<hr/>

		<form:form action="admin/food-beverage/edit-food.htm" method="post" modelAttribute="dichVu" enctype="multipart/form-data" >
			<div class="mb-3">
				<img id = "img-preview" src ="<c:url value="/assets/image/foodBeverage/${dichVu.hinhAnh} "/>" alt="...">
				<input type="file" id="upload-food-img" name="hinhAnhUpdate"
					class="img-preview mb-3" />
				<br/>
			</div>
			
			<div class="mb-3">
				<label for="inputDichVu" class="form-label">Tên dịch vụ</label> 
				<form:input path="tenDichVu" type="text" class="form-control" placeholder="Điền tên dịch vụ"/>

			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">VND</span> 
				<form:input path="donGia" type="text" class="form-control"
					aria-label="Amount (to the nearest dollar)"/>
			</div>
			
			<div class="modal-footer">
				<input type="submit" class="btn btn-secondary" name ="cancel" value="Thoát"/>
				<input type="submit" class="btn btn-primary btn-submit" name="edit" value="${btnSubmitVal}"/>
			</div>
		</form:form>
	<jsp:include page="include/close-main-layout.jsp"></jsp:include>

	<jsp:include page="include/script-body.jsp"></jsp:include>
</body>

</html>