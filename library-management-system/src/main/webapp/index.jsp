<%@page import="com.mysql.cj.Session"%>
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
<div class="bg">
<%@ page import="java.sql.*" %> 
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">elibrary</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      
      <li class="nav-item">
        <a class="nav-link" href="admin.jsp"><i class="fas fa-sign-in-alt"></i> Admin login</a>
      </li>
      
    </ul>
    
  </div>
</nav>
    <div class="container-fluid">
  <div class="row">
    <div class="col-md-9"><h1 class="banner">Welcome</h1></div>
    <div class="col-md-3 login">
      <div class="card logincard ">
        <img class="card-img-top" src="holder.js/100x180/" alt="">
        <div class="card-body">
          <h5 class="text-white text-center">Login here</h5>
          <br>
          <form action="index.jsp" method="post">
            <div class="form-group">
              <input type="text" name="semail" class="form-control" placeholder="Enter your email">
            </div>
            <div class="form-group">
              <input type="password" name="spassword" class="form-control" placeholder="Enter your password">
            </div>
            <div class="form-group">
              <input type="submit" class="btn btn-info" value="login">
            </div>
            <div class="text-white">Don't hava account click <a href="register.jsp">here</a></div>
          
          	
          
          
          <!-- Login code -->
          	<%
        	try{
        		String semail=request.getParameter("semail");
                String spassword=request.getParameter("spassword");

                Class.forName("com.mysql.jdbc.Driver");
        		String qry="SELECT * FROM `user` INNER JOIN book on user.id=book.id where semail='"+semail+"' AND spassword='"+spassword+"'";
         		String url="jdbc:mysql://localhost:3306/lms";       	
                String user="root";
        	   	String password="";
        	   	Connection con=DriverManager.getConnection(url, user, password);
        	   	System.out.println("connected database...");
        	   	Statement st=con.createStatement();
        	   	ResultSet rs=st.executeQuery(qry);
        	   	
            	if(rs.next()){

        			String username=rs.getString("sname");
                	String useremail=rs.getString("semail");
              		String phone=rs.getString("phone");
           	   		String addr=rs.getString("address");
           	   		String city=rs.getString("city");
           	   		String state=rs.getString("state");
           	   		String country=rs.getString("bookname");
            		response.sendRedirect("profile.jsp");
            		System.out.println(country);
            	 	session.setAttribute("1", username);
                	session.setAttribute("2", useremail);
                	session.setAttribute("3", phone);
                	session.setAttribute("4", addr);
                	session.setAttribute("5", city);
                	session.setAttribute("6", state);
                	session.setAttribute("7", country);
            		%>
            		<p class="text-primary">success</p>
            		<%
            	}
            	else{
            		%>
            		<p class="text-danger">invalid credentials</p>
            		<%
            	}
        	 
        	}
        	   	
          catch(Exception e){
                	e.printStackTrace(); 
       }

        %>
         </form>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>