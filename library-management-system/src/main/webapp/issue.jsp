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
        <a class="nav-link" href="userlist.jsp">User Lists</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
      </li>
    </ul>
    
  </div>
</nav>
<%@ page import="java.sql.*" %> 


<div class="container text-center p-5">
	<h1 class="text-warning">Issue Book</h1>
<form class="w-50 admin" action="issue.jsp" method="post">
            <div class="form-group">
               <div class="form-group">
    <label>StudentId</label>
    <select class="form-control" name="iname">
      <option>select student id</option>
      <%
String qry="select * from user";
String url="jdbc:mysql://localhost:3306/lms";
String user="root";
String password="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url, user, password);
System.out.println("connected");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(qry);
while(rs.next()){
	int id=rs.getInt("sid");
    %>
     <option value=<%=id %>><%=id %></option>
    <%
}

%>
    </select>
  </div>
        <div class="form-group">
               <div class="form-group">
    <label>Book Name</label>
    <select class="form-control" name="bname">
      <option>select book name</option>
      <%
String q="select * from book";
      String uri="jdbc:mysql://localhost:3306/lms";
      String u="root";
      String pass="";
      Class.forName("com.mysql.jdbc.Driver");
      Connection c=DriverManager.getConnection(uri, u, pass);
Statement st=c.createStatement();
ResultSet r=st.executeQuery(q);
while(r.next()){
	String bookname=r.getString("bookname");
	String id=r.getString("id");
    %>
     <option value=<%=id %>><%=bookname+ id %></option>
    <%
}

%>
    </select>
  </div>
	
	
	
</div>
<button type="submit" class="btn btn-success">issue book</button>
<!-- for submit -->

<%

String iname=request.getParameter("iname");
String bname=request.getParameter("bname");
		
String query="update user set id="+bname+" where sid="+iname+"";
String urls="jdbc:mysql://localhost:3306/lms";
String users="root";
String passwords="";
Class.forName("com.mysql.jdbc.Driver");
Connection cons=DriverManager.getConnection(urls, users, passwords);
System.out.println("connected");
Statement stmts=con.createStatement();
stmts.executeUpdate(query);

String msg="book is issued";
if(iname==null){
	 %>
	 <p class="text-success"></p>
	 <%
}
else{
	%>
	 <p class="text-success"><%=msg %></p>
	 <%
}
%>
<br>

</form>
    


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>