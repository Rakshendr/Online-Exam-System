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
<%@page import="abc.Student" %>
<%@page import="abc.StudentDao" %>
<jsp:useBean id="s" class="abc.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"></jsp:setProperty>
<% 
int i=StudentDao.save(s);
try
{
	if(i==1)
	{
		out.print("Thanks For Register Here Registration Successfull...");
		%>
		<br><a href="addstudent.jsp">Add again</a>
		<%
	}
	
	else
	{
		out.print("Sorry Registration Failled!!!");
		%>
		<br><a href="addstudent.jsp">Try again!!!</a>
		<%
	}
}
catch(Exception e)
{
	
}
%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>