<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="top-nav.jsp" %>
	
	<h1>홈쇼핑 회원 등록</h1>
      <form id="inputForm" action="joinAction" method="post">
         <table border="1">
            <tr>
               <td>회원번호(자동발생)</td>
               <td><input type="text" id="custno" name="custno" value="${nownumber}" readonly></td>
            </tr>
            <tr>
               <td>회원성명</td>
               <td><input type="text" id="custname" name="custname"></td>
            </tr>
            <tr>
               <td>회원전화</td>
               <td><input type="text" name="phone"></td>  <!-- 모두 아이디 지정해주는게 정상 -->
            </tr>
            <tr>
               <td>회원주소</td>
               <td><input type="text" name="address"></td>
            </tr>
            <tr>
               <td>가입일자</td>
               <td><input type="text" name="joindate"></td>
            </tr>
            <tr>
               <td>고객등급</td>
               <td><input type="text" name="grade"></td>
            </tr>
            <tr>
               <td>도시코드</td>
               <td><input type="text" name="city"></td>
            </tr>
            <tr>
               <td colspan="2"><center><input type="button" value="등록" onclick="chk()"> <input
                  type="button" value="조회"></center></td>
            </tr>
         </table>
      </form>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script>
	function chk(){
		alert("유효성검사");
		var inputfrm = document.querySelector('#inputForm');
		alert(inputfrm.custname.value);
		var name = inputfrm.custname.value;
		//유효성 검사 코드를 작성
		if(name==''){
			alert("이름은 필수 입력입니다.")
			return;
		} 
		
		inputfrm.submit();   // 서브밋 실행
		alert('등록을 성공하였습니다.');
	}
</script>


</html>