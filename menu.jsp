<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
</head>
<style type="text/css">
<!--
.style1 {
	color: #990000;
	font-weight: bold;
	font-size: 18px;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<body>
<table width="236" border="0" align="left" cellpadding="7" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
  <tr>
    <td width="222" align="left" valign="top"><img src="images/24.jpg" width="204" height="88"></td>
  </tr>
  
  <tr>
    <td align="left" valign="middle"><span class="style1"> Shop</span></td>
  </tr>
  <tr>
    <td align="left" valign="middle"><%@ include file="connect.jsp"%>	<%
		 
		  
		  Statement statement2 = con.createStatement();

	 
  String query2="select * from category";
  ResultSet rs2 = statement2.executeQuery(query2);





%>

<table width="206" height="181">
<tr>
<% 
while(rs2.next())
{ 


%>
</tr><tr>

<td><table width="200" border="0">
  <tr>
    <td bgcolor="#FFFF66"><%=rs2.getString(1)%></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs2.getString(1)%>&type=<%=rs2.getString(2)%>"><%=rs2.getString(2)%></a></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs2.getString(1)%>&type=<%=rs2.getString(3)%>"><%=rs2.getString(3)%></a></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs2.getString(1)%>&type=<%=rs2.getString(4)%>"><%=rs2.getString(4)%></a></td>
  </tr>
  <tr>
    <td><a href="browse.jsp">Get More...</a></td>
  </tr>
 
 
</table>
  
  
<%}%>
</tr>
</table>
&nbsp;</td>
  </tr>
</table>
</body>
</html>

