<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online Shopping</title>
</head>


<body>
  <table width="728" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="154"><%@ include file="header1.jsp" %></td>
</tr>


</table>

<%@ include file="connect.jsp" %>
<% 

String str=request.getParameter("textfield");
String str1=request.getParameter("textfield2");


		String query="select * from admin where usern='"+str+"' and passw='"+str1+"'";
  ResultSet x = statement.executeQuery(query);



if(x.next()==true)
{
response.sendRedirect("admin menu.jsp");
}
else
{
out.print("you are invalid user");
}

%>


</body>
</html>
