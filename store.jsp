<%@ page import ="java.sql.*"%>

<%
String username=request.getParameter("username");
String password=request.getParameter("password");
try 
{
 Class.forName("oracle.jdbc.OracleDriver");
 Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","PPADB","sravani");
 PreparedStatement ps=conn.prepareStatement("insert into logindetails values(?,?)");
 ps.setString(1,username);
 ps.setString(2,password);

 ps.executeQuery();
}
catch(Exception e) 
{
   out.println(e);
}
%>
