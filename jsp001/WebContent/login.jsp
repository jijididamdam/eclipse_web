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
    	<input type="button" value="�α���" onclick="chkId()">
    	��<input type="radio" name="gender" value="��">
    	��<input type="radio" name="gender" value="��">
    	����<select name="job">
    		<option>����</option>
    		<option>�Ϲ���</option>   		
    	</select>
    	Ŀ��<select multiple = "multiple">
    		<option>����������</option>
    		<option>ī���</option>
    		<option>��</option>
    		<option>��ġ</option>  		
    	</select>
    	<p>���</p>
    	����<input type="checkbox" name="hob"  value="����"> 
    	����<input type="checkbox" name="hob"  value="����"> 
    	���<input type="checkbox" name="hob"  value="���"> 
    	����<input type="checkbox" name="hob"  value="����"> 
    	
    </form>
</body>
	<script>
		const regExp =/^(?=.*[\D/g]).{4,10}$/;
		const regPwd =/^(?=.*[a-zA-z]).{4,10}$/;
		
	 	function chkId(){
	        let idText = document.getElementById('id').value;
	        let pwdText = document.getElementById('pwd').value;
	        if(idText.match(regExp)&&pwdText.match(regPwd)){
	            alert('��밡��');
	            document.getElementById('form').submit();
	        } else{
	            alert('�ٽ� �Է��ϼ���');
	        }
	    }
	    
	    
	</script>
</html>