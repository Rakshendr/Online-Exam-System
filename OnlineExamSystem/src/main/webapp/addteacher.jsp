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
<form action="registerteacher.jsp">
<table>
<tr><td>Enter Id</td><td><input type="number" name="id"></td></tr>
<tr><td>Create Password</td><td><input  type="password"  name="password" ></td></tr>
<tr><td>Enter Email id</td><td><input type="email" name="email"></td></tr>
<tr><td>Enter Contact No.</td><td><input type="text" name="contactno"></td></tr>
<tr><td></td><td><input type="submit" value="Register Here"></td></tr>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>