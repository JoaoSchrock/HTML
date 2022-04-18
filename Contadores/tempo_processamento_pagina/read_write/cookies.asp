<% response.buffer=true
' response.buffer=true is used to because there is a mix
' of html output and response.cookies when the cookie is written
%>
<html>
<title>CodeAve.com(Cookie Read & Write)</title>
<body bgcolor="#FFFFFF">
<%
u_input=request.cookies ("testcookie")("u_input")
'checks for the variable u_input from a cookie named testcookie on
' the local pc.


' If the cookie does not exist or have a value for the variable
' then check to see if the user is inputting one 
if trim(u_input) = "" then 
u_input=trim(request.form("u_input"))

' If the user hase enetered a value to put to the cookie write it out
if u_input <> "" then 

' Write the user input to the cookie
response.cookies ("testcookie")("u_input") = u_input


' Write the expiration date (today + 3 days) to the cookie
response.cookies ("testcookie").expires = DATE + 3 

' Read the cookie and write the value of u_input to the browser
response.write (request.cookies ("testcookie")("u_input")) %>
<p>
Your text has been written to the cookie.<br>
Click <a href="<%= request.servervariables("script_name") %>" target="_blank">here</a> 
to open this page in a new window.
<% else
' If there was no cookie info and there was no value being inputted
' then display the textbox for user input %>

<form action="<%= request.servervariables("script_name") %>" method="post">
<input type=text name=u_input> <input type=submit value=Submit>
</form>
<% end if ' end check for user inputted value  
else      ' if the cookie has a value  
          ' read the cookie and write the value of u_input to the browser
response.write (request.cookies ("testcookie")("u_input")) 
end if    ' end check for cookie value %>

</body>
</html>


