
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form name="form1" method="post" action="newmember.jsp" onsubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<%@ include file="menu.jsp"%></td><%@ include file="connect.jsp"%>
<td width="750" align="left" valign="top"><% String name=request.getParameter("name");
 String memid=request.getParameter("memid");
 String email=request.getParameter("email");
 String address=request.getParameter("address");
 String country=request.getParameter("country");
 String city=request.getParameter("city");
 
String query1="select * from login where id='"+memid+"'"; 
ResultSet rs3 = statement.executeQuery(query1);
 int i=0;

		 while(rs3.next())
{i=i+1;}
          if(i==0)
		  {
		  out.println("<b><h4>Invalid Member ID</h4></b><br>");
		  out.println("<b>Enter correct Member ID or become new user to get member ID</b>");
		  }
		  else
		  {
        




 String query="insert into member values('"+name+"','"+memid+"','"+address+"','"+city+"','"+country+"','"+email+"')";
  //String query="delete from login where usern='"+name+"'";
 //String query="update login set passw='"+pass+"',email='"+email+"',address='"+address+"',country='"+country+"',phone='"+phone+"' where usern='"+name+"'";

 statement.executeUpdate(query);
 response.sendRedirect("exam.jsp");
 
 }
 
 %></td>
</tr>
</table>
</form>
</body>
</html>
