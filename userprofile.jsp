<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Project tenders</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../styles.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="content">
<div id="back">
<!-- header begins -->
<div id="header"> 
	<div id="logo">
		<h1 align="center"><a href="#"> <FONT SIZE="20" COLOR="#000000">Online Project tenders</FONT></a></h1>
		<h2><a href="http://www.metamorphozis.com/" id="metamorph"><marquee>Globalize the world</marquee></a></h2>
	</div>
  <div id="menu">
		<ul>
			
			<li id="button1"><a href="progr.html" title="">back</a></li>
			<li id="button2"><a href="../index3.html" title="">logout</a></li>
			<li id="button3"><a href="#" title="">About</a></li>
			<li id="button4"><a href="#" title="">Contact</a></li>
		</ul>
 </div>
</div>

<!--content ends -->
<%

	String user=(String)session.getValue("user");

		String q="Select * from registration where username='"+user+"'";

       ResultSet rs=st.executeQuery(q);
	   ResultSetMetaData rsmd=rs.getMetaData();

	   int n=rsmd.getColumnCount();
%>
<table border="3">
 <tr>

 <%
        for(int i=1;i<=n;i++)
		out.println("<td>" + rsmd.getColumnName(i) +"</td>");

		while(rs.next())
		{
			 
%>

</tr>

 <%
	   for(int i=1;i<=n;i++)
	 out.println("<td>" + rs.getString(i) +"</td>");
		}
%>
 </tr>
 </table>

<!--footer begins -->
	</div>


</div>

</div>
<div id="footer">
<p>Copyright &copy; 2008. <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></p> 
	<p>Design by <a href="http://www.metamorphozis.com/" title="Flash Templates">Flash Templates</a>, coded by <a href="http://www.flashtemplatesdesign.com" title="Free Templates">Free Templates</a>
		</p>
	</div>
<!-- footer ends-->
<div style="text-align: center; font-size: 0.75em;">Design downloaded from <a href="http://www.freewebtemplates.com/">free website templates</a>.</div></body>
</html>