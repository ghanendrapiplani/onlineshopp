<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><%@ include file="connect.jsp"%>
<% String bid=request.getParameter("bid");
 String type=request.getParameter("select");
 String amount=request.getParameter("amount");
 String time=request.getParameter("time");
 String cat=request.getParameter("category");
 String img=request.getParameter("file").replace("\"","\\");


out.println(img);
 String desc=request.getParameter("textarea");
 
 String query="insert into items values('"+cat+"','"+type+"','"+bid+"',"+amount+",'"+img+"','"+time+"','"+desc+"')";
  //String query="delete from login where usern='"+name+"'";
 //String query="update login set passw='"+pass+"',email='"+email+"',address='"+address+"',country='"+country+"',phone='"+phone+"' where usern='"+name+"'";
 //String query="insert into rnd values('"+str+"')";
//out.print(img);
 statement.executeUpdate(query);
response.sendRedirect("select item.jsp");
 
 
 
 
 %>
</body>
</html>
