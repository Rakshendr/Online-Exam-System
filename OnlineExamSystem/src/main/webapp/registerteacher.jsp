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
<%@page import="abc.Teacher" %>
<%@page import="abc.TeacherDao" %>
<jsp:useBean id="t" class="abc.Teacher"></jsp:useBean>
<jsp:setProperty property="*" name="t"></jsp:setProperty>
<%
int i=TeacherDao.save(t);
if(i==1)
{
	out.print("Thanks For Register Here Registration Successfull...");
	%>
	<br><a href="addteacher.jsp">Register again</a>
	<%
}
else
{
	out.print("Sorry Registration Failled!!!");
	%>
	<br><a href="addteacher.jsp">Try again</a>
	<%
}


%>
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>