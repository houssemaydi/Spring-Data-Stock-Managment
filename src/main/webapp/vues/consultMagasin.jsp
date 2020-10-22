<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<c:set var="cxt" value="${pageContext.request.contextPath}" />



<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>

<body>

<div class="container">
<h1 style="margin-bottom:40px">Products of ${magname} :</h1>

		<table class="table ">
	  <thead class="thead-dark">
	
				<tr><th>Desciption</th><th>Quantity</th><th>Price</th><th>Price For Sell</th></tr>
	  </thead>
	
	
		<c:forEach items="${liste}" var="p">
			<tr><td>${p.description}</td><td>${p.nbre}</td><td>${p.prixachat}</td><td>${p.prixvente}</td><td><a class="btn btn-danger" href="${cxt}/delete/${p.id}">Delete</a></td></tr>
		</c:forEach>
		
	</table>
	
	
</div>
</body>
</html>