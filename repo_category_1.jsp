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
<table width="200" border="0" cellspacing="0" cellpadding="2">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="931" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th width="180" height="67" align="left" valign="top" scope="col">&nbsp;</th>
    <th width="106" scope="col">&nbsp;</th>
    <th width="645" align="left" valign="top" scope="col"><p>&nbsp;</p>
      <table width="618" border="0" cellspacing="0" cellpadding="0">
        <tr><%@ include file="connect.jsp"%>
          <th width="618" height="375" align="left" valign="top" scope="col"><h2 align="center" class="style8">Transaction Details</h2> 
            <%
		 
		 
	 
  String query="select * from shop_details";
  ResultSet rs = statement.executeQuery(query);
%>

              <table border="1" align="center" cellspacing="0" >
<tr>
<td><strong>Shopper's Name</strong></td>
<td><strong>Amount</strong></td>
<td><strong>Bank</strong></td>
<td><strong>Mode of Payment</strong></td>

<td><strong>Date of Shopping</strong></td>

</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(12)%></td>
<td><%=rs.getString(11)%></td>

<td><%=rs.getString(5)%></td>

</tr>
<%}%>
</table>

			  
		  
            <p align="center" class="style8">&nbsp;</p></th>
        </tr>
      </table>      
      <h2 align="center" class="style8">&nbsp;</h2>
    </th>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>&nbsp;</p>
			
            <p>
              <label></label>
            </p>
            <p>&nbsp;</p>
            <p align="center">
              <label></label>
            </p>
          </form>          <p align="center" class="style8">&nbsp;</p></th>
      </tr>
    </table></th>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</body>
</html>
