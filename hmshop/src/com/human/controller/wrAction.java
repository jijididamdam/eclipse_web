package com.human.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.DAO.BoardDAO;
import com.human.vo.BoardVO;

/**
 * Servlet implementation class wrAction
 */
@WebServlet("/wrAction")
public class wrAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BoardDAO bDAO =new BoardDAO();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public wrAction() {
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
		
		
		String id=(String)request.getParameter("id");
		String name=request.getParameter("name");
		String pass=(String)request.getParameter("pass");
		String title = (String)request.getParameter("title");
		String content=(String)request.getParameter("content");
		String chkbox=(String)request.getParameter("chkbox");		
		
		BoardVO bvo=new BoardVO();
		
		bvo.setId(id);
		bvo.setName(name);
		bvo.setPass(pass);
		bvo.setTitle(title);
		bvo.setContent(content);
		if(chkbox==null) {
			bvo.setChkbox("N");
		}else {
			bvo.setChkbox("Y");			
		}
		
		if(id!=null) {
			bDAO.insert(bvo);
		} else {
			System.out.println("입력한 글이 없습니다.");
		}
		
		response.sendRedirect("boardList");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
