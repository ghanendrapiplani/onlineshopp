<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body><%@ include file="connect.jsp"%>
<% String mid=request.getParameter("memid");
 String mode=request.getParameter("select");
 String no=request.getParameter("mode");
 String bank=request.getParameter("bank");
 String amount=request.getParameter("amount");
 
 String query1="select * from login where id='"+mid+"'"; 
ResultSet rs2 = statement.executeQuery(query1);
 int i=0;

		 while(rs2.next())
{i=i+1;}

String query3="select * from member where memid='"+mid+"'"; 
ResultSet rs3 = statement.executeQuery(query3);
 int k=0;

		 while(rs3.next())
{k=k+1;}
          if(i==0 && k==0)
		  {
		  out.println("<b><h4>Invalid Member ID</h4></b><br>");
		  out.println("<b>Enter correct Member ID or become new user to get member ID and fill Exam Registration Form.</b>");
		  }
		  else
		  {
      

        



 String query="insert into exam_reg values('"+mid+"','"+mode+"','"+no+"','"+bank+"','"+amount+"')";
  //String query="delete from login where usern='"+name+"'";
 //String query="update login set passw='"+pass+"',email='"+email+"',address='"+address+"',country='"+country+"',phone='"+phone+"' where usern='"+name+"'";

 statement.executeUpdate(query);
 response.sendRedirect("exam.jsp");
 }
 
 
 
 %>
</body>
</html>
