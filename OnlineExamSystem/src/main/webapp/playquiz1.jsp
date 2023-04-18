<%@page language="java" contentType="text/html; charset=ISO-8859-1"
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
<form action="result.jsp">
<%
Connection con=null;
String sid=request.getParameter("subid");
String name= request.getParameter("name");
int subid=Integer.parseInt(sid);
String id1=request.getParameter("id");
int id=Integer.parseInt(id1);
session.setAttribute("subid", subid);
session.setAttribute("name", name);
session.setAttribute("id",id);
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","Rkc@1249");
	PreparedStatement ps=con.prepareStatement("select * from question where subid=?");
	ps.setInt(1,subid);
	ResultSet rs=ps.executeQuery();
	int i=1;
	%>
	<table>
	<tr><td>Name:- <%=name%></td></tr>
	<tr><td>Roll No.:- <%=id%></td></tr>
	<tr><td>
	
	</td></tr>
	</table>
	<%
	while(rs.next())
	{
		%>		
		<table>
		<tr><td>Q<%=i%>: <%=rs.getString(2)%></td></tr>
		<tr><td><input type="radio" name="option<%=i%>" value="<%=rs.getString(3)%>"><%=rs.getString(3)%></td></tr>
		<tr><td><input type="radio" name="option<%=i%>" value="<%=rs.getString(4)%>"><%=rs.getString(4)%></td></tr>
		<tr><td><input type="radio" name="option<%=i%>" value="<%=rs.getString(5)%>"><%=rs.getString(5)%></td></tr>
		<tr><td><input type="radio" name="option<%=i%>" value="<%=rs.getString(6)%>"><%=rs.getString(6)%></td></tr>
		<tr><td><input type="hidden" name="answer<%=i%>" value="<%=rs.getString(7)%>"></td></tr>
		<%
		i++;
	}
	%>
	<tr><td><input type="hidden" name="count" value="<%=i%>"></td></tr>
	<tr><td><input type="submit" value="Submit"></td></tr>
	</table>
	</form>
	<%
}

catch(Exception e)
	{
	}
%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>