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

    <div class="container  p-5">
        <div class="card p-5">
            <img class="card-img-top" src="holder.js/100x180/" alt="">
            <div class="card-body">
                <h3 class="text-center"> Admin login</h3>
        <form class="w-50 admin" action="admin.jsp" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" class="form-control" name="username" placeholder="">
              </div>
              <div class="form-group">
                  <label>Password</label>
                  <input type="password" class="form-control" name="password" placeholder="">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-info w-100" value="login">
                </div>
                  <%
        	try{
        		String user=request.getParameter("username");
                String password=request.getParameter("password");
                Cookie cookie = new Cookie("usernames",user);
                Cookie cookie2 = new Cookie("passwords",password);
                response.addCookie(cookie);
                response.addCookie(cookie2);
                
                session.setAttribute("username", user);
                session.setAttribute("password", password);
                
                if(user.equals("admin") && password.equals("123")){
                	response.sendRedirect("adminpanel.jsp");
                }
                else{
                	%>
                	<h5 class="text-danger">invalid username or password</h5>
                	<%
                }
        	}
                  catch(Exception e){
                	 
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