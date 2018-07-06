<!DOCTYPE html>
<html>
<STYLE type="text/css">
  BODY {text-align: center}
 </STYLE>
 
<body>

Hello World of Spring!

<br><br>

Student name: ${param.studentName}

<br> <br>

<!-- The dollar sign is for accessing an attribute from the model -->
The message: ${message}

<br><br>

<img width = 30% src="<%= request.getContextPath() %>/resources/images/Aevy-logo.png"/>

</body>

</html>