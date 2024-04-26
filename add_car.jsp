<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<style type="text/css">
#button {
	border: 1px solid;
	background-color: #3e5172;
	color: white;
	border-radius: 5px;
	padding: 10px;
	width: 75px;
	margin-left: 260px;
	margin-top: 10px;
	border-radius: 5px;
	background-color: #cc6c5c;
	font-size: 15px;
}

#box {
	border: 3px solid;
	height: 400px;
	width: 500px;
	background-color: #f9e9de;
	margin-left: 525px;
	margin-top: 140px;
}

.input {
	background-color: #9fb6c3;
	border: 1px solid;
	padding: 10px;
	width: 250px;
	margin-top: 10px;
}

#head {
	font-size: 35px;
}

.label {
	font-size: 20px;
	padding-top: 10px;
}

#message {
	font-size: 40px;
}

a {
	text-decoration: none;
}
</style>
</head>
<body>
	<div id="box" align="center">
		<h3 id="head">Add Car Details</h3>
		<form action="add_car" method="post">
			<table>
				<tr>
					<td class="label">NAME</td>
					<td><input class="input" type="text" name="name"
						required="required" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td class="label">BRAND</td>
					<td><input class="input" type="text" name="brand"
						required="required"></td>
				</tr>
				<tr>
					<td class="label">PRICE</td>
					<td><input class="input" type="text" name="price"
						required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="ADD">
		</form>
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	%>
</body>
</html>