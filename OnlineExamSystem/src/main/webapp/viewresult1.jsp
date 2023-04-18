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
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
String roll=request.getParameter("id");
int id=Integer.parseInt(roll);
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","Rkc@1249");
	PreparedStatement ps=con.prepareStatement("select * from result1 where id=?");
	ps.setInt(1,id);
	ResultSet rs=ps.executeQuery();
	int i=1;
	while(rs.next())
	{
		%>
		<table>
		<tr><td>Test<%=i%></td></tr>
		<tr><td>Roll No.</td><td><%=rs.getString(1)%></td></tr>
		<tr><td>Subject Id</td><td><%=rs.getString(2)%></td></tr>
		<tr><td>Name</td><td><%=rs.getString(3)%></td></tr>
		<tr><td>Marks</td><td><%=rs.getString(4)%></td></tr>
		</table>
		<%
		i++;
	}
}
catch(Exception ex)
{
	
}

%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>