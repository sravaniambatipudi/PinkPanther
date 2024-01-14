<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String deliveryaddress = request.getParameter("deliveryaddress");
String mailid = request.getParameter("mailid");
String password= request.getParameter("password");
String phonenumber= request.getParameter("phonenumber");
try {
Class.forName("oracle.jdbc.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","PPADB","sravani");
PreparedStatement ps=conn.prepareStatement("insert into registerdetails values(?,?,?,?,?,?)");
ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,deliveryaddress);
ps.setString(4,mailid);
ps.setString(5,password);
ps.setString(6,phonenumber);
 
 ps.executeQuery();
}
catch(Exception e) 
{
   out.println(e);
}
%>