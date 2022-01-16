<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>elibrary.com</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">
<link rel="icon" href="https://icons.iconarchive.com/icons/martz90/circle/128/books-icon.png">
</head>
<body>
<%
	String name=(String)session.getAttribute("1");
String n2=(String)session.getAttribute("2");
String n3=(String)session.getAttribute("3");
String n4=(String)session.getAttribute("4");
String n5=(String)session.getAttribute("5");
String n6=(String)session.getAttribute("6");
String n7=(String)session.getAttribute("7");

%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">elibrary</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <h5 class="text-white nav-link">Welcome <%=name %></h5>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="userlogout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
      </li>
      
    </ul>
    
  </div>
</nav>
 <div class="container-fluid p-5">

 <h3 class="text-primary">User Profile</h3>

    <ul class="list-group w-50">
  <li class="list-group-item  bg-info text-white">Name: <%=name %></li>
  <li class="list-group-item">Email: <%=n2 %></li>
  <li class="list-group-item">Phone: <%=n3 %></li>
  <li class="list-group-item">Address: <%=n4 %></li>
  <li class="list-group-item">City: <%=n5 %></li>
  <li class="list-group-item">State: <%=n4 %></li>
  <li class="list-group-item"><b>Book name: <%=n7 %></b></li>
</ul>

 </div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>