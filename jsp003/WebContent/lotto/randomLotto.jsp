<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../lottoPass" method="get" id="form">
		<table>
			<tr>
				<th>로또 번호 제공 사이트</th>
			</tr>
			 <tr>
                <td><input type="text" name="1" id="1"></td>
            </tr>
            <tr>
                <td><input type="text" name="2"  id="2"></td>
            </tr>
            <tr>
            	<td><input type="submit" value="입력하기" onclick="chk()"></td>
            </tr>
		</table>	
	</form>
</body>
<script>
	const reg = /^[1-9]{1}$|^[1-3]{1}[0-9]{1}$|^[4]{1}[0-5]{1}$/;
	function chk(){
		let a=document.getElementById("1").value;
		let b=document.getElementById("2").value;
		if(a.match(reg)&&b.match(reg)){
			if(a==b){
				alert('중복숫자')
			}else{
				document.getElementById('form').submit();
			}
		} else {
			alert('입력불가')
		}
	}


</script>
</html>