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
			<td>전화번호</td>
			<td>주소</td>
			<td>가입일자</td>
			<td>고객등급</td>
			<td>거주지역</td>
		</tr>
		<!-- 순회를 시키면 됩니다 -->
		<%
			ArrayList<MemberVO> mlist = (ArrayList) request.getAttribute("memberList");
		%>

		<%
			for (int i = 0; i < mlist.size(); i++) {
				MemberVO tempvo = mlist.get(i);
				out.print("<tr>");
				out.print("<td>"+tempvo.getCustno()+"</td>");
				out.print("<td>"+tempvo.getCustname()+"</td>");
				out.print("<td>"+tempvo.getPhone()+"</td>");
				out.print("<td>"+tempvo.getAddress()+"</td>");
				out.print("<td>"+tempvo.getJoindate().substring(0,10)+"</td>");
				out.print("<td>");
				if(tempvo.getGrade().equals("A")){
					out.print("VIP");
				}else if(tempvo.getGrade().equals("B")){
					out.print("일반");
				}else if(tempvo.getGrade().equals("C")){
					out.print("직원");
				}
				out.print("</td>");
				
				//out.print("<td>"+tempvo.getGrade()+"</td>");
				out.print("<td>"+tempvo.getCity()+"</td>");				
				out.print("</tr>");

			}
		%>

	</table>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>