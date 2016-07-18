<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Shopping</title>
</head>

<body><%@ include file="connect.jsp"%>
    
    <table width="728" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="154"><%@ include file="header1.jsp" %></td>
</tr>


</table>








    
    
    
    
    
    
    
<%  
String name=request.getParameter("name");
 String email=request.getParameter("email");
 String phone=request.getParameter("phone");
  String qty=request.getParameter("qty");
 String city=request.getParameter("state");
  String address=request.getParameter("address");
  
  String cat=request.getParameter("textfield");
 String type=request.getParameter("textfield2");
 String code=request.getParameter("textfield3");
  String amount=request.getParameter("bid");
 int total=Integer.parseInt(qty)*Integer.parseInt(amount);
 String date=request.getParameter("textfield4");
  String bank=request.getParameter("bank");
 
 String dd=request.getParameter("dd");
 
   String pmode=request.getParameter("select");
 
String query="insert into shop_details values('"+cat+"','"+type+"','"+code+"',"+total+",'"+date+"','"+name+"','"+email+"',"+phone+",'"+address+"','"+city+"','"+pmode+"','"+bank+"','"+dd+"')";

 statement.executeUpdate(query);
 

 
 
 out.println("<br>Total Amount :"+ total);
  out.println("<br> Qty :"+qty);
 
 out.println("Order Placed");
 out.println("<br> Product will be shipped to.. "+ address + ","+city+ "...   with in 3 Days");
 
 out.println("<br> Thanks For Shopping With Us "+ name );
 
 
 
 
 
 %>




</body>
</html>
