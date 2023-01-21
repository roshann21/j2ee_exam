<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reg : Result</title>
	 <!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
</head>
<body>
	<c:if test="${param.submit == 'submit'}">
		
			<a class="btn" href="/Roshan_Adv_Exam/index.jsp"> < Try Again?</a>
		</c:if>
		
		<jsp:useBean id="newUser" class="com.met.model.User"></jsp:useBean>
		<jsp:setProperty property="*" name="newUser"/>
		<c:choose>
			<c:when test="${newUser.getRegistration()}">
				<div class="mt-5 container alert alert-success">
					<h1>User Successfully Registered</h1>
					<a class="btn" href="/Roshan_Adv_Exam"> < Back</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="mt-5 container alert alert-danger">
					<h1>User  Failed</h1>
					<a class="btn" href="/Roshan_Adv_Exam/Submit.jsp"> < Try Again?</a>
				</div>
			</c:otherwise>
		</c:choose>
	
</body>
</html>