<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!-- Thư viện biểu mẫu (form)-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Đăng ký thành viên</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<!-- <link rel="stylesheet" type="text/css" href="css/PublicHome.css"> -->
	
	<!-- My CSS -->
	<link href="assets/css/public/login.css" rel="stylesheet" type="text/css">
	<link href="assets/css/public/home.css" rel="stylesheet" type="text/css">
	<!-- Get Current Path  -->
	<base href="${pageContext.servletContext.contextPath }/">
</head>
<body>
	<div>
		<%@include file="/WEB-INF/views/public/include/header.jsp" %>
		
		<div class="form-container">
			<div class="column-item">
				<div class="form">
					<form action="login.htm" method="post">
						<div class="form__heading">
							<h3>Đăng nhập</h3>
						</div>
						
						<div class="form__row">
							<label class="form__label-sign-in">Email:</label>
							<input class="form__input" type="text" name="username"
							id="username" placeholder="Email hoặc số điện thoại">
						</div>
						
						<div class="form__row">
							<label class="form__label-sign-in">Mật khẩu:</label>
							<input class="form__input" type="password" name="pwd"
								id="pwd" placeholder="Nhập mật khẩu">
						</div>
						
						<div class="form__row__btn sign-in">
							<button type="submit">Đăng nhập</button>
							<a href="#">Quên mật khẩu</a> 
						</div>
					</form>
				</div>
			</div>
			
			<div class="column-item">
				<div class="form">
					<form action="register.htm" method="post">
						<div class="form__heading">
							<h3>Đăng ký</h3>
						</div>
						<div class="form__row">
							<label class="form__label">Họ và tên đệm:</label>
							<input class="form__input" type="text" 
								id="lastName" name="lastName" placeholder="Nhập họ và tên đệm"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Tên:</label>
							<input class="form__input" type="text" 
								id="firstName" name="firstName" placeholder="Nhập tên"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Email:</label>
							<input class="form__input" type="text" 
								id="email" name="email" placeholder="Nhập email"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Mật khẩu:</label>
							<input class="form__input" type="password" 
								id="password" name="password" placeholder="Nhập mật khẩu"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Số điện thoại:</label>
							<input class="form__input" type="text" 
								id="phone" name="phone" placeholder="Nhập số điện thoại"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Địa chỉ:</label>
							<input class="form__input" type="text" 
								id="address" name="address" placeholder="Nhập địa chỉ"/>
						</div>
						
						<div class="form__row__policy-text">
							Bằng việc đăng ký, bạn đã đồng ý với các 
							<a href="" class="form__row__policy-link">Điều khoản dịch vụ</a>
						</div>
							
						<div class="form__row__btn">
							<button type="submit">Đăng ký</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		
		
		<%@include file="/WEB-INF/views/public/include/footer.jsp" %>
		
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>