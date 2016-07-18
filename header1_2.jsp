<html>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style>
<body>
<table width="796" height="169" border="0" align="center" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#CCFF66">
  
  <tr>
    <td width="202" rowspan="3" align="left" valign="top" bgcolor="#FFFFFF"><img src="images/h1.jpg" width="210" height="161"></td>
    <td width="202" rowspan="3" align="left" valign="top" bgcolor="#FFFFFF"><img src="images/6.jpg" width="226" height="160"></td>
    <td width="388" height="75" align="right" valign="bottom" bgcolor="#FFFFFF"><%
    try
            {
         String s=(session.getAttribute("user")).toString();
         if(!s.equals("null"))
    out.println("Welcome ...."+ session.getAttribute("user"));
         else
             out.println("Welcome ....Guest");
   
             
            }
    catch(Exception ed)
            {}
            %></td>
  </tr>
  <tr>
    <td height="55" align="left" valign="middle" bgcolor="#FFFFFF"> <a href="index.jsp">Home</a> | <a href="product.jsp">Shope More</a> | <a href="search.jsp">Shopping List</a> | <a href="browse.jsp">Browse</a> |<a href="login2.jsp">My Account</a> | <a href="terms and cond.jsp">Terms &amp; Conditions</a> | <a href="help.jsp">Help</a></td>
  </tr>
  <tr>
    <td height="39" align="left" valign="bottom" bgcolor="#FFFFFF"><a href="sample.jsp">About Us </a>| <a href="login.jsp">Registration</a> | <a href="login.jsp"> Sign In</a> | <a href="admin.jsp"> Admin </a>| <a href="feedback1.jsp">Feedback</a></td>
  </tr>
</table>
</body></html>