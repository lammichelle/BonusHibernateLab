<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Page</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
</head>
<body style="background-color:pink;">


<h1  align="center" style="color:brown">❀ Hotel Listings ❀</h1>



<table class="table table-hover" align="center" border = "1" style="background-color:white;">
<c:forEach var = "a" items = "${hotel }">

<tr>
	
	<td>${a.name }</td>
	<td>${a.pricePerNight}</td>
	</tr>

</c:forEach>

</table>

<br>

<div style="text-align:center"> 
 <a href = "/hotel" class= "btn btn-danger">Start a new search</a>
 </div>
<img src= "https://images-na.ssl-images-amazon.com/images/I/51cIG4Px0EL._SY355_.jpg" align = "left">


<img src= "https://images-na.ssl-images-amazon.com/images/I/51cIG4Px0EL._SY355_.jpg" align = "right">
</body>
</html>