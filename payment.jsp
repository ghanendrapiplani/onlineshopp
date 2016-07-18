<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Online Shopping</title>
</head>
<body>

<script language="javascript">
function validate(form) 
{	
if (form.memid.value=="")
	{	alert("Member ID should not be blank. Please enter it.");
		form.memid.focus(); return false;
	}

if (form.mode.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.mode.focus(); return false;
	}	
	
	if (form.bank.value=="")
	{	alert("Bank name should not be blank. Please enter it.");
		form.bank.focus(); return false;
	}

if (form.amount.value=="")
	{	alert("Amount should not be blank. Please enter it.");
		form.amount.focus(); return false;
	}	
	

if(isNaN(form.amount.value)) 
            { 
              alert("Amount Should be a number ");
form.amount.focus(); 
              return false; 
            }

}

	</script>




   <form name="form1" method="post" action="payment det.jsp" onsubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="750" align="left" valign="top"><table width="382" border="0" cellpadding="6" cellspacing="0">
  <tr>
    <td width="14">&nbsp;</td>
    <td width="135">&nbsp;</td>
    <td width="197">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>MemberShip ID </td>
    <td><label>
      <input name="memid" type="text" id="memid">
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Payment Mode </td>
    <td><label>
      <select name="select">
        <option>Check</option>
        <option>Draft</option>
      </select>
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Check/Draft No. </td>
    <td><label>
      <input name="mode" type="text" id="mode">
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Bank</td>
    <td><label>
      <input name="bank" type="text" id="bank">
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Amount</td>
    <td><input name="amount" type="text" id="amount"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><label>
      <input type="submit" name="Submit" value="Submit">
    </label></td>
  </tr>
</table></td>
</tr>
</table>    </form>


 


</body>
</html>