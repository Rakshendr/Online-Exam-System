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
<form action="registerstudent.jsp">
<table>
<tr><td>Enter id</td><td><input type="number"  name="id"></td></tr>
<tr><td>Enter Name</td><td><input type="text"  name="name"></td></tr>
<tr><td>Create Password</td><td><input type="password" name="password"></td></tr>
<tr><td>Enter Email Id</td><td><input type="email" name="email"></td></tr>
<tr><td>Select Branch</td><td><select name="branch"><option>CSE</option><option>CS IT</option><option>ME</option><option>CE</option><option>EC</option><option>Other</option></select>
<tr><td></td><td><input type="submit" value="Register Here"></td></tr>



</table>

</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>