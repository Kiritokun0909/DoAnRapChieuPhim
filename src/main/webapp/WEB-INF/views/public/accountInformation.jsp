<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
						<div class="mb-3">
							<h1 class="text-center  p-5">Thông tin tài khoản</h1>
							<div class="row">
								<img alt="" src="">
							</div>
							<label for="Ho" class="form-label">Họ</label> 
							<input type="text"
								class="form-control" id="Ho" placeholder="Họ" value="${user.ho}">

						</div>
						<div class="mb-3">
							<label for="Ten" class="form-label">Tên</label> 
							<input
								type="text" class="form-control" id="Ten" value="${user.ten}" placeholder="Tên" >
						</div>

						<div class="mb-3">
							<label for="NgaySinh" class="form-label">Ngày sinh</label> 
							<input
								type="date" class="form-control" id="NgaySinh"
								placeholder="Ngày sinh" value="${user.ngaySinh}">
						</div>
						<div class="mb-3">
							<label for="DiaChi" class="form-label">Địa chỉ</label> 
							<input
								type="text" class="form-control" id="DiaChi"
								placeholder="Địa chỉ" value="${user.diaChi}">
						</div>

						<div class="mb-3">
							<label for="email" class="form-label">Email </label> <input
								type="email" class="form-control" id="email"
								placeholder="name@example.com" value="${user.email}">
						</div>
						<div class="mb-3">
							<label for="SDT" class="form-label">Số điện thoại </label> <input
								type="text" class="form-control" id="SDT"
								placeholder="0123456789" value="${user.sdt}">
						</div>


					</div>
					<div class="col-3"></div>
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