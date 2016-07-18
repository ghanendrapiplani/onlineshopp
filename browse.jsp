<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
<style type="text/css">
<!--
.style2 {
	font-size: 16px;
	font-weight: bold;
	color: #0000FF;
}
.style3 {
	font-size: 12px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
</head>
<body>
<form name="form1" method="post" action="browse1.jsp">





<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="587" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td colspan="3" align="left" valign="top"><p>&nbsp;</p>
      <p>&nbsp;</p></td>
    </tr>
  <tr>
    <td colspan="3" align="left" valign="top" bgcolor="#FFCCFF"><label></label>    <strong>Browse for   Products</strong></td>
    </tr>
  <tr>
    <td colspan="3" align="left" valign="top"><label></label>     <%@ include file="connect.jsp"%>
        <p><span class="style2">Select Category</span> 
       <% String query2="select * from category";   
	   ResultSet rs2 = statement.executeQuery(query2);
 

%>
        <select name="select">
		<%  while(rs2.next())
{%>
          <option><%=rs2.getString(1)%></option>
		  <%}%>
        </select>
      <input type="submit" name="Submit" value="Go">
     
<%	  String query3="select * from category";
  ResultSet rs3 = statement.executeQuery(query3);%>
      <table width="613" height="68" border="1" align="left" bgcolor="#FFFFFF">
<tr>                                     
	<% int i=0; 
	
	while(rs3.next())
{

if(i%2==0) 
{


%>	

</tr><tr>
<%}%>

<td width="522">

  <p>
  <span class="style3"><%=rs3.getString(1)%>    </span><br /><br>
  <a href="products.jsp?cat=<%=rs3.getString(1)%>&type=<%=rs3.getString(2)%>"><%=rs3.getString(2)%></a>&nbsp;    
   <a href="products.jsp?cat=<%=rs3.getString(1)%>&type=<%=rs3.getString(3)%>">  <%=rs3.getString(3)%></a>&nbsp; 
	<a href="products.jsp?cat=<%=rs3.getString(1)%>&type=<%=rs3.getString(4)%>">  <%=rs3.getString(4)%><a>&nbsp; 
    <a href="products.jsp?cat=<%=rs3.getString(1)%>&type=<%=rs3.getString(5)%>"><%=rs3.getString(5)%></a>&nbsp; 
	<a href="products.jsp?cat=<%=rs3.getString(1)%>&type=<%=rs3.getString(6)%>"><%=rs3.getString(6)%></a>&nbsp; 
	 <a href="products.jsp?cat=<%=rs3.getString(1)%>&type=<%=rs3.getString(7)%>"><%=rs3.getString(7)%></a>&nbsp; 
   <a href="products.jsp?cat=<%=rs3.getString(1)%>&type=<%=rs3.getString(2)%>"> <%=rs3.getString(8)%></a>&nbsp; 
      
  </p>  </td>

<br>
<%

i=i+1;} %>
</table>




								 
										 
	</td>
    </tr>
  
</table></td>
</tr>
</table>






 </form>  
 


</body>
</html>