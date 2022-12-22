<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ page import="java.util.*"%>
<%@ page import="com.hrd.VO.*"%>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="top-nav.jsp"%>
	<h1>회원목록조회/수정</h1>

	<table>
		<tr>
			<td>회원목록</td>
			<td>회원성명</td>
			<td>고객등급</td>
			<td>매출</td>
		</tr>
		
		<%
			ArrayList<ViewMoneyVO> mlist = (ArrayList) request.getAttribute("viewMoneyList");
		%>

		<%
			for (int i = 0; i < mlist.size(); i++) {
				ViewMoneyVO tempvo = mlist.get(i);
				out.print("<tr>");
				out.print("<td>"+tempvo.getCustno()+"</td>");
				out.print("<td>"+tempvo.getCustname()+"</td>");
				out.print("<td>"+tempvo.getCustgrade()+"</td>");
				out.print("<td>"+tempvo.getTotalprice()+"</td>");			
				out.print("</tr>");
			}
		%>
		
	</table>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>