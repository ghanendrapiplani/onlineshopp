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
    <td width="17" align="left" valign="top"><p>&nbsp;<%@ include file="menu.jsp" %></p>
        <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td colspan="3" align="left" valign="top">
        
        
        <% 
	String s=request.getParameter("select");
	
	 
  String query="select * from items where category='"+s+"'";
  ResultSet rs = statement.executeQuery(query);
%>
      </span>
      <table width="613" border="1" height="68" bgcolor="#FFFFFF">
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
      : <span class="style3"><span class="style4">Rs.<%=rs.getString(4)%></span><br />
        </span><span class="style3"><br />
          </span><br />
      </p>  </td>
  
<br>
  <%

i=i+1;} %>
      </table></td>
    </tr>
  
  
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td colspan="2" align="left" valign="top">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
    </tr>
</table>
  <p>&nbsp;</p></td>
</tr>
</table>







</form>


</body>
</html>