<%@ page language="java" %>
<%@ page session="true" %>
<html>
<head>
<title>Online shopping</title>
<style type="text/css">
<!--
.style7 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
	color: #0000FF;
}
.style8 {
	font-size: 18px;
	color: #CC3300;
}
.style10 {
	color: #0000FF;
	font-size: 24px;
}
-->
</style>
</head>
<body>

<script language="javascript">

function validate(form) 
{	
if (form.name.value=="")
	{	alert("Name should not be blank. Please enter it.");
		form.name.focus(); return false;
	}

if (form.email.value=="")
	{	alert("Email should not be blank. Please enter it.");
		form.email.focus(); return false;
	}	
	
	if (form.phone.value=="")
	{	alert("phone should not be blank. Please enter it.");
		form.phone.focus(); return false;
	}

if (form.state.value=="")
	{	alert("state should not be blank. Please enter it.");
		form.state.focus(); return false;
	}	
	
	if (form.com.value=="")
	{	alert("Comment should not be blank. Please enter it.");
		form.com.focus(); return false;
	}



if(isNaN(form.phone.value)) 
            { 
              alert("Charges. Should be a number ");
form.phone.focus(); 
              return false; 
            }

}

	</script>



<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><p>
	  <%@ include file="header1.jsp" %>
    </p>
	  <p>&nbsp;</p></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form1" onSubmit="return validate(this)" method="post" action="feedbackins.jsp">
  <table width="674" height="353" border="0">
    <tr>
      <td width="147">&nbsp;</td>
      <td width="243"><div align="center" class="style10">
        <div align="right">
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>Feedback Form</p>
          <p>&nbsp; </p>
        </div>
      </div></td>
      <td width="270">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Name</strong></td>
      <td><label>
        <input type="text" name="name">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Email-ID</strong></td>
      <td><input type="text" name="email"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Phone No. </strong></td>
      <td><input type="text" name="phone"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>State</strong></td>
      <td><input type="text" name="state"></td>
    </tr>
    <tr>
      <td height="115">&nbsp;</td>
      <td><strong>Comment</strong></td>
      <td><label>
        <textarea name="com" rows="5"></textarea>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <div align="right">
          <input type="submit" name="Submit" value="Submit">
          </div>
      </label></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<h1 class="style8">&nbsp;</h1>
  <p>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>
</body>
</html>