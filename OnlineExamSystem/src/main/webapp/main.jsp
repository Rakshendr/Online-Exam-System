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

<div class="mySlides1">
<img src="onlineexam1.jpg" style="width:100%;height:50%">
</div>
<div class="mySlides1">
<img src="onlineexam3.jpg" style="width:100%;height:50%">
</div>
<div class="mySlides1">
<img src="onlineexam4.jpg" style="width:100%;height:50%">
</div>

<div style="text-align:center">
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>


</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides()
  {
    var i;
    var slides = document.getElementsByClassName("mySlides1");
    var dots=document.getElementsByClassName("dots");
    for (i = 0; i < slides.length; i++) 
    {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    slides[slideIndex-1].style.display = "block";  
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>