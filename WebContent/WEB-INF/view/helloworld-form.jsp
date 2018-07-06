<!DOCTYPE html>
<html>
<head>
	<!-- Is this title only for information? -->
	<title>Hello World - Input Form</title>
	<%
 
	String bgColor = "PINK";
	String myColor = request.getParameter("color");
 
	if (myColor != null){
	myColor = myColor;
	}
	else{
	myColor = bgColor;
	}
 
	%>
  
	<BODY BGCOLOR="<%= myColor %>">


</head>

<STYLE type="text/css">
  BODY {text-align: center}
 </STYLE>

<body>
	<br><br>
	<!-- the value for action is referring to the requestmapping for
	the letsShoutMethod in HelloWorldController -->
	
	<form action="processFormVersionTwo" method="GET">
		
		<input type="text" name="studentName"
			placeholder="What's your name?" size=50/>
		
		<input type="submit" />
	
	</form>
	
	<form action="processFormVersionThree" method="GET">
	
		<input type="text" name="watdan"
			placeholder="geheime codewoord?" size=80/>
			
		<input type="submit"/>
	</form>
	
	<form action="processFormVersionFour" method="GET">
	
		<input type="text" name="studentName"
			placeholder="Wasje naam?" size=80/>
			
		<input type="submit"/>
	</form>
	
	<br><br>
	<img width = 30% src="<%= request.getContextPath() %>/resources/images/Aevy-logo.png"/>
</body>

	
</html>