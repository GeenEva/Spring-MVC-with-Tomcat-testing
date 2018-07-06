
<!DOCTYPE html>

<html>


 <STYLE type="text/css">
  BODY {text-align: center}
 </STYLE>

<body>
	
	<!-- This is the text you see in the beginning -->
	<h2> Spring MVC Demo - Looking Great! You are so amazing! </h2>

	<hr>
	<!-- This is the link, you click on the words 'Hello World Form'-->
	<!-- When you click on it you go to the showForm -->
	<a href="showForm"> Hello World Form</a>
	
	<br><br>
	
	 <img width = 30% src="<%= request.getContextPath() %>/resources/images/cute.png"/>
	
	<!-- Deze werkt ook, maar blijft annoying rood kruisje in package explorer: 
	<img width = 30%
	 src="${pageContext.request.contextPath}/resources/images/Aevy-logo.png" -->
	 

</body>

</html>