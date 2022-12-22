package com.human.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.DAO.BoardDAO;
import com.human.DAO.CommDAO;
import com.human.vo.BoardVO;
import com.human.vo.CommVO;

/**
 * Servlet implementation class boardView
 */
@WebServlet("/boardView")
public class boardView extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BoardDAO bdao = new BoardDAO();  
	CommDAO cdao = new CommDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String nn = request.getParameter("wno"); 
		String no = (String)request.getAttribute("wno");   
		
		ArrayList<CommVO> clist = new ArrayList<>();
		BoardVO data = new BoardVO();		
		
		if(nn!=null) {
			clist = cdao.selectAll(nn);
			data = bdao.selectOne(nn);
		}else if(no!=null) {
			clist = cdao.selectAll(no);
			data = bdao.selectOne(no);
		}
		
		String url = "bbs/view.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		request.setAttribute("board", data);
		request.setAttribute("clist", clist);
		
		dispatcher.forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
