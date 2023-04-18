<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="teacherheader.jsp"></jsp:include>
<form action="addsubject.jsp">
<table>
<tr><td>Enter Subject id/code</td><td><input type="number" name="subid"></td></tr>
<tr><td>Enter Subject Name</td><td><input type="text" name="subname"></td></tr>
<tr><td></td><td><input type="submit" value="Add Subject"></td></tr>

</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>