<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>
<html>
<body bgcolor="#6666FF">
<h1 align="center"><FONT SIZE="10" COLOR="#000033">Online project tenders</FONT></h1>


<%


	String user=(String)session.getValue("user");
java.util.Date d=new java.util.Date();

int day=d.getDate();

int m=d.getMonth();
String mon="";

if(m==0)
mon="jan";
if(m==1)
mon="feb";
if(m==2)
mon="mar";
if(m==3)
mon="apr";
if(m==4)
mon="may";
if(m==5)
mon="jun";
if(m==6)
mon="jul";
if(m==7)
mon="aug";
if(m==8)
mon="sep";
if(m==9)
mon="oct";
if(m==10)
mon="nov";
if(m==11)
mon="dec";
int y=d.getYear();

String year="20"+(y-100);
System.out.println(year);

String date=day+"-"+mon+"-"+year;


 


String q="select * from container where '"+date+"' between start_date and stop_date";
System.out.println(q);

       ResultSet rs=st.executeQuery(q);
	   ResultSetMetaData rsmd=rs.getMetaData();

	   int n=rsmd.getColumnCount();

%>
<table border=2 align="center">
 <tr>

 <%
        for(int i=1;i<=n;i++)
		out.println("<td>" + rsmd.getColumnName(i) +"</td>");%>
</tr><tr>
<%
		while(rs.next())
		{
			
			
                 
			       
				   %>

			  <td><%=rs.getString(1)%></td>
			  <td><a href="Set_Tender.jsp?pid=<%=rs.getString(2)%>"><%=rs.getString(2)%></td> 

			    <%
	   for(int i=3;i<=n;i++)
	 out.println("<td>" + rs.getString(i) +"</td>");
		%></tr><%
		}
		
%>
    
 </table>
 </body>
 </html>