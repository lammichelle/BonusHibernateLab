<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>

<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/solar/bootstrap.min.css" />
</head>
<body style="background-color:powderblue;">
<%-- <form action="/newpage" method="get">

<c:forEach var="p" items="${hotel}">
  <input list="hotel" name="hotel">
  <datalist id="hotel">
  <option value="${p.id}">${p.id}</option>
  </datalist>
  <input type="submit">
</c:forEach>
</form>
 --%>
 
<%--  <select multiple = "multiple">
 <c:forEach var="p" items="${hotel}">
<option value="${p.city}">${p.city }</option> 
 </c:forEach>
 </select> --%>

<%-- <table border="1">
<c:forEach var="p" items="${hotel}">
	<tr>
	<td>${p.id }</td>
	<td>${p.name }</td>
	<td>${p.city }</td>
	<td>${p.pricePerNight}</td>
	</tr>

</c:forEach>  --%>	
	
	<br>
	<h1 align="center">✡ Select A City ✡</h1>

<form action="/newpage" method="post" align="center">
	<select name = "city">
		<c:forEach var="city" items="${cities}">
			<option value="${city}">${city}</option>
		</c:forEach>
	</select>
	
<input type="submit" class= "btn btn-success disabled" value="Click me!">
</form> 
<br>
<br>

<img src= "http://dubai-parks.com/wp-content/uploads/2017/02/1.jpg">

<%-- <select name = "c"> 
<c:forEach var = "c" items ="${cities }">
<option value = "${c}"> ${c} </option>

</c:forEach>
</select>	

<a href= "/newpage"><button>Let's go!</button></a>

<!-- </table> --> --%>
</body>
</html>