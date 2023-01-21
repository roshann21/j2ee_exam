
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	 <!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
<title>Submit</title>
</head>
<body>
	
	<form class="container mt-5 pt-5" action="result.jsp" method="POST">
	<table>
		<tr> 
			<td>Name : </td> 
			<td><input name="Bookname" type="text" placeholder="Bookname"/></td> 
			</tr>
		<tr> 
			<td>Author: </td> 
			<td><input name="Author" type="text" placeholder="AuthorName"/></td> 
		</tr> 
		<tr> 
			<td>publisher: </td> 
			<td><input name="Publisher" type="text" placeholder="Publisher"/></td> 
		</tr>
		
		<tr><td><button class="btn btn-success" type="submit" name="submit" value="submit">Submit</button></td></tr>
	</table>
	</form>
	
</body>
</html>