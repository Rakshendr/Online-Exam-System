<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="abc.Question" %>
<%@page import="abc.QuestionDao" %>
<jsp:useBean id="q" class="abc.Question"></jsp:useBean>
<jsp:setProperty property="*" name="q"></jsp:setProperty>
<%
int i=QuestionDao.save(q);
if(i==1)
{
	out.print("Question Added Successfully...");
	%>
	<a href="question.jsp">Add another question</a>
	<% 
}
else
{
	out.print("Oops, Unable to add Question!!!");
	%>
	<a href="question.jsp">Try again</a>
	<% 
}

%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>