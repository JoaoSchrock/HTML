<!--#include file="top.inc"-->

Example of a successful match <br>
<%
' u_file must be the relative address from asp file being used to display the info

u_file="../index.asp"

set fso = createobject("scripting.filesystemobject")

' This will check to see if the parent directory has an index.asp page in its directory
' if so it will hyper-link it
if  fso.FileExists (server.mappath(u_file)) then 
Response.Write "Click <a href='"& u_file &"'>here</a>"
else 
Response.Write u_file
end if
%>

<p>&nbsp</p>
Example of a unsuccessful match <br>

<%
' u_file must be the relative address from asp file being used to display the info

u_file="any_file_name_that_may_or_may_not_be_there.asp"

set fso = createobject("scripting.filesystemobject")

' This will check to see if the parent directory has the "u_file" page in its directory
' if so it will hyper-link it
if  fso.FileExists (server.mappath(u_file)) then 
Response.Write "Click <a href='"& u_file &"'>here</a>"
else 
Response.Write u_file
end if
%>
<!--#include file="bottom.inc"-->