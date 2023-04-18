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
int count=0;
try{

String noq1=request.getParameter("count");
int noq=Integer.parseInt(noq1);
noq=noq-1;
int i=0;
for(i=1;i<=noq;i++)
{
	String op=request.getParameter("option"+i);
	String ans=request.getParameter("answer"+i);
	if(op.equalsIgnoreCase(ans))
	{
		count=count+1;	
	}
}
out.print("You scored "+count+" out of "+noq+"<br>");
%>
<a href="viewresult.jsp">View Result...</a>
<%
}
catch(Exception e){
}

int id=(Integer)session.getAttribute("id");


int subid=(Integer)session.getAttribute("subid");
String name=(String)session.getAttribute("name");
int marks=count;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","Rkc@1249");
	PreparedStatement ps=con.prepareStatement("insert into result1 values(?,?,?,?)");
	ps.setInt(1,id);
	ps.setInt(2,subid);
	ps.setString(3,name);
	ps.setInt(4,marks);
	int status = ps.executeUpdate();
}


catch(Exception ex)
{
}


%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>