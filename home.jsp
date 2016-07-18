<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
<style type="text/css">
<!--
.style2 {
	font-size: 16px;
	font-weight: bold;
	color: #990000;
}
.style3 {color: #0000FF}
.style4 {color: #990000}
-->
</style>
</head>
<body>
<form name="form1" method="post" action="log.jsp">





<table width="728" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="154"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="2" align="left" valign="top">&nbsp;</td>
<td width="903" align="left" valign="top"><table width="519" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td height="230" align="left" valign="top"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td align="left" valign="top"><a href="products.jsp?cat=Jewellary and Watches&type=Rings"><img src="images/auction-topleft-baner_120509[1].jpg" width="377" height="210"></a></td>
    <td align="left" valign="top"><table border="1" bordercolor="#660033">
      <tr><td height="212"><table width="200" height="191" border="0" cellpadding="0" cellspacing="0" bordercolor="#0000FF">
      <tr>
        <td width="79">Username</td>
        <td width="105"><input name="user" type="text" id="user"></td>
      </tr>
      <tr>
        <td height="85" valign="top"><p>Password</p>          </td>
        <td valign="top"><input name="pass" type="password" id="pass">
            <br>
            <input type="submit" name="Submit" value="Submit"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><a href="aboutus.jsp" class="style2">Create New Account </a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><a href="forget password.jsp" class="style2">Forget Password </a></td>
      </tr>
    </table></td></tr></table></td>
    </tr>
  <tr>
    <td width="129" align="left" valign="top">&nbsp;</td>
    <td width="129" align="left" valign="top"><a href="products.jsp?cat=Mobile and Accessories&type=Mobile"><img src="images/home mobile.jpg" width="377" height="140"></a></td>
    <td width="231" align="left" valign="top"><a href="products.jsp?cat=Jewellary and Watches&type=Ladies Watch"><img src="images/home-watch.gif" width="214" height="140"></a></td>
    </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td colspan="2" align="left" valign="top"> <p>
            <%@ include file="connect.jsp"%>
      <% 
	 
  String query="select * from items where category='Jewellary and Watches' and type='Rings' or type='Earrings' or type='Pendants'";
  ResultSet rs = statement.executeQuery(query);
%>
          </span> </p>
      <p class="style4"><strong>Featured Products      </strong></p>
      <table width="613" height="68" border="1" align="left" bgcolor="#FFFFFF">
<tr>
<% int i=0;
while(rs.next())
{ 
if(i%3==0) 
{
%>
</tr><tr>
<%}%>

<td width="522">

  <p><img src='<%=rs.getString(5)%>' height="100" width="100" />    <br />
      <span class="style3"><%=rs.getString(7)%></span><br>
      Price
      : <span class="style3"><span class="style4">$<%=rs.getString(4)%></span><br />
      </span> Time Left :<span class="style4"> <%=rs.getString(6)%></span><span class="style3"><br />
      </span><br />
  </p>  </td>

<br>
<%

i=i+1;} %>
</table></td>
    </tr>
  
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
    </tr>
</table>
  <p>&nbsp;</p></td>
</tr>
</table>







</form>


</body>
</html>