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
          <a class="dropdown-item" href="addbook.jsp">Add book</a>
          <a class="dropdown-item" href="issue.jsp">issue book</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="fas fa-sign-out-alt"></i> Logout</a>
      </li>
    </ul>
    
  </div>
</nav>

<%@ page import="java.sql.*" %> 



   <div class="container p-5">
   	 <h1 class="text-primary">dashboard</h1>

   
   <table class="table table-striped table-dark">
			<tr class="text-white">
				<th><b>Bookname</b></th>
				<th><b>Bookprice</b></th>
				<th><b>Bookquantity</b></th>
			</tr>
   
<%
	String qry="select * from book";
	String url="jdbc:mysql://localhost:3306/lms";
	String user="root";
	String password="";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, user, password);
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(qry);
	while(rs.next()){
		String bookname=rs.getString("bookname");
		String bookprice=rs.getString("bookprice");
		String bookquantity=rs.getString("bookquantity");
		%>
		
			<tr>
				<td><%=bookname %></td>
				<td><%=bookprice %></td>
				<td><%=bookquantity %></td>
			</tr>
		
		
		<% 
	}
%>
</table>
   </div>
 <%
	String username=(String)session.getAttribute("username");
	String mpassword=(String)session.getAttribute("password");
	
	if(username==null && mpassword==null){
		response.sendRedirect("admin.jsp");
	}
	else{
		//out.println("welcome admin");
	}
	%>  
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>