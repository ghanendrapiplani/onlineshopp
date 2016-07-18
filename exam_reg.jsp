<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<html>
<head>
<title>Online Examination</title>
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


<body><form name="form1" method="post" action="member.jsp" onSubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="750" align="left" valign="top"><table width="519" border="0" align="left" cellpadding="5" cellspacing="0">
  <tr>
    <td colspan="3" align="left" valign="top"><p align="center" class="style1" __designer:dtid="3659196172075031"><SPAN __designer:dtid="3659196172075032">O</SPAN><SPAN __designer:dtid="3659196172075033">NLINE </SPAN><SPAN __designer:dtid="3659196172075034">E</SPAN><SPAN __designer:dtid="3659196172075035">XAM </SPAN><SPAN __designer:dtid="3659196172075036">R</SPAN><SPAN __designer:dtid="3659196172075037">EGISTRATION</SPAN><BR __designer:dtid="3659196172075038" />
          <?xml namespace="" ns="urn:schemas-microsoft-com:vml" prefix="v"  encoding="utf-8"?>
            </p>
      <p align="center" class="style2" __designer:dtid="3659196172075043"><strong><SPAN __designer:dtid="3659196172075044">Need a math or   computer refresher? Please review our&nbsp; Study material </SPAN></strong></p>
      <p align="center" class="style2" __designer:dtid="3659196172075045"><SPAN __designer:dtid="3659196172075047"><strong>To register for an   online exam, complete the form below and click Submit.</strong></SPAN></p>      <p align="center" __designer:dtid="3659196172075052"><SPAN __designer:dtid="3659196172075053"><span class="style3"><U __designer:dtid="3659196172075060">Personal Information</U></span></SPAN></p></td>
    </tr>
  <tr>
    <td width="57" align="left" valign="top">&nbsp;</td>
    <td width="82" align="left" valign="top">Full name </td>
    <td width="350" align="left" valign="top">
      <label>
      <input name="name" type="text" id="name">
        </label>    </td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Membership Id </td>
    <td align="left" valign="middle"><label>
    <input name="memid" type="text" id="memid">
    </label></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Address</td>
    <td align="left" valign="middle"><input name="address" type="text" id="address"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">City</td>
    <td align="left" valign="middle"><input name="city" type="text" id="city"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Country</td>
    <td align="left" valign="middle"><input name="country" type="text" id="country"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Email</td>
    <td align="left" valign="middle"><input name="email" type="text" id="email"></td>
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