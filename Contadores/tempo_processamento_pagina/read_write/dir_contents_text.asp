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
<% =directoryfile.Name %></a>
<br>
<% Next %>
<!--#include file="bottom.inc"-->
4
