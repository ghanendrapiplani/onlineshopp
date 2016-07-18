<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Online Shopping</title>
<style type="text/css">
<!--
.style1 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style2 {
	font-size: 12px;
	color: #0000FF;
}
.style5 {color: #0000FF}
.style6 {font-style: italic; font-family: Verdana, Arial, Helvetica, sans-serif;}
-->
</style>
</head>
<body>

<script language="javascript">

function validate(form) 
{	
if (form.user.value=="")
	{	alert("Username should not be blank. Please enter it.");
		form.name.focus(); return false;
	}

if (form.pass.value=="")
	{	alert("Password should not be blank. Please enter it.");
		form.email.focus(); return false;
	}	
if (form.email.value=="")
	{	alert("Email should not be blank. Please enter it.");
		form.email.focus(); return false;
	}

if (form.address.value=="")
	{	alert("Question should not be blank. Please enter it.");
		form.address.focus(); return false;
	}	
if (form.country.value=="")
	{	alert("Answer should not be blank. Please enter it.");
		form.country.focus(); return false;
	}

if (form.phone.value=="")
	{	alert("Phone No. should not be blank. Please enter it.");
		form.phone.focus(); return false;
	}
	
if(isNaN(form.phone.value)) 
            { 
              alert("Phone No. Should be a number ");
form.phone.focus(); 
              return false; 
            }	
	
	
}

	</script>




<form name="form1" method="post" action="newmember.jsp" onSubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="409" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td width="59" align="left" valign="top">&nbsp;</td>
    <td width="124" align="left" valign="top">Username</td>
    <td width="196" align="left" valign="top">
      <label>
      <div align="center">
        <input name="user" type="text" id="user">
      </div>
      </label>    </td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Password</td>
    <td align="center" valign="middle"><label>
    <input name="pass" type="password" id="pass">
    </label></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Email Id </td>
    <td align="center" valign="middle"><input name="email" type="text" id="email"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Security Question </td>
    <td align="center" valign="middle"><input name="address" type="text" id="address"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Answer</td>
    <td align="center" valign="middle"><input name="country" type="text" id="country"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Phone</td>
    <td align="center" valign="middle"><input name="phone" type="text" id="phone"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="center" valign="middle"><input type="submit" name="Submit" value="Submit"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td colspan="2" align="left" valign="top">
      <span class="style1">
      <label>
      </label>
      </span> <span class="style5">
      <label></label>
      </span>
      <label>
      <div align="justify" class="style2"><span class="style6">By clicking Register , you are indicating that you have read and agree to the Users Agreement and Privacy Policy. </span></div>
      </label>    </td>
    </tr>
</table></td>
</tr>
</table>
 </form>
 
 
</body>
</html>