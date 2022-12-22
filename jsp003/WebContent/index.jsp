<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="main.css" rel="stylesheet">
           <!-- "./css/main.css"  -->
</head>
<body>
	<h1>My homepage</h1>
	<hr>
	<span>로그인정보 : </span>${teamName } / ${age }
</body>
</html>

<!-- 
컨트롤러에서 넘어온 데이터
request.setAttribute("teamName","Human");
request.setAttribute("age",34);
		
 -->