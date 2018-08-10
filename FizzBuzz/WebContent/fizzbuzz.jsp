<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.List"%>
<html>
<head>
<title>FizzBuzz</title>
</head>
<style>
body{
background-image: url("fizzbuzz.png");
background-repeat: no-repeat;
}
table {
	margin: 25px auto;
	border-collapse: collapse;
	border: 1px solid #eee;
	border-bottom: 2px solid #00cccc;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.10), 0px 10px 20px
		rgba(0, 0, 0, 0.05), 0px 20px 20px rgba(0, 0, 0, 0.05), 0px 30px 20px
		rgba(0, 0, 0, 0.05);
}

th, td {
	color: #999;
	border: 1px solid #eee;
	padding: 12px 35px;
	border-collapse: collapse;
}

th {
	background: #00cccc;
	color: #fff;
	text-transform: uppercase;
	font-size: 12px;
}

input[type=submit] {
	background-color: #00cccc;
	border-radius: 10px;
	color: white;
}
</style>
<body>
<div>
	<form action="fizzservlet" method="post">
		Lets' Begin with FizzBuzz : 
		<input id="fizz" type="number"
			name="fizz" required="required"
			value="<%=request.getAttribute("number")%>"
			placeholder="enter here..."> 
		<input type="submit"
			value="Begin">
	</form>
</div>
	<div>
		<table>
			<thead>
				<tr>
					<th>Position</th>
					<th>Fizz Buzz</th>
				</tr>
			</thead>
			<c:forEach items="${listFizz}" var="list" varStatus="position">
				<tr>
					<td><c:out value="${position.index+1}"></c:out></td>
					<td><c:out value="${list}"></c:out></td>
				</tr>
			</c:forEach>
		</table>

	</div>
	<div>
		<c:if test="${number le 0}">
			<h4 style="color: red">Please enter a valid number!</h4>
		</c:if>
	</div>
</body>
</html>