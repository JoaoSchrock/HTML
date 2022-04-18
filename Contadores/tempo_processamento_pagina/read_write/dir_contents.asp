<!--#include file="top.inc"-->

Folders
<br>
<%
Set directory=server.createobject("scripting.filesystemobject")
Set allfiles=directory.getfolder(server.mappath("directories/"))

' Lists all the files found in the directory
For each directoryfile in allFiles.subfolders
%>
<% ' Removes certain MSFrontPage was directories  
    if right(directoryfile.Name,3) <> "cnf" then %>
<img src="directories/images/dir.jpg" border="0">
<a href="directories/<% =directoryfile.Name %>" target="_blank">
<% =directoryfile.Name %></a>
<br>
<% end if %>
<% Next %>
<br>
Files
<br>
<% ' Lists all the files found in the directory
For each directoryfile in allFiles.files %>
<a href="directories/<% =directoryfile.Name %>">
<% 
ext=right(directoryfile.Name,3)
select case ext 
case "pdf","asp","htm","mdb","xls","ppt","doc","txt" %>
<img src="directories/images/<%= ext %>.jpg" border="0">
<% case else %>
<img src="directories/images/unk.jpg" border="0">
<% end select %>
<% =directoryfile.Name %></a>
<br>
<% Next %>
<!--#include file="bottom.inc"-->