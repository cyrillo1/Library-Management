package com.itvedant.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itvedant.entity.LibraryProject;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		String name=(String)session.getAttribute("name");
		PrintWriter out= response.getWriter();
		out.println("Hello "+ name+" You have successfully Logged in. Have a great Working Day");
		
		EntityManagerFactory emf= Persistence.createEntityManagerFactory("pu");
    	ServletContext ctx= getServletContext();
    	ctx.setAttribute("emf", emf);
    	EntityManager em= emf.createEntityManager();
    	//LibraryProject l= em.find(LibraryProject.class,1);
    	Query query= em.createQuery("Select l from LibraryProject l");
    	
    	    List<LibraryProject> library = query.getResultList();
			/*
			 * PrintWriter out = response.getWriter(); for(LibraryProject l:library)
			 * out.println(l);
			 */
    	    request.setAttribute("library", library);
    	    RequestDispatcher rd= request.getRequestDispatcher("display.jsp");
    	    rd.include(request, response);
    	    
    	    out.println("<br/><a href='logout'>Logout</a>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
