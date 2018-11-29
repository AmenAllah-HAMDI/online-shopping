<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>Enetcom Store - ${title}</title>
<script>
	window.menu = '${title}';
</script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
html{
width:100%;
}

body{

height:100%;
}

.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 20px;
	margin-top:200px;
	
}

.wrapper{
min-height:100%;
position:relative;
}

.content{
padding-bottom:60px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="jumbotron">
			<div class="container text-center">
				<h1>Online Store</h1>
				<p>Smartphones, Computers, Widgets</p>
			</div> 
		</div>

		<!-- nav bar -->
		<%@include file="./shared/navbar.jsp"%>


		<!-- Container -->
		<div class"content"=>
			<c:if test="${userClickHome == true	}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Loading about us -->
			<c:if test="${userClickAbout == true	}">
				<%@include file="about.jsp"%>
			</c:if>


			<!-- Loading contact us -->
			<c:if test="${userClickContact == true	}">
				<%@include file="contact.jsp"%>
			</c:if>
		</div>

		<!-- footer -->
		<%@include file="./shared/footer.jsp"%>
		<script src="${ js}/myapp.js"></script>
	</div>
</body>
</html>
