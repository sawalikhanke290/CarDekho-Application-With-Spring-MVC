<%@page import="com.jspiders.SpringMVC.Dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Page</title>
<style type="text/css">
#message {
	font-size: 50px;
}

.head {
	width: 200px;
	font-size: 25px;
	padding: 10px;
	font-weight: bold;
	font-size: 25px;
	border: 2px solid;
}

.data {
	width: 150px;
	font-size: 20px;
	padding: 10px;
	border: 1px solid;
}

#table {
	background-color:#f9e9de;
	margin-top: 100px;
	background-color:#9fb6c3;
	border: 3px solid;
}

a {
	text-decoration: none;
}
</style>
</head>
<body>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
	<%
	}
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">ID</td>
				<td class="head">NAME</td>
				<td class="head">BRAND</td>
				<td class="head">PRICE</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<h2>
		        BACK TO <a href="home">Home Page</a> ?
		</h2>
	</div>
	<%
	}
	%>
</body>
</html>