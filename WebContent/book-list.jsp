<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		body{
			box-sizing : border-box
		}
		.formContainer {
			margin: auto;
			padding : 15px;
			border : black thin solid;
			width : 50%;
			background : lightgray;
		}
		h4 {
			margin-top: 5px;
			margin-bottom : 5px;
		}
		td {
			margin-left : auto;
			margin-right: auto;
			padding-left : 5px;
			padding-right: 5px
		}
		button {
			margin-top : 10px;
			margin-bottom : 10px;
			width : 75px;
		}
	</style>
</head>
<body>
	<div class="formContainer">
	<form action="navigationServlet" method="post">
	<table>
		<tr>
			<th></th>
			<th>Title:</th>
			<th>Author:</th>
			<th></th>
			<th>ISBM:</th>
		</tr>
		<c:forEach items="${requestScope.allBooks}" var="currentitem">
		<tr>
			<td><input type="radio" name="id" value="${currentitem.id}"></td>
			<td>${currentitem.title}</td>
			<td>${currentitem.firstName}</td>
			<td>${currentitem.lastName}</td>
			<td>${currentitem.isbn10}</td>
		</tr>
		</c:forEach>
	</table>
	<div class="buttons">
		<button value ="edit" name="doThisToBook">Edit</button>
		<button value ="delete" name="doThisToBook">Delete</button>
		<button value ="add" name="doThisToBook">Add</button>
	</div>
	</form>
	</div>
</body>
</html>