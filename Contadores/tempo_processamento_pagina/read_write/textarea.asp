<html>
<title>CodeAve.com(Displaying textarea Input)</title>
<body bgcolor="#FFFFFF">

<%
' Request form variable u_input (user input)
u_input=trim(request.form("u_input")) 
' If there is input display it
if u_input <> "" then 
%>
<b>Textarea input with &lt;pre&gt; tags</b><br>
<pre>
<%= u_input %>
</pre>
<p>
<b>Textarea input without &lt;pre&gt; tags</b><br>
<%= u_input %>
<% 
' If there is no input display a form for input
else %>
<form action="<%= request.servervariables("script_name") %>" method="post">
<textarea rows="10" name="u_input" cols="50"></textarea>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</form>
<% end if ' End check for inputted values %>
