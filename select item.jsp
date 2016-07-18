<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
</head>
<body>


<form name="form1" method="post" action="items.jsp">



<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="323" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td align="left" valign="top"><%@ include file="connect.jsp"%>
        <p>Select Category 
       <% String query2="select * from category";   
	   ResultSet rs2 = statement.executeQuery(query2);
 

%>
        <select name="select">
		<%  while(rs2.next())
{%>
          <option><%=rs2.getString(1)%></option>
		  <%}%>
        </select> &nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="113" align="left" valign="top">
      <input type="submit" name="Submit" value="Submit">
    </form>
    </td>
    <td width="113" align="left" valign="top">&nbsp;</td>
    <td width="67" align="left" valign="top"><label></label>    </td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="center" valign="middle"><label></label></td>
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