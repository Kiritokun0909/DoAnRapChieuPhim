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
<!-- <script src="assets/js/admin/food-berevage.js" type="text/javascript"></script> -->


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
	<button type="button" class="btn btn-primary btn-add" name="btn-add"
		data-bs-toggle="modal" data-bs-target="#staticBackdrop">Thêm
		món</button>


	<!-- Modal -->
	<%-- <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="staticBackdropLabel">Thông
						tin món</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="form-preview">
						<div class="mb-3">
							<img id="img-preview" src="" class="img-preview mb-3" alt="...">
							<!-- <input type="file" name="btn-preview" id="btn-preview" /> -->
							<label for="basic-url" class="form-label">Your vanity URL</label>
							<div class="input-group">
								<span class="input-group-text" id="basic-addon3">https:</span>
								<input type="text" class="form-control" id="basic-url"
									aria-describedby="basic-addon3 basic-addon4">
								<button class="btn btn-outline-secondary" type="button"
									id="btn-preview">Ok</button>
							</div>
						</div>
						<div class="mb-3">
							<label for="formGroupExampleInput" class="form-label">Tên
								dịch vụ</label> <input type="text" class="form-control"
								name="input-ten-dich-vu" placeholder="Example input placeholder">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text">$</span> <input type="text"
								class="form-control" name="input-gia-dich-vu"
								aria-label="Amount (to the nearest dollar)">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<form id="form-button">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Thoát</button>
						<button type="button" class="btn btn-primary btn-submit"
							name="btn-submit" id="modal-submit-button">Xác nhận</button>
					</form>
				</div>
			</div>
		</div>
	</div> --%>


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
							<img src="${dv.hinhAnh}" class="card-img-top" alt="..." title="">
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