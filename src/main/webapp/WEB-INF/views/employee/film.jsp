<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="include.jsp"></jsp:include>
	
	<!-- My CSS -->
	<link href="assets/css/employee/film.css" rel="stylesheet" type="text/css">
	
	<title>Phim đang chiếu</title>
	
	<script type="text/javascript">
		$(document).ready(function(){
		  $(".list-group-film").addClass("active");
		});
	</script>
	
</head>

<body>

<body>
	<jsp:include page="home.jsp"></jsp:include>
	<!--Main layout-->
	<main>
		<div class = "layout">
			<h1>H1 của Film</h1>

		</div>
	</main>
	<!--Main layout-->

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>