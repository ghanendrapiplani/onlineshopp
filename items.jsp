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
if (form.category.value=="")
	{	alert("Category should not be blank. Please enter it.");
		form.category.focus(); return false;
	}

if (form.amount.value=="")
	{	alert("Amount should not be blank. Please enter it.");
		form.amount.focus(); return false;
	}	

if (form.time.value=="")
	{	alert("Time should not be blank. Please enter it.");
		form.time.focus(); return false;
	}	
	
	if (form.bid.value=="")
	{	alert("Item Code  should not be blank. Please enter it.");
		form.bid.focus(); return false;
	}

	

if(isNaN(form.amount.value)) 
            { 
              alert("Amount Should be a number ");
form.amount.focus(); 
              return false; 
            }
            if(isNaN(form.time.value))
            {
              alert("Should be a number ");
form.time.focus();
              return false;
            }
			
			
}

	</script>




   <form action="item det.jsp" method="post"  name="form" onSubmit="return validate(this)">
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header1.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">&nbsp;</td>
<td width="750" align="left" valign="top"><table width="382" border="0" cellpadding="6" cellspacing="0">
  <tr>
    <td width="14">&nbsp;</td>
    <td width="135">&nbsp;</td>
    <td width="197">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Type</td>
    <td><label> 
            
            <%@ include file="connect.jsp"%>
            <% String cat=request.getParameter("select");
	 
        
        String query2="select * from category where category='"+cat+"'";   
	   ResultSet rs2 = statement.executeQuery(query2);
 

%>
        <select name="select">
          <%  while(rs2.next())
{%>
          <option><%=rs2.getString(2)%></option>
          <option><%=rs2.getString(3)%></option>
          <option><%=rs2.getString(4)%></option>
          <option><%=rs2.getString(5)%></option>
          <option><%=rs2.getString(6)%></option>
          <option><%=rs2.getString(7)%></option>
          <option><%=rs2.getString(8)%></option>
        </select>
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Category</td>
    <td><input name="category" type="text" id="category" value='<%=rs2.getString(1)%>'>
      <%}%></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Item Code</td> <%  String query4="select * from items";   
	   ResultSet rs4 = statement.executeQuery(query4);
 int i=1;
 while(rs4.next())
{
i=i+1;
}
String id="IT00"+i;
%>
    <td><input name="bid" type="text" id="bid" value='<%=id%>'></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Product Description </td>
    <td><label>
      <textarea name="textarea"></textarea>
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Amount</td>
    <td><label>
      <input name="amount" type="text" id="amount">
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Qty Available</td>
    <td><label>
      <input name="time" type="text" id="time">
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Image</td>
    <td><input name="file" type="file" ></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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