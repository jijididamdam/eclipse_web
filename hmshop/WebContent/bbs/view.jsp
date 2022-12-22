<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/Q&A.css">
</head>
<body>
	<%@ page import="java.util.*"%>
	<%@ page import="com.human.vo.*"%>
	
	<% ArrayList<CommVO> clist = (ArrayList) request.getAttribute("clist"); %>

	<div id="wrap" align="center">
		<h1>게시글 상세보기</h1>
		<table>
			<tr>
				<th>글번호</th>
				<td>${board.getNum() }</td>
				<th>작성자</th>
				<td>${board.getName() }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${board.getIndate() }</td>
				<th>아이디</th>
				<td>${board.getId() }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3">${board.getTitle() }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3">${board.getContent() }</td>
			</tr>
		</table>
		<table>
			<tr>
				<th>댓글번호</th>
				<th>아이디</th>
				<th>댓글내용</th>
				<th>작성일</th>
			</tr>
			<tr>
				<%
					if(clist.size()==0){
						out.print("<tr><td colspan=4>등록된 글이 없습니다.</td></tr>");
					} else {
						for(int i=0; i<clist.size(); i++){
							CommVO cvo = clist.get(i);
							out.print("<tr class='record'>");
							out.print("<td>"+cvo.getNo()+"</td>");
							out.print("<td>"+cvo.getCid()+"</td>");
							out.print("<td>"+cvo.getContent()+"</td>");
							out.print("<td>"+cvo.getIndate()+"</td>");
							out.print("<tr>");
							
						}
					}
				
				%>
			</tr>
		</table>
		<form method="get" action="cmAction" id="commAdd">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="cid" id="cid"></td>
				</tr>
				<tr>
					<th>댓글내용</th>
					<td><textarea cols="30" rows="8" name="content"></textarea>
					<td>
				</tr>
				<tr>
					<input type="hidden" value=${board.getNum()} name="wno"> 
					<input type="submit" onclick="chkCid()" value="댓글 등록" >
				</tr> 

			</table>
		</form>

		<br> <br> <input type="button" value="게시글 수정">
		<input type="button" value="게시글 삭제"> <input
			type="button" value="게시글 리스트"> <input
			type="button" value="게시글 등록">
	</div>
</body>
<script>

</script>


</html>