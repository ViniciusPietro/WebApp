package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AutDao;
import dao.VotingDao;
import model.Authorization;
import model.Votos;

@WebServlet("/votar")
public class VotingController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public VotingController() 
    {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		String titulo = (String) request.getParameter("user");
		String candidato = (String) request.getParameter("voto");
		if(titulo == null) titulo = (String) session.getAttribute("titulo");

		Authorization aut = new AutDao().find(titulo);
		if(aut != null)
		{
			if(aut.getPodeVotar() == 'Y' && aut.getJaVotou() == 'N')
			{				
				Votos voto = new Votos();
				voto.setCandidato(Integer.parseInt(String.valueOf(candidato)));
				voto.setTitulo(aut.getTitulo());

				new VotingDao().save(voto);

				aut.setJaVotou('Y');
				new AutDao().save(aut);

				int nivel = (int) Integer.parseInt(String.valueOf(session.getAttribute("nivel")));
				session.setAttribute("titulo", titulo);
				session.setAttribute("nivel", nivel);
				
				
				response.getWriter().println("Voto computado com sucesso");	
				request.getRequestDispatcher("index.jsp").forward(request, response);	
				response.getWriter().flush();	
			}
			else
			{
				response.getWriter().println("Você não esta autorizado a votar ou ja votou");	
				request.getRequestDispatcher("index.jsp").forward(request, response);	
				response.getWriter().flush();	
			}
		}
		else
		{
			response.getWriter().println("Você não esta autorizado a votar ou ja votou  2");		
			request.getRequestDispatcher("index.jsp").forward(request, response);	
			response.getWriter().flush();	
		}
	}
}
