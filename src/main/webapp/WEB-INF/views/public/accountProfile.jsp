<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!-- Thư viện biểu mẫu (form)-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Thư viện cơ bản (core)-->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cinema</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<link href="assets/css/public/home.css" rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
	integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
	integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<!-- My CSS -->
	<link href="assets/css/public/accountProfile.css" rel="stylesheet" type="text/css">
	
	<!-- Get Current Path  -->
	<base href="${pageContext.servletContext.contextPath }/">
</head>
<body>
	<div>
		<%@include file="/WEB-INF/views/public/include/header.jsp"%>




		<div
			style="background-image: url(https://www.bhdstar.vn/wp-content/themes/bhd/assets/images/movie-details-bg.jpg)">
			<div class="container   text-white p-5">
				
				<div class="row">
					<div class="col-3"></div>
					<div class="col-6 bg-dark">
						<form:form action="update-profile.htm" method="post" modelAttribute="user" enctype="multipart/form-data">
			                <div class="mb-3">
								<img src="<c:url value="/assets/image/account/${user.avatar} "/>"
									id="output" class="img" width="120px" height="120px"/>
			                    <div class="button-container">
			                        <input name="new-avatar" class="form-control" type="file"/>
			                    </div>
			                </div>
			                
			                <div class="mb-3">
			                    <label for="lastName" class="form-label">Họ:</label>
			                    <form:input path="ho" type="text" class="form-control" required="true" />
			                </div>
			                
			                <div class="mb-3">
			                    <label for="firstName" class="form-label">Tên:</label>
			                    <form:input path="ten" type="text" class="form-control" required="true" />
			                </div>
			                
			                <div class="mb-3">
			                    <label for="email" class="form-label">Email:</label>
			                    <form:input path="email" type="email" class="form-control" required="true" />
			                </div>
			                
			                <div class="mb-3">
			                    <label for="phone" class="form-label">Số điện thoại:</label>
			                    <form:input path="sdt" type="text" class="form-control" required="true" />
			                </div>
			                
			                <div class="mb-3">
			                    <label for="address" class="form-label">Địa chỉ:</label>
			                    <form:input path="diaChi" type="text" class="form-control" required="true" />
			                </div>
			                
			                <div class="mb-3">
			                    <button type="submit" class="btn btn-secondary">Cập nhật</button>
			                </div>
			            </form:form>
			    	</div>
				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/views/public/include/footer.jsp"%>


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"
			integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw=="
			crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
			integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
			crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script type="text/javascript">
			
		</script>
</body>
</html>