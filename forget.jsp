<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online Shopping</title>
<style type="text/css">
<!--
.style7 {color: #3B393C; font-weight: bold; }
.style8 {color: #0000FF}
-->
</style>
</head>

<body>
      <table width="728" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="154"><%@ include file="header1.jsp" %></td>
</tr>


</table>
<%@ include file="connect.jsp"%>
    
    
            <%
		 String n=request.getParameter("user");
		   String e=request.getParameter("email");
		
                        
	 
  String query="select * from login where usern='"+n+"' and email='"+e+"'";
  ResultSet rs = statement.executeQuery(query);

int i=0;
while(rs.next())
{
out.println(rs.getString(3));
i=i+1;

}

if(i==0)
    {
    out.println("Invalid email or password");
}

%>
</body>
</html>
