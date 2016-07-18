
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
<script>
    history.go(1);
</script>


</head>
<body>
<form name="form1" method="post" action="log.jsp">





<table width="728" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="154"><%@ include file="header1_2.jsp" %></td>
</tr>

<tr>
<td width="2" align="left" valign="top">&nbsp;</td>
<td width="903" align="left" valign="top"><table width="519" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" rowspan="4" align="left" valign="top"><p>&nbsp;<%@ include file="menu.jsp" %></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td height="230" colspan="2" align="left" valign="top"><a href="products.jsp?cat=Jewellary and Watches&type=Rings"><img src="images/auction-topleft-baner_120509[1].jpg" width="377" height="210"></a></td>
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
        <td><a href="forget password.jsp" class="style2"></a></td>
      </tr>
    </table></td></tr></table></td>
    </tr>
  <tr>
    <td colspan="2" align="left" valign="top"><a href="products.jsp?cat=Mobiles and Accessories&type=Mobile"><img src="images/home mobile.jpg" width="377" height="140" border="0"></a></td>
    <td width="270" align="left" valign="top"><a href="products.jsp?cat=Jewellary and Watches&type=Ladies Watch"></a><a href="products.jsp?cat=Jewellary and Watches&type=Ladies Watch"><img src="images/home-watch.gif" width="235" height="140"></a></td>
    </tr>
  <tr>
    <td width="238" height="194" align="left" valign="top"><a href="products.jsp?cat=Other Popular Electronics&type=Camera"><img src="images/3.jpg" width="238" height="206"></a></td>
    <td width="143" align="center" valign="top"><a href="products.jsp?cat=Ladies Products&type=Cosmetics"><a href="products.jsp?cat=Ladies Products&type=Cosmetics"><img src="images/he2.jpg" width="136" height="204"></a></td>
    <td align="left" valign="top"><a href="browse.jsp"><img src="images/allitems.gif" width="238" height="207"></a></td>
  </tr>
  <tr>
    <td colspan="3" align="left" valign="top">
        
        
        
        
        <% 
	 
  String query="select * from items where category='Jewellary and Watches' and type='Rings' or type='Earrings' or type='Pendants'";
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