<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
</head>
<body>



<%@ include file="connect.jsp"%>


<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="323" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td width="113" align="left" valign="top">&nbsp;</td>
    <td width="113" align="left" valign="top">&nbsp;</td>
    <td width="113" align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="left" valign="top">  
	<%
		 
		
	 
  String query="select * from category";
  ResultSet rs = statement.executeQuery(query);





%>

<table width="266" height="181">
<tr>
<% int i=0;
while(rs.next())
{ 

if(i%2==0)
{
%>
</tr><tr><%}%>

<td><table width="200" border="1">
  <tr>
    <td bgcolor="#FFFF66"><%=rs.getString(1)%></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs.getString(1)%>&type=<%=rs.getString(2)%>"><%=rs.getString(2)%></a></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs.getString(1)%>&type=<%=rs.getString(3)%>"><%=rs.getString(3)%></a></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs.getString(1)%>&type=<%=rs.getString(4)%>"><%=rs.getString(4)%></a></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs.getString(1)%>&type=<%=rs.getString(5)%>"><%=rs.getString(5)%></a></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs.getString(1)%>&type=<%=rs.getString(6)%>"><%=rs.getString(6)%></a></td>
  </tr>
  <tr>
    <td><a href="products.jsp?cat=<%=rs.getString(1)%>&type=<%=rs.getString(7)%>"><%=rs.getString(7)%></a></td>
  </tr>
  <tr>
     <td><a href="products.jsp?cat=<%=rs.getString(1)%>&type=<%=rs.getString(8)%>"><%=rs.getString(8)%></a></td>
  </tr>
</table>
  
  <p><br>
  </p></td>



<%i=i+1;}%>
</tr>
</table>

  
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="center" valign="middle"><label></label></td>
  </tr>
</table></td>
</tr>
</table>







 


</body>
</html>