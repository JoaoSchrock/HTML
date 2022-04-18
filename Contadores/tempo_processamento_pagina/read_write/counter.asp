<html>
<title>CodeAve.com(ASP Hit Counter)</title>
<body bgcolor="#FFFFFF">
<%
on error resume next 

' Create a server object
set fso = createobject("scripting.filesystemobject")

' Target the text file to be opened
set act = fso.opentextfile(server.mappath("asp_count.txt"))

' Read the value of the text document
' If the text document does not exist then the on error resume next
' will drop down to the next line
counter = clng(act.readline)

' Add one to the counter
counter = counter + 1

' Close the object
act.close

' Create a new text file on the server
Set act = fso.CreateTextFile(server.mappath("asp_count.txt"), true)

' Write the current counter value to the text document
act.WriteLine(counter)

' Close the object
act.Close

' Write the counter to the browser as text
Response.Write counter
%>
</body>
</html>
