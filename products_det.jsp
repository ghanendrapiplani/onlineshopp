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
.style4 {
	color: #0000FF;
	font-weight: bold;
}
.style5 {font-family: "Courier New", Courier, monospace}
.style6 {color: #FF0000; font-family: "Courier New", Courier, monospace; }
.style7 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body>


<form action="login1.jsp" method="post">


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
String code=request.getParameter("code");
String amt=request.getParameter("amt");
session.setAttribute("code",code);
session.setAttribute("cat",category);
session.setAttribute("type",typ);
session.setAttribute("amt",amt);
out.println(category);
out.println("........."+typ);



	 
  String query="select * from items where category='"+category+"' and type='"+typ+"' and id='"+code+"'";
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

  <p>&nbsp;</p>
  <table width="494" border="0">
    <tr>
      <td width="200" rowspan="10"><img src='<%=rs.getString(5)%>' height="200" width="200" /></td>
      <td width="136">&nbsp;</td>
      <td width="136">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;<strong><%=category%></strong></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2"><span class="style4"><%=rs.getString(7)%></span></td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><strong><%=typ%></strong></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><span class="style5">Item Code :</span></td>
      <td><span class="style6"><%=rs.getString(3)%></span></td>
    </tr>
    <tr>
      <td><span class="style5">Price :</span></td>
      <td><span class="style5"><span class="style6">$<%=rs.getString(4)%></span></span></td>
    </tr>
  
    <tr>
      <td><span class="style5"> </span></td>
      <td><span class="style5"></span></td>
    </tr>
  </table>
  <p><br />
    
<input type="submit" value="Buy Now" /> <% } %>
  </p>
  <p class="style7">Product Details </p>
  <p><table><% String query4="select * from shop_details where category='"+category+"' and type='"+typ+"' and pid='"+code+"'";
  ResultSet rs4 = statement.executeQuery(query4);
  while(rs4.next())
  {%>
 <tr>
     <td><img src="<%=rs4.getString(5)%>" height="100" width="100"></td>
     <td><% out.println("<br>  "+rs4.getString(6) +"....");%></td>
 <td><% out.println("<br>  $"+rs4.getString(4));%></td></tr>
 <% }%></p></td>
</tr>
<br>


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






</form>
 
</body>
</html>
