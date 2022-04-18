<html>
<title>CodeAve.com(Daily Hit Counter)</title>
<body bgcolor="#FFFFFF">

<%
on error resume next

' Create a server object
set fso = createobject("scripting.filesystemobject")

' Target the text file to be read.
' The text file is continually updated with the current date from the server
set act = fso.opentextfile(server.mappath("daily_count-"& month(date()) & day(date()) & year(date())&".txt"))

' Read the value contained in the current day hit counter
' If there is no file for the current day the on error resume next command above
' will force the program to the next line 
counter = clng(act.readline)    

' Add one to the counter.  If there was no value the counter will be set to a value of one
counter = counter + 1    

' Close the text object.
act.close

' Create a new text file on the server with the current date as part of the name
Set act = fso.createtextfile(server.mappath("daily_count-"& month(date()) & day(date()) & year(date())&".txt"), true)

' Write the counter value to the text object
act.writeline(counter)    

' Close the text object
act.Close   

%>
<%= counter %> Total Hits for <%= date() %> 

</body>
</html>