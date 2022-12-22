<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/Q&A.css">
</head>
<body>
	<%@ page import="java.util.*"%>
	<%@ page import="com.human.vo.*"%>
	
	<% ArrayList<BoardVO> alist = (ArrayList) request.getAttribute("alist");%>
	
	
	
   <div id="wrap" align="center">
      <h1>게시글 리스트</h1>
      <table class="list">
         <tr>
            <td colspan="5" style="border: white; text-align: right">
            <a href="wrForm">질의응답 등록 </a>
            <input type="button" value="삭제하기" style=" float: right;">
            </td>
         </tr>
         <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>선택</th> 
         </tr>
         
         <%
         	if(alist.size()==0){
         		out.print("<tr class='record'>");
				out.print("<td colspan=5>등록된 글이 없습니다.</td>");
				out.print("</tr>");
         	} else {
         		for(int i=0; i<alist.size();i++){
         			
         			BoardVO bvo = alist.get(i);
         			
         			String title = null;
         			
         			if(bvo.getChkbox().equals("Y")){
         				title=bvo.getTitle()+"*";
         			}else {
         				title=bvo.getTitle();
         			}
         			
         			out.print("<tr class='record'>");
         			out.print("<td><a href='"+request.getContextPath()+"/boardView?wno="+bvo.getNum()+"'>"+bvo.getNum()+"</td>");
         			out.print("<td>"+title+"</td>");
         			out.print("<td>"+bvo.getName()+"</td>");
         			out.print("<td>"+bvo.getIndate()+"</td>");
         			out.print("<td><input type='checkbox' name='chkbox' value="+bvo.getNum()+"></td>");
         			out.print("</tr>");
					
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