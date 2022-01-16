<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>elibrary.com</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="bg">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.html">Library Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      
    </ul>
    
  </div>
</nav>
     <%@ page import="java.sql.*" %> 
<div class="container-fluid">
  <div class="row">
    <div class="col-md-12 mt-1">
      <div class="card signupcard bg-dark w-50">
        <img class="card-img-top" src="holder.js/100x180/" alt="">
        <div class="card-body">
          <h5 class="text-white text-center">Register here</h5>
    <br>
          <form action="register.jsp">
            <div class="form-group">
              <input type="text" name="sname" class="form-control" placeholder="Enter your name">
            </div>
            <div class="form-group">
              <input type="email" name="semail" class="form-control" placeholder="Enter your email">
            </div>
            <div class="form-group">
                <input type="number" name="sphone" class="form-control" placeholder="Enter your mobile number">
              </div>
            <div class="form-group">
              <input type="password" name="spassword" class="form-control" placeholder="Give a password">
            </div>
            <h5 class="text-white">Address Details</h5>
            <hr>
            <div class="form-group">
                <input type="text" name="address" class="form-control" placeholder="Enter your address">
              </div>
              <div class="form-group">
                <input type="text" name="city" class="form-control" placeholder="Enter your village/Town">
              </div>
            <div class="form-group">
                <input type="text" name="state" class="form-control" placeholder="Enter your state">
              </div>
            <div class="form-group">
                <input type="text" name="country" class="form-control" placeholder="Enter your country">
              </div>
            <div class="form-group">
              <input type="submit" class="btn btn-success" value="register">
            </div>
            <div class="text-white">Already hava account click <a href="index.jsp">here</a></div>
           
            <!--  -->
            
            <%
       String sname=request.getParameter("sname");
       String semail=request.getParameter("semail");
       String spassword=request.getParameter("spassword");
       String phone=request.getParameter("sphone");
       String address=request.getParameter("address");
       String city=request.getParameter("city");
       String state=request.getParameter("state");
       String country=request.getParameter("country");
      // System.out.println(semail);
       
 try{
	 String qry="insert into users(sname,semail,spassword,phone,address,city,state,country) values('"+sname+"','"+semail+"','"+spassword+"','"+phone+"','"+address+"','"+city+"','"+state+"','"+country+"')";
	   
   		String url="jdbc:mysql://localhost:3306/library";
   	   	String user="root";
   	   	String password="";
   	   	Class.forName("com.mysql.jdbc.Driver");
   	   	Connection con=DriverManager.getConnection(url, user, password);
   	   	System.out.println("connected");
   	   	Statement stmt=con.createStatement();
   	   	if(sname==null){
   	   		
   	   	%>
   	<p class="text-danger">fill correctly</p>
   		<%
   	   	}else{
   	   	stmt.executeUpdate(qry);
   		%>
   		<p class="text-success">account create successfully</p>
   		
   		<%
   	}
 }
   	catch(Exception e){
   		//out.println("errorrrrrr");
   	}
       %>
            
            <!--  -->
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