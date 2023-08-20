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
<link href="assets/css/admin/food-beverage-info.css" rel="stylesheet"
	type="text/css">

<!-- My JS -->
<!-- <script src="assets/js/admin/food-berevage.js" type="text/javascript"></script> -->


<title>Insert title here</title>
</head>
<body>
	<jsp:include page="navigation/sidenav.jsp"></jsp:include>

	<jsp:include page="include/open-main-layout.jsp"></jsp:include>
	${message }
	<h1 class="modal-title fs-5" id="staticBackdropLabel">Thông tin
		món</h1>
	<hr />

		<form:form action="admin/food-beverage/edit-food.htm"
			modelAttribute="dichVu" enctype="multipart/form-data" method="post">
			<div class="mb-3">
				<img id = "img-preview" src ="${dichVu.hinhAnh }" alt="...">
				<input type="file" id="upload-food-img" name="hinhAnh"
					class="img-preview mb-3" />
				<br/>
				<!-- <input type="file" name="btn-preview" id="btn-preview" /> -->
				<!-- <label for="basic-url" class="form-label">Link ảnh</label>
				
				<div class="input-group">
					<span class="input-group-text" id="basic-addon3">https:</span> 
					<input
						type="text" class="form-control" id="basic-url"
						aria-describedby="basic-addon3 basic-addon4">
					<button class="btn btn-outline-secondary" type="button"
						id="btn-preview">Ok</button>
				</div> -->
			</div>
			
			<div class="mb-3">
				<label for="inputDichVu" class="form-label">Tên dịch vụ</label> 
				<%-- <form:input
					type="text" class="form-control" name="input-ten-dich-vu"
					path="tenDichVu"/> --%>
				<form:input path="tenDichVu"
					type="text" class="form-control" 
					/>
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">$</span> 
				<form:input type="text" path="donGia"
					class="form-control" name="input-gia-dich-vu"
					aria-label="Amount (to the nearest dollar)"
					 />
			</div>
			
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" id = "btn-exit" name="btn-exit"
					data-bs-dismiss="modal" onclick="history.back()">Thoát</button>
				<button type="submit" class="btn btn-primary btn-submit">Xác nhận</button>
			</div>
		</form:form>

	<jsp:include page="include/close-main-layout.jsp"></jsp:include>

	<jsp:include page="include/script-body.jsp"></jsp:include>
</body>

</html>