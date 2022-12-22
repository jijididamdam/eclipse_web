package loginPass;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginPass
 */
@WebServlet("/loginPass")
public class loginPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id= request.getParameter("id");
		String pass=request.getParameter("pass");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");				
		String[] hob = request.getParameterValues("hob");
		
		
		String url = "TestloginView.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		request.setAttribute("id", id);
		request.setAttribute("pass", pass);
		request.setAttribute("gender", gender);
		request.setAttribute("job", job);
		/*if(hob != null) {
			for(int i=0;i<hob.length; i++) {
				//System.out.println(hob[i]);
				request.setAttribute("hob", hob[i]);
			}
		}		*/
		request.setAttribute("hob", hob);
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
