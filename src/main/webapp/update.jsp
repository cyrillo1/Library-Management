<%@ page import="com.itvedant.entity.LibraryProject" %>
<%@ page import="javax.persistence.EntityManager"%>
<%@ page import="javax.persistence.EntityManagerFactory"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<%
EntityManagerFactory emf= (EntityManagerFactory)application.getAttribute("emf");
EntityManager em = emf.createEntityManager();
int id= Integer.parseInt(request.getParameter("id"));
LibraryProject l= em.find(LibraryProject.class, id);
%>
<div class="container mt-3">
<form action="update">
<div class="input-group mb-3">
<input class="form-control " type="hidden" name="id" id="id" value="<%=l.getLibraryID()%>">
</div>
<div class="input-group mb-3">
<span class="input-group-text">Book Name: </span>
<input class="form-control " type="text" name="bookName" id="bookname" value="<%=l.getBookName()%>">
</div>
<div class="input-group mb-3">
<span class="input-group-text">Date Issued: </span>
<input class="form-control " type="date" name="issued" id="issued" value="<%=l.getDateIssued()%>">
</div>
<div class="input-group mb-3">
<span class="input-group-text">Return Date: </span>
<input class="form-control " type="date" name="return" id="return" value="<%=l.getReturnDate()%>">
</div>
<div class="input-group mb-3">
<span class="input-group-text">User ID: </span>
<input class="form-control " type="text" name="userID" id="userId" value="<%=l.getUserID()%>">
</div>
<div class="input-group mb-3">
<span class="input-group-text">User Name: </span>
<input class="form-control " type="text" name="userName" id="name" value="<%=l.getUserName()%>">
</div>
<input type="submit" value="Update" class="btn btn-primary mt-3" > 

</form>
</div>
<a href="logout" class="badge badge-secondary">Logout</a>
</body>
</html>