<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%
String id1=request.getParameter("id");
int id=Integer.parseInt(id1);
String password=request.getParameter("password");
Connection con=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","Rkc@1249");
	PreparedStatement ps=con.prepareStatement("select * from teacher where id=? && password=?");
	ps.setInt(1,id);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		response.sendRedirect("teacherhome.jsp");
	}
	else
	{
		response.sendRedirect("teacherlogin1.jsp");
	}
}

catch(Exception e)
{
	
}
%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>