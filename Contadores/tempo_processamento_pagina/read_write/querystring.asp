<% 
u_number=request.querystring("u_number")
' assigns the variable u_number to the value
' that u_value contains in the url
u_method=request.querystring("u_method") 
' assigns the variable u_method to the value
' that u_method contains in the url
' in this case u_method signals if the submit
' button was used to input the values
%>
<html>
<title>CodeAve.com(Request.Querystring)</title>
<body bgcolor="#FFFFFF">
<% if u_number <> "" then %>
<p>You entered <%= u_number %></p>
<% if u_method <> "" then %>
<p>You used the submit button</p>
<% else %>
<p>You clicked a link</p>
<% 
end if ' end check for u_number value 
end if ' end check for u_method value %>
<p>
<form action="<%= request.servervariables("script_name") %>" method="get">
<input type="hidden" name="u_method" value="submit">
<select size="1" name="u_number">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
<input type="submit" value="Submit">
</form>
</p>
<p>
<a href="<%= request.servervariables("script_name") %>?u_number=1">Link # 1</a>
<br>
<a href="<%= request.servervariables("script_name") %>?u_number=2">Link # 2</a>
<br>
<a href="<%= request.servervariables("script_name") %>?u_number=3">Link # 3</a>
<br>
<a href="<%= request.servervariables("script_name") %>?u_number=4">Link # 4</a>
</p>
</html>


<!--#include file="bottom.inc"-->
