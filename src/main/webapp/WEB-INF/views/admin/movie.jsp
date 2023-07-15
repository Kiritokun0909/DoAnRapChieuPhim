<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="include/header.jsp"></jsp:include>
	
	<!-- My CSS -->
	<link href="assets/css/admin/movie.css" rel="stylesheet" type="text/css">
	
	<title>TitleHerreeeeeeeeeeeeeee</title>
	
	<script type="text/javascript">
		$(document).ready(function(){
		  $(".js-active-movie").addClass("active");
		});
	</script>
	
</head>

<body>

<body>
	<jsp:include page="navigation/sidenav.jsp"></jsp:include>

	<jsp:include page="include/open-main-layout.jsp"></jsp:include>
	
	<h1>H1 của Movie</h1>
	
	<jsp:include page="include/close-main-layout.jsp"></jsp:include>

	<jsp:include page="include/script-body.jsp"></jsp:include>
</body>
</html>