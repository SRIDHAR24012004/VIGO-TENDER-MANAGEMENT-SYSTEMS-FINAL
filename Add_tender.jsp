<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>

<%


String user=(String)session.getValue("user");
String pid=request.getParameter("pid");
int ten=Integer.parseInt(request.getParameter("tender_amt"));

String s="insert into tenders1 values('"+user+"','"+pid+"',"+ten+")";

System.out.println(s);

int i=st.executeUpdate(s);

if(i>0)
{
%>
successfully added tenders
<jsp:include page="progr.html"/>
<%
}
	%>

