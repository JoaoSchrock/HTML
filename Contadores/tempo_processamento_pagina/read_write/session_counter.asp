<!--#include file="top.inc"-->


<%
set fso = createobject("scripting.filesystemobject")
set act = fso.opentextfile(server.mappath("session_count.txt"))
counter = clng(act.readline)
if session("been_here_before") = "" then
   session("been_here_before") = "Yes"
   counter = counter + 1
' act.close
Set act = fso.CreateTextFile(server.mappath("session_count.txt"), true)
act.WriteLine(counter)
end if
act.Close
Response.Write counter
%>
<!--#include file="bottom.inc"-->