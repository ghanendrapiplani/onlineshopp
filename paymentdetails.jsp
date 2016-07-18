<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>

<html>
<body><%@ include file="connect.jsp"%>
<%  String query="select * from exam_reg";
  ResultSet rs=statement.executeQuery(query);%>
<table border="1">
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>

</tr>
<%}%>
</table>
</body>
</html>
