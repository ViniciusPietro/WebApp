package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;

@WebServlet("/redirect")
public class RedirectController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public RedirectController() 
    {
        super();
    }
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{		
		HttpSession session = request.getSession();
		String pagina = request.getParameter("pagina");
		String titulo = (String) session.getAttribute("titulo");
		String nivel = (String) session.getAttribute("nivel");
		Usuario user = (Usuario) session.getAttribute("user");

		try 
		{						
			response.setContentType("application/json; charset=utf-8");
			session.setAttribute("titulo", titulo);
			session.setAttribute("nivel", nivel);
			request.setAttribute("titulo", user.getTitulo());
			request.setAttribute("nivel", user.getNivel());
			response.setStatus(HttpServletResponse.SC_OK);	
			request.getRequestDispatcher(pagina).forward(request, response);
		} 
		catch (Exception e) 
		{
			request.getRequestDispatcher(pagina).forward(request, response);	
		}
		finally
		{
			response.getWriter().flush();	
			destroy();	
		}		
	}
}
