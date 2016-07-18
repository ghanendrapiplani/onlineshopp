<%@ page language="java" %>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
<style type="text/css">
<!--
.style3 {font-family: "Courier New", Courier, monospace; font-size: 14px; }
-->
</style>

</head>
<body>

<script language="javascript">

function validate(form) 
{	
if (form.user.value=="")
	{	alert("Username should not be blank. Please enter it.");
		form.user.focus(); return false;
	}

if (form.pass.value=="")
	{	alert("Password should not be blank. Please enter it.");
		form.pass.focus(); return false;
	}	
	

	
}

	</script>






<form action="log.jsp" method="post" onsubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1_2.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="653" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td align="left" valign="top" bgcolor="#FFFFFF"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td colspan="2" align="left" valign="top" bordercolor="#CC9999" bgcolor="#FFFFFF">&nbsp;</td>
    <td align="left" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
    <td colspan="2" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td colspan="2" align="left" valign="top" bordercolor="#CC9999" bgcolor="#CC6699"><span class="style3">Existing Users Login Here </span></td>
    <td align="left" valign="top">&nbsp;</td>
    <td colspan="2" align="left" valign="top" bgcolor="#CCCCCC"><span class="style3">Don't Have an Account Yet </span></td>
    </tr>
  <tr>
    <td width="95" height="84" align="left" valign="top">&nbsp;</td>
    <td width="109" align="left" valign="top"><p>&nbsp;</p>
      <p>Username</p>
      <p>Password</p></td>
    <td width="160" align="left" valign="top"><label>
       <br>
       <br>
       <input name="user" type="text" id="user">
       <br>
       <br>
       <input name="pass" type="password" id="pass">
      </label>    </td>
    <td width="2" align="left" valign="top">&nbsp;</td>
    <td colspan="2" align="left" valign="top"><p>&nbsp;</p>
      <p>Get connected to incredible excess inventory deals from the world most trusted brands. </p></td>
    </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="middle"><label><a  href="log.jsp">
      <input type="submit" name="Submit" value="Sign In">
     </a></label></td>
    <td align="center" valign="middle">&nbsp;</td>
    <td width="110" align="center" valign="middle">&nbsp;</td>
    <td width="118" align="center" valign="middle"><a href="aboutus.jsp"><img src="images/regist.jpg" width="96" height="37" border="0"></a></td>
  </tr>
  
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="center" valign="middle"><label></label></td>
    <td align="center" valign="middle"><a href='forget password.jsp'><b>Forget Password</b></a></td>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
  </tr>
</table></td>
</tr>
</table>







  <form>


</body>
</html>