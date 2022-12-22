package com.human.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.DAO.CommDAO;
import com.human.vo.CommVO;

/**
 * Servlet implementation class cmAction
 */
@WebServlet("/cmAction")
public class cmAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommDAO cdao = new CommDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cmAction() {
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
		
		String sid=(String)request.getParameter("cid");	
		String ccontent = (String) request.getParameter("content");
		String wno=(String)request.getParameter("wno");
		System.out.println(wno);
		
		String eid=cdao.chkId(sid);
		
		if(eid!=null) {
			System.out.println("입력한 아이디 :"+sid+" 찾은 아이디 :"+eid);
			CommVO cvo = new CommVO();		
			int no = Integer.parseInt(wno);			
			cvo.setNum(no);
			cvo.setCid(eid);
			cvo.setContent(ccontent);
			cdao.insertComm(cvo);
		} else {
			System.out.println("일치하는 아이디 없다");
		}
		
		request.setAttribute("eid", eid);
		request.setAttribute("wno", wno);
		
		response.sendRedirect("boardView?wno="+wno);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
