<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online Shopping</title>
<style type="text/css">
<!--
.style2 {
	font-size: 14px;
	color: #0000FF;
	font-weight: bold;
}
.style3 {color: #FF0000}
.style4 {color: #330099}
-->
</style>
</head>

<body>





<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="563" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td colspan="3" align="left" valign="top">
<span class="style2"><%@ include file="connect.jsp"%>
<% 

String category=request.getParameter("cat");
String typ=request.getParameter("type");

out.println(category);
out.println("........."+typ);


		 
		
	 
  String query="select * from items where category='"+category+"' and type='"+typ+"'";
  ResultSet rs = statement.executeQuery(query);
%>
</span>
<table width="555" border="1" height="78" bgcolor="#FFFFCC">

<%
while(rs.next())
{ 

%>  
<tr>
<td width="522">

<a href="products_det.jsp?code=<%=rs.getString(3)%>&cat=<%=rs.getString(1)%>&type=<%=rs.getString(2)%>&amt=<%=rs.getString(4)%>"><img src='<%=rs.getString(5)%>' width="100" height="100" border="0" /></a>    <br />
<span class="style4"><br />
</span> Item Code : <span class="style3"> <%=rs.getString(3)%></span><br />
Price  
: <span class="style3">Rs.<%=rs.getString(4)%><br />
</span><br />
</td>
</tr>
<br>
<% } %>
</table>
 </td>
    </tr>
  
  <tr>
    <td width="100" align="left" valign="top">&nbsp;</td>
    <td width="100" align="left" valign="top">&nbsp;</td>
    <td width="333" align="center" valign="middle"><label></label></td>
  </tr>
  
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
