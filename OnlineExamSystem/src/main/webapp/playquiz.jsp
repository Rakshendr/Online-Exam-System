<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="studentheader.jsp"></jsp:include>
<form action="playquiz1.jsp">
<table>
<tr><td>Enter your name</td><td><input type="text" name="name"></td></tr>
<tr><td>Enter Roll No.</td><td><input type="number" name="id"></td></tr>
<tr><td>Enter Subject Id/Code</td><td><input type="number" name="subid"></td></tr>
<tr><td></td><td><input type="submit" value="Start test"></td></tr>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>