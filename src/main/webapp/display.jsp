<%@ page import="com.itvedant.entity.LibraryProject" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Library Management</title>
</head>
<body>
<%List<LibraryProject> library= (List<LibraryProject>)request.getAttribute("library"); %>
<div class="container">
<a href="add.jsp" class="btn btn-success mt-3">Add Book</a>
<table class="table">
<tr>
<th>Library ID</th>
<th>Book Name</th>
<th>Date Issued</th>
<th>Return Date</th>
<th>User ID</th>
<th>User Name</th>
<th></th>
<th></th>
</tr>
<%for(LibraryProject k: library){ %>
<tr>
<td><%=k.getLibraryID() %></td>
<td><%=k.getBookName() %></td>
<td><%=k.getDateIssued() %></td>
<td><%=k.getReturnDate() %></td>
<td><%=k.getUserID() %></td>
<td><%=k.getUserName() %></td>
<td>
<%if(k.getUserID().isEmpty()){ %>
<a href="update.jsp?id=<%=k.getLibraryID()%>" class="btn btn-danger">Book Available</a>
<%} else{ %>
<a href="update.jsp?id=<%=k.getLibraryID()%>" class="btn btn-success">Update</a>
<%} %>
</td>
<td>
<%if(k.getUserID().isEmpty()){ %>
<a href="delete?id=<%=k.getLibraryID()%>"></a>
<%} else{ %>
<a href="delete?id=<%=k.getLibraryID()%>" class="btn btn-dark">Delete</a>
<%} %>

</td>
<td></td>
</tr>
<%} %>
</table>
<a href="logout" class="badge badge-secondary">Logout</a>

</div>
</body>
</html>