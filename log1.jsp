<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<html>
<body>


<form name="form1" method="post" action="newmember.jsp" onSubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top">
    <%@ include file="connect.jsp"%>
    
    
    <% 

String str=request.getParameter("user");
String str1=request.getParameter("pass");


		String query="select * from login where usern='"+str+"' and passw='"+str1+"'";
  ResultSet x = statement.executeQuery(query);



if(x.next()==true)
{
session.setAttribute("user",str);
response.sendRedirect("buy.jsp");
}
else
{
out.print("you are invalid user");
}

%></td>
</tr>
</table>
 </form>
</body>
</html>