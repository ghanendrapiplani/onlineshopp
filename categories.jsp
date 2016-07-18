<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
<style type="text/css">
<!--
.style1 {
	font-weight: bold;
	color: #0033CC;
}
.style2 {color: #0033CC}
.style3 {
	color: #6600CC;
	font-weight: bold;
}
-->
</style>
</head>
<script language="javascript">
function validate(form) 
{	
if (form.name.value=="")
	{	alert("Name should not be blank. Please enter it.");
		form.name.focus(); return false;
	}

if (form.memid.value=="")
	{	alert("Member Id should not be blank. Please enter it.");
		form.memid.focus(); return false;
	}	
	
	if (form.address.value=="")
	{	alert("Address should not be blank. Please enter it.");
		form.address.focus(); return false;
	}

if (form.city.value=="")
	{	alert("City should not be blank. Please enter it.");
		form.city.focus(); return false;
	}	
	
	if (form.country.value=="")
	{	alert("Country should not be blank. Please enter it.");
		form.country.focus(); return false;
	}

if (form.email.value=="")
	{	alert("Email should not be blank. Please enter it.");
		form.email.focus(); return false;
	}



}

	</script>


<body><form name="form1" method="post" action="category det.jsp" onSubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="519" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td colspan="3" align="left" valign="top"><p align="center" class="style1" __designer:dtid="3659196172075031">Add New Categories </p>      </td>
    </tr>
  <tr>
    <td width="56" align="left" valign="top">&nbsp;</td>
    <td width="83" align="left" valign="top">Category</td>
    <td width="350" align="left" valign="top">
      <label>
      <input name="category" type="text" id="category">
        </label>    </td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Type1</td>
    <td align="left" valign="middle"><label>
      <input name="type1" type="text" id="type1">
    </label></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Type2</td>
    <td align="left" valign="middle"><label>
      <input name="type2" type="text" id="type2">
    </label></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Type3</td>
    <td align="left" valign="middle"><input name="type3" type="text" id="type3"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Type4</td>
    <td align="left" valign="middle"><input name="type4" type="text" id="type4"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Type5</td>
    <td align="left" valign="middle"><input name="type5" type="text" id="type5"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Type6</td>
    <td align="center" valign="middle"><div align="left">
      <input name="type6" type="text" id="type6">
    </div></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Type7</td>
    <td align="center" valign="middle"><div align="left">
      <input name="type7" type="text" id="type7">
    </div></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="center" valign="middle"><label>
      <input type="submit" name="Submit" value="Submit">
    </label></td>
  </tr>
</table></td>
</tr>
</table>
 </form>

</body>
</html>