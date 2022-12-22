package com.human.lotto;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lotto
 */
@WebServlet("/lottoPass")
public class lottoPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int[] rdom = new int[3];	
	lotto lt = new lotto();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lottoPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		lt.rdrd();
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String num1 = request.getParameter("1");
		String num2 = request.getParameter("2");
		/*String num3 = request.getParameter("3");
		String num4 = request.getParameter("4");
		String num5 = request.getParameter("5");
		String num6 = request.getParameter("6");
		String num7 = request.getParameter("7");*/
		
		String url="./lotto/viewLotto.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("num3", lt.rd[0]);
		request.setAttribute("num4", lt.rd[1]);
		request.setAttribute("num5", lt.rd[2]);
		request.setAttribute("num6", lt.rd[3]);
		request.setAttribute("num7", lt.rd[4]);
		
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
