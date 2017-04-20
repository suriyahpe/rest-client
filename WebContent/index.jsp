<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="restclient.Rest_client"%>
<% Rest_client obj = new Rest_client(); %>
<%
 String pnrno=request.getParameter("pnr");
long pnr = Long.parseLong(pnrno);
 %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indian Railway API</title>
</head>
<body>

<%-- <%
  Rest_client rc = new Rest_client();
  rc.main();
%> --%>

<form name="pnr_status" method="post" action="Rclient">
<input type="text" name="pnr" label="Enter pnr no" />

 
<a href="<%= obj.rest(pnr)%>">Get pnr status</a> 
</form> 
</body>
</html>