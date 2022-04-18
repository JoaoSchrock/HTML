<%
Set fso = Server.CreateObject ("scripting.filesystemobject")
location = server.mappath("images")
Set folder = fso.GetFolder(location)
%>

<b>Size</b> 
<br>
<font color ="#FF0000">&lt;% =folder.size %&gt;</font>
<% =folder.Size %> bytes
<br>
<b>Created</b>
<br>
<font color ="#FF0000">&lt;% =folder.datecreated %&gt;</font>
<% =folder.datecreated %>
<br>
<b>Modified</b>
<br>
<font color ="#FF0000">&lt;% =folder.datelastmodified %&gt;</font>
<% =folder.datelastmodified %>
<br>
<b>Name</b>
<br>
<font color ="#FF0000">&lt;% =folder.name %&gt;</font>
<% =folder.name %> 



