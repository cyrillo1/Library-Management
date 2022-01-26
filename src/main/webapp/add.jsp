<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<body>
<div class="container mt-3">
<form action="add">
<div class="input-group mb-3">
<span class="input-group-text">Library ID: </span>
<input class="form-control " type="text" name="id" id="id">
</div>
<div class="input-group mb-3">
<span class="input-group-text">Book Name: </span>
<input class="form-control " type="text" name="bookName" id="bookname">
</div>
<div class="input-group mb-3">
<span class="input-group-text">Date Issued: </span>
<input class="form-control " type="datetime-local" name="issued" id="issued" value="-">
</div>
<div class="input-group mb-3">
<span class="input-group-text">Return Date: </span>
<input class="form-control " type="datetime-local" name="return" id="return" value="-">
</div>
<div class="input-group mb-3">
<span class="input-group-text">User ID: </span>
<input class="form-control " type="text" name="userID" id="userId" >
</div>
<div class="input-group mb-3">
<span class="input-group-text">User Name: </span>
<input class="form-control " type="text" name="userName" id="name" value="-">
</div>
<input type="submit" value="Add" class="btn btn-primary mt-3" > 

</form>
</div>
<a href="logout" class="badge badge-secondary">Logout</a>
</body>
</html>