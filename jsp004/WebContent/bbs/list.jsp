<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/shopping.css">
</head>
<body>


	<%@ page import="java.util.*"%>
	<%@ page import="com.human.vo.*"%>

	<%
		ArrayList<BoardVO> al = (ArrayList) request.getAttribute("bList");
		out.print(al.size() + "/");
	%>


	<div id="wrap" align="center">
		<h1>게시글 리스트</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><a
					href="wrForm">게시글 등록</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
			<%
				if (al.size() == 0) {
					out.print("<tr class='record'>");
					out.print("<td colspan=5>등록된 글이 없습니다.</td>");
					out.print("</tr>");
				} else {

					for (int i = 0; i < al.size(); i++) {
						BoardVO bvo = al.get(i);
						out.print("<tr class='record'>");
						out.print("<td>" + bvo.getNum() + "</td>");
						out.print("<td><a href='"+request.getContextPath()+"/boardView?wno="+bvo.getNum()+"'>" + bvo.getTitle() + "</td>");
						out.print("<td>" + bvo.getName() + "</td>");
						out.print("<td>" + bvo.getIndate() + "</td>");
						out.print("<td>" + bvo.getCnt() + "</td>");
						out.print("</tr>");

						out.print("<hr>");
					}
				}
			%>
			<tr class="record">
				<td></td>
				<td><a href="#"></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
</body>
</html>