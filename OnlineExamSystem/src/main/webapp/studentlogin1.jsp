<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="studentlogin2.jsp">
<table>
<tr><td>Enter your id</td><td><input type="number" name="id"></td></tr>
<tr><td>Enter your password</td><td><input type="password" name="password"></td></tr>
<tr><td></td><td><input type="submit" value="login" ></td></tr>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>