<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//session.invalidate();
//response.sendRedirect("index.html");
%>

<%
Cookie[] array= request.getCookies(); 
for(int i=0; i<array.length; i++)
{


//Deleting the cookie
array[i].setMaxAge(0);
response.addCookie(array[i]); //After this, although cookie will be not be visible from browser's memory
			      //but Cookie data will still be visible until you refresh this page.


}
response.sendRedirect("index.jsp");
      %>
</body>
</html>