<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>
<body class="container">
<h1 style="margin-bottom:40px">Add Product : </h1>


	  <div class="form-group" >
	
	<form:form method="POST" action="saveProduit" modelAttribute="produit" >
	  <div class="form-group">
    <label for="exampleInputEmail1">Prix achat:</label>
    <form:input path="prixachat" class="form-control" aria-describedby="Price"/>
  </div>
   <div class="form-group">
    <label for="exampleInputEmail1">prixvente:</label>
    <form:input path="prixvente" class="form-control" aria-describedby="prixvente"/>
  </div>
			<div class="form-group">
    <label for="exampleInputEmail1">nbre:</label>
    <form:input path="nbre" class="form-control" aria-describedby="nbre"/>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">description:</label>
    <form:input path="description" class="form-control" aria-describedby="description"/>
  </div>
	<div class="input-group">
  <div class="input-group-prepend">
  </div>
    <div class="form-group">
    <label for="exampleFormControlSelect1">Example select</label>
  
  <form:select class="custom-select"  path="mg.id" items="${listeMagasin}" itemValue="id" itemLabel="nom" ></form:select>
    </div>
</div>
					
		<button  class="btn btn-primary " type="submit" style="margin-top:40px"/>enregistrer</button>
	</form:form>
</body>

</html>