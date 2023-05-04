<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>
<html>
<head>
<script type="text/javascript">
function validate()
 {

	  if(document.f1.ex_amt.value=="")
     {
		  alert("enter amount");
		  document.f1.tender_amt.focus();
		return false;
	 }
	 if((document.f1.tender_amt.value)>=(document.f1.ex_amt.value))
	 {
		 alert("enter min amount than exp amt");
		 document.f1.tender_amt.focus();
		 return false;
	 }
	 else
		 return true;
 }
 </script>
 </head>
 <body>

<%

String pid=request.getParameter("pid");
//String user=(String)session.getValue("user");

String s="select project_desc,exp_amount from projects where project_id='"+pid+"'";
ResultSet rs=st.executeQuery(s);
rs.next();
int amt_ten=rs.getInt(2);

%>

<form name="f1" action="Add_tender.jsp?pid=<%=pid%>" method="post" align="center" onsubmit="return validate()" >

 <table border="1" align="center">
 <tr>


 <td> Project  Description</td>
 <td> <TEXTAREA NAME="pro_desc" ROWS="10" COLS="50" readonly><%=rs.getString(1)%></TEXTAREA></td>

 </tr>
 <tr>
 <td> Expected amount</td>
 <td><input type="text" value=<%=amt_ten%> name="ex_amt" readonly ></td>
  </tr>
 <tr>

 <td>Enter Your Tender Amount</td> 
 <td><input type="text" name="tender_amt"></td>
 </tr>
 
 <TR >
 	<TD ><INPUT TYPE="submit" value="Submit"></TD>
 </TR>
 
 </table>

 </form>

</body>
</html>