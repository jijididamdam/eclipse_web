<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.*"  %>
    <%@ page import="com.hrd.VO.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<%@include file="nav.jsp" %>
	
	<h2>학생 명단</h2>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>전화</td>
			<td>주소</td>
			<td>가입일자</td>
			<td>학년</td>
		</tr>
		<%
			ArrayList<memberVO> mlist = (ArrayList) request.getAttribute("mlist");
		%>
		
		<%
			for(int i = 0 ; i < mlist.size(); i++){
				memberVO mvo = mlist.get(i);
				out.print("<tr>");
				out.print("<td>"+mvo.getNo()+"</td>");
				out.print("<td>"+mvo.getName()+"</td>");
				out.print("<td>"+mvo.getTel()+"</td>");
				out.print("<td>"+mvo.getAddress()+"</td>");
				String dd=mvo.getJoindate().substring(0, 10);
				dd = dd.replace("-", "");
				out.print("<td>"+dd+"</td>");
				String grade = mvo.getGrade();
				if(grade.equals("1")){
					out.print("<td>A</td>");
				} else if(grade.equals("2")){
					out.print("<td>B</td>");
				}else if(grade.equals("3")){
					out.print("<td>C</td>");
				}else if(grade.equals("4")){
					out.print("<td>D</td>");
				}
				out.print("</tr>");
				
			}


		%>

	
	
	</table>
	

	
	<%@include file="footer.jsp" %>
</body>
</html>