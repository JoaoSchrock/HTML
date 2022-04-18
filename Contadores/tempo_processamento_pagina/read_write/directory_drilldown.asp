<title>CodeAve.com(Directory Drill Down)</title>
<body bgcolor="#FFFFFF">
<%
'Capture the name of the host server and add http:// to the varible
host= "http://" & request.servervariables("http_host") 

'Caputre the name of the page as well as directory structure 
script_name=request.servervariables("script_name")

'Split the directory tree into an arry by /
split_name=split(script_name,"/")

'Sets the number of directory levels down
'this document is from the top level directory
'--remove the -1 if you wish to display the name of the page
'  with the hyperlink drill down --
num_directory=ubound(split_name)-1
%>

<a href="<%= host %>">
<%= host %></a><% 
'Loop that will output all of the parent directories 
'and hyperlink them  

for counter= 1 to (num_directory)
link=link & "/"& split_name(counter) %>/<a 
href="<%= link %>"><%= split_name(counter) %></a><% 
next %>
