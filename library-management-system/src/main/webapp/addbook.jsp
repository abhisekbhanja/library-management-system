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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">elibrary</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-5">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i> Home</a>
          </li>

      <li class="nav-item">
        <a class="nav-link" href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-pen"></i> Add new
        </a>
        <div class="dropdown-menu bg-info" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Add user</a>
          <a class="dropdown-item" href="addbook.jsp">Add book</a>
          <a class="dropdown-item" href="#">issue book</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="fas fa-sign-out-alt"></i> Logout</a>
      </li>
    </ul>
    
  </div>
</nav>

<%@ page import="java.sql.*" %> 
 <div class="container  p-5">
        <div class="card p-5">
            <img class="card-img-top" src="holder.js/100x180/" alt="">
            <div class="card-body">
                <h3 class="text-center">Add Books</h3>
                <!-- form page -->
        <form class="w-50 admin" action="addbook.jsp" method="post">
            <div class="form-group">
                <label>Book Name</label>
                <input type="text" class="form-control" name="bname" placeholder="">
              </div>
              <div class="form-group">
                  <label>Book Price</label>
                  <input type="text" class="form-control" name="bprice" placeholder="">
                </div>
                <div class="form-group">
                  <label>Book Quantity</label>
                  <input type="text" class="form-control" name="bquantity" placeholder="">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-info w-100" value="add">
                </div>
       <%
       String bookname=request.getParameter("bname");
       String bookprice=request.getParameter("bprice");
       String bookquantity=request.getParameter("bquantity");
       
   	try{
   		String qry="insert into book(bookname,bookprice,bookquantity) values('"+bookname+"','"+bookprice+"','"+bookquantity+"')";
   	   	String url="jdbc:mysql://localhost:3306/lms";
   	   	String user="root";
   	   	String password="";
   	   	Class.forName("com.mysql.jdbc.Driver");
   	   	Connection con=DriverManager.getConnection(url, user, password);
   	   	System.out.println("connected");
   	   	Statement stmt=con.createStatement();
   	   	stmt.executeUpdate(qry);
   		//out.println("book added successfully");
   		%>
   		<p class="text-success">book added successfully</p>
   		<%
   	}
   	catch(Exception e){
   		//out.println("errorrrrrr");
   	}
       %>
        </form>
            </div>
        </div>
        
      
       
    </div>
   


   
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>