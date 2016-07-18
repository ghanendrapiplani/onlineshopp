<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
  <table width="728" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="154"><%@ include file="header1.jsp" %></td>
</tr>


</table>
<%@ include file="connect.jsp"%>
  <%  
	  String name=request.getParameter("user");
 String pass=request.getParameter("pass");
 String email=request.getParameter("email");
 String address=request.getParameter("address");
 String country=request.getParameter("country");
 String phone=request.getParameter("phone");
 
 String query1="select * from login"; 
ResultSet rs = statement.executeQuery(query1);
int i=1;
     while(rs.next()==true)
	 {
	 i=i+1;
	 }
String id="M00"+i;
String query="insert into login values('"+id+"','"+name+"','"+pass+"','"+email+"','"+address+"','"+country+"','"+phone+"')";
  //String query="delete from login where usern='"+name+"'";
 //String query="update login set passw='"+pass+"',email='"+email+"',address='"+address+"',country='"+country+"',phone='"+phone+"' where usern='"+name+"'";

 statement.executeUpdate(query);
 out.println("You are registered with us");
 %>

</body>
</html>
