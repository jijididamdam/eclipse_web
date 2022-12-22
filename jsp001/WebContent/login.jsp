<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginPass" method="get" id="form">
    	<input type="text" name="id" id="id" >
    	<input type="password" name="pass" id="pwd" >
    	<input type="button" value="로그인" onclick="chkId()">
    	남<input type="radio" name="gender" value="남">
    	여<input type="radio" name="gender" value="여">
    	직업<select name="job">
    		<option>군인</option>
    		<option>일반인</option>   		
    	</select>
    	커피<select multiple = "multiple">
    		<option>에스프레소</option>
    		<option>카라멜</option>
    		<option>라떼</option>
    		<option>더치</option>  		
    	</select>
    	<p>취미</p>
    	여행<input type="checkbox" name="hob"  value="여행"> 
    	낚시<input type="checkbox" name="hob"  value="낚시"> 
    	등산<input type="checkbox" name="hob"  value="등산"> 
    	집콕<input type="checkbox" name="hob"  value="집콕"> 
    	
    </form>
</body>
	<script>
		const regExp =/^(?=.*[\D/g]).{4,10}$/;
		const regPwd =/^(?=.*[a-zA-z]).{4,10}$/;
		
	 	function chkId(){
	        let idText = document.getElementById('id').value;
	        let pwdText = document.getElementById('pwd').value;
	        if(idText.match(regExp)&&pwdText.match(regPwd)){
	            alert('사용가능');
	            document.getElementById('form').submit();
	        } else{
	            alert('다시 입력하세요');
	        }
	    }
	    
	    
	</script>
</html>