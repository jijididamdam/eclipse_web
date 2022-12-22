<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<%@include file="nav.jsp" %>
	<br>
	<h2>학생등록</h2>
	<form action="wrAction" method="get" id="frm">
		<table border="1">
			<tr>
				<td>번호</td>
				<td><input type="text" value="${putNo}" readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="name" name="name">*</td>
			</tr>
			<tr>
				<td>전화</td>
				<td><input type="text" id="tel" name="tel">*</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" id="addr" name="addr">*</td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="text" id="jdate" name="jdate">*</td>
			</tr>
			<tr>
				<td>학년</td>
				<td>
					1<input type="radio" name="grade" value="1" checked>
					2<input type="radio" name="grade" value="2" >
					3<input type="radio" name="grade" value="3" >
					4<input type="radio" name="grade" value="4" >								
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="등록하기" onclick="chk()"></td>
			</tr>
		</table>
	
	</form>
	
	
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
	function chk(){
		
		var allFrm = document.querySelector('#frm');
		var chkName = allFrm.name.value;
		var chkTel = allFrm.tel.value;
		var chkAddr = allFrm.addr.value;
		var chkJdate = allFrm.jdate.value;
		
		if(chkName==''){
			alert("이름을 입력해주세요");
			return;
		}
		if(chkTel==''){
			alert("전화번호를 입력해주세요");
			return;
		}
		if(chkAddr==''){
			alert("주소를 입력해주세요");
			return;
		}
		if(chkJdate==''){
			alert("가입일자를 입력해주세요");
			return;
		}
		allFrm.submit();
		alert("등록성공");
		
		
	}
	
    document.getElementById('tel').addEventListener('keyup',function(e){
        var number = document.getElementById('tel');
        number.value = chkTel(number.value);
    });
    
    function chkTel(telText){
        telText = document.getElementById('tel').value;
        telText = telText.replace(/\D/g,''); // 문자 입력 불가
        telText = telText.substring(0,11); 
        let size = telText.length;
          
        if(size<=3){
            telText=telText;
        }else if(size<4&&(/^[0-1]{3}/.test(telText))){
            telText = telText+'-';
        }else if(size < 8 &&(/^[0-1]{3}[0-9]{4}/.test(telText))){
            telText = telText.substring(0,3)+'-'+telText.substring(3,7);
        }else if(/^[0-1]{3}[0-9]{4}[0-9]{4}/.test(telText)){
            telText = telText.substring(0,3)+'-'+telText.substring(3,7)+'-'+telText.substring(7,11)
        }
        return telText;
    }

</script>

</html>