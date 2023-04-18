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
<form action="addquestion.jsp">
<table>
<tr><td>Enter Subject Id/Code</td><td><input type="number" name="subid"></td></tr>
<tr><td>Enter Question</td><td><input type="text" name="question"></td></tr>
<tr><td>Enter Option 1</td><td><input type="text" name="option1"></td></tr>
<tr><td>Enter Option 2</td><td><input type="text" name="option2"></td></tr>
<tr><td>Enter Option 3</td><td><input type="text" name="option3"></td></tr>
<tr><td>Enter Option 4</td><td><input type="text" name="option4"></td></tr>
<tr><td>Enter Answer</td><td><input type="text" name="answer"></td></tr>
<tr><td></td><td><input type="submit" value="Add Questions"></td></tr>

</table>

</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>