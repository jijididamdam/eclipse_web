package com.hrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrd.DAO.MemberDAO;
import com.hrd.VO.MemberVO;

/**
 * Servlet implementation class joinAction
 */
@WebServlet("/joinAction")
public class joinAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public joinAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		int custno=Integer.parseInt(request.getParameter("custno"));    //디비 쿼리에서 생성하여 생략
		String custname=request.getParameter("custname");
		String phone=(String)request.getParameter("phone");
		String address = (String)request.getParameter("address");
		String joindate=(String)request.getParameter("joindate");
		String grade=(String)request.getParameter("grade");		
		String city=(String)request.getParameter("city");		
		
		System.out.println(custname+"/"+phone); // 확인용
		
		//dao에게 전달한 vo
		//번호 자동 생성이라는 기능을 구현한다면 자동 생성된 번호도 추가해야한다.
		MemberVO mvo = new MemberVO();
		mvo.setCustno(custno);
		mvo.setCustname(custname);
		mvo.setCity(city);
		mvo.setAddress(address);
		mvo.setGrade(grade);
		mvo.setJoindate(joindate);
		mvo.setPhone(phone);
		
		MemberDAO mdao = MemberDAO.getInstance();  
		mdao.insert(mvo);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
