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
	<%@ page import="com.human.DAO.*"%>

	<div id="wrap" align="center">
		<h1>게시글 등록</h1>
		<form name="frm" method="get" action="wrAction" id="form">
			<input type="hidden" name="command" value="board_write">
			<table>
				<tr>
					<th>글번호</th>
					<td>
						<%
							BoardDAO b = new BoardDAO();
							out.print(b.lastNum() + 1);
						%> (게시물 수정 삭제시 필요합니다.)
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" onchange="chkId()" id="id">
						* 필수(영문만 가능)</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="name" id="name"> * 필수 비밀글<input
						type="checkbox" name="chkbox"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass" id="pass"> * 필수</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" size="70" name="title"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>
				</tr>
			</table>
			<br> <br> <input type="button" value="등록" onclick="chk()">
			<input type="reset" value="다시 작성"> <input type="button"
				value="목록">
		</form>
	</div>
</body>

<script>
	//const reg = /^(?=.*[\D/g])(?=.*[$`~!@$!%.*#;:/^?&\\(\\)\-_=+]).{8}$/;
	const reg = /^(?=.*?[a-zA-z])(?=.*?[#?!@$ %^&*-]).{8,}$/;
	var chkFlag=false;
	function chkId() {
		let idText = document.getElementById('id').value;

		if (idText.match(reg)) {
			alert('사용가능');
			chkFlag=true;
		} else {
			alert('사용불가능');
		}

	}

	function chk() {
		// 클라이언트 >> js유효성을 검사 후 서버로 전송 >> 서버(유효성검사) >> DB >> view
		// * 클라이언트에서 서버에게 전송될 때, 클라이언트 html에서 어떻게 보내는가?
		//   지금까지 보낸 방식 submit 동작이 일어나면 그 때 서버에서 전송한다.
		let idText = document.getElementById('id').value;
		let passText = document.getElementById('pass').value;
		let nameText = document.getElementById('name').value;

		if (idText == "" || passText == "" || nameText == "") {
			alert('필수사항을 입력해주세요')
		} else if (idText != "" && passText != "" && nameText != ""&&chkFlag==true){
			document.getElementById('form').submit();
		}

	}
</script>


</html>