package com.itvedant.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		
		ServletContext ctx= getServletContext();
		EntityManagerFactory emf= (EntityManagerFactory)ctx.getAttribute("emf");
		EntityManager em= emf.createEntityManager();
		
		int id= Integer.parseInt(request.getParameter("id"));
		String bookName= request.getParameter("bookName");
		String dateIssued= request.getParameter("issued");
		String returnDate= request.getParameter("return");
		String userID= request.getParameter("userID");
		String userName= request.getParameter("userName");
		
		LibraryProject l= em.find(LibraryProject.class, id);
		/*LibraryProject l1= new LibraryProject();
		 * l1.setBookName(bookName);
		l1.setDateIssued(dateIssued);
		l1.setReturnDate(returnDate);
		l1.setUserID(userID);
		l1.setUserName(userName);*/
		em.getTransaction().begin();
		/*em.merge(l1);*/
		l.setBookName(bookName);
		l.setDateIssued(dateIssued);
		l.setReturnDate(returnDate);
		l.setUserID(userID);
		l.setUserName(userName);
		em.getTransaction().commit();
		
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
