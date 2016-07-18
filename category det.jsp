<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
    <%@ include file="connect.jsp"%>
<% String bid=request.getParameter("category");
 String type=request.getParameter("type2");
 String amount=request.getParameter("type3");
 String time=request.getParameter("type4");
 String t1=request.getParameter("type5");
 String t2=request.getParameter("type6");
 String t3=request.getParameter("type7");
  String t4=request.getParameter("type1");

 
 
      

        



 String query="insert into category values('"+bid+"','"+t4+"','"+type+"','"+amount+"','"+time+"','"+t1+"','"+t2+"','"+t3+"')";
  //String query="delete from login where usern='"+name+"'";
 //String query="update login set passw='"+pass+"',email='"+email+"',address='"+address+"',country='"+country+"',phone='"+phone+"' where usern='"+name+"'";

 statement.executeUpdate(query);
 response.sendRedirect("categories.jsp");
 
 
 
 
 %>
</body>
</html>
