<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #990000;
	font-weight: bold;
}
-->
</style>
<body>
<%
try {
int score=0;
String str=request.getParameter("r1");
if(str.equals("Hyper Text Markup Language")){ 
score=score+2;%>
<%=str%>
<%}%>
			  

<%

String str1=request.getParameter("r2");
if(str1.equals("SmartDog")){
	score=score+2;%>
<%=str1%>
<%}%>


<%

String str3=request.getParameter("r3");
if(str3.equals("Dividing by zero")){
	score=score+2;%>
<%=str3%>
<%}%>


<%

String str4=request.getParameter("r4");
if(str4.equals("NumberFormatException")){
	score=score+2;%>
<%=str4%>
<%}%>

<%

String str5=request.getParameter("r5");
if(str5.equals("PARAM")){
	score=score+2;%>
<%=str5%>
<%}%>

<%

String str6=request.getParameter("r6");
if(str6.equals("Final class")){
	score=score+2;%>
<%=str6%>
<%}%>

<%

String str7=request.getParameter("r7");
if(str7.equals("c= false")){
	score=score+2;%>
<%=str7%>
<%}%>
	<br />
	<strong>Total Score =</strong><span class="style1"><%=score%>out of 14	
<%@ include file="connect.jsp"%>	
<%	
 String id=(String)session.getAttribute( "theid" ); 
 
 String query="update login set score='"+score+"' where id='"+id+"'";

 statement.executeUpdate(query);
 

} 
catch(Exception e) {
out.println("Must answer all the questions");
out.println("<br>All questions are compulsory");
}

%>

			  

		   
    </span>
</body></html>