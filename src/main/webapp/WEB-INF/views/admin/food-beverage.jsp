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
<link href="assets/css/admin/support/search-bar.css" rel="stylesheet"
	type="text/css">
<link href="assets/css/admin/food-beverage.css" rel="stylesheet"
	type="text/css">

<!-- My JS -->
<script src="assets/js/admin/food-berevage.js" type="text/javascript"></script>


<title>Insert title here</title>
</head>

<body>
	<jsp:include page="navigation/sidenav.jsp"></jsp:include>

	<jsp:include page="include/open-main-layout.jsp"></jsp:include>
	
	
	<!-- Thanh Search -->
	<div class="input-group mb-3 search-bar">
		<form class="search-bar__form--display"
			action="admin/food-beverage.htm" method="GET">
			<input value="${searchValue}" name="input-search" type="search"
				class="form-control search-bar__input--border"
				placeholder="Tìm kiếm dịch vụ" aria-label="Tìm kiếm dịch vụ"
				aria-describedby="button-search">
			<button name="btn-search"
				class="btn btn-outline-secondary search-bar__search-btn--border"
				type="submit" id="button-search">
				<i class="fa-solid fa-magnifying-glass"></i>
			</button>
		</form>
	</div>

	<hr>

	<!-- Button trigger modal -->
	<form action="admin/food-beverage-add.htm">
	<button type="submit" class="btn btn-primary btn-add"
		data-bs-toggle="modal" data-bs-target="#staticBackdrop">Thêm món</button>
	</form>


	<!-- Vùng chứa các món ăn -->
	<div class="container text-center">
		<jsp:useBean id="pagedListHolder" scope="request"
			class="org.springframework.beans.support.PagedListHolder" />
		<c:url value="admin/food-beverage.htm" var="pagedLink">
			<c:param name="p" value="~" />
		</c:url>
		<div class="row row-cols-1 row-cols-md-${itemsPerCol } g-4">
			<c:forEach var="dv" items="${pagedListHolder.pageList}"
				varStatus="status">
				<div class="col" >
					<form class="card" action = "admin/food-beverage/${dv.maDichVu}.htm">
						
						<button class="card-btn" data-bs-toggle="modal"
							data-bs-target="#staticBackdrop" type="submit" name="btn-show"
							value="${dv.maDichVu}">
							<img src ="<c:url value="/assets/image/foodBeverage/${dv.hinhAnh} "/>" 
								class="card-img-top" alt="..." title="">
							<div class="card-body">
								<h5 class="card-title">${dv.tenDichVu}</h5>
								<p hidden="true" class="card-info-hidden ma-dich-vu">${dv.maDichVu }</p>
								<p hidden="true" class="card-info-hidden gia-dich-vu">${dv.donGia }</p>
								<p class="card-text">
									₫
									<fmt:formatNumber value="${dv.donGia}" type="number" />
								</p>
							</div>
						</button>
					</form>
				</div>
			</c:forEach>
		</div>
		<div class="pagging--padding">
			<tg:paging pagedListHolder="${pagedListHolder}"
				pagedLink="${pagedLink}" />
		</div>
	</div>

	<jsp:include page="include/close-main-layout.jsp"></jsp:include>

	<jsp:include page="include/script-body.jsp"></jsp:include>
</body>

</html>