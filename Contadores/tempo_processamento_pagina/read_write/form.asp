<% 
u_number=request.form("u_number")
' assigns the variable u_number to the value
' that u_value contains in form submitted by the user
u_ip=request.form("u_ip")
' assigns the variable u_ip to the value
' of the users ip address and passes it as
' a hidden value to demonstrate the functionality
%>
<html>
<title>CodeAve.com(Request.Form)</title>
<body bgcolor="#FFFFFF">
<% if u_number <> "" then %>
<p>You entered <%= u_number %><br>
and your IP address (<%= u_ip %>)<br>was submitted as a "hidden" value</p>
<% end if %>
<p>
<form action="<%= request.servervariables("script_name") %>" method="post">
<input type="hidden" name="u_ip" value="<%= request.servervariables("remote_addr") %>">
<select size="1" name="u_number">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
<input type="submit" value="Submit">
</form>
</p>
</body>
</html>
<!--#include file="bottom.inc"-->