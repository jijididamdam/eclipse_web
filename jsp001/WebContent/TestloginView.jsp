<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<h1>${id}</h1>
	<h1>${pass}</h1>
	<h1>${gender}</h1>
	<h1>${job}</h1>
	
	<% String [] hobby = (String[])request.getAttribute("hob"); %>
	<%for(int i=0; i<hobby.length; i++){ %>
	<h1><%=hobby[i]%></h1>
	<%} %>
	
	
</body>
</html>