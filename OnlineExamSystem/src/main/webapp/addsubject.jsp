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
<%@page import="abc.Subject" %>
<%@page import="abc.SubjectDao" %>
<jsp:useBean id="sub" class="abc.Subject"></jsp:useBean>
<jsp:setProperty property="*" name="sub"></jsp:setProperty>
<%
int i=SubjectDao.save(sub);
if(i==1)
{
	out.print("Subject Added Successfully");
	%>
	<br><a href="subject.jsp">Add another one...</a>
	<%
}
else
{
	out.print("Subject Addition Failed!!!");
	%>
	<br><a href="subject.jsp">Try again!!!</a>
	<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>