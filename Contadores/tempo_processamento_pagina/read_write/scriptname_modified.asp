<!--#include file="top.inc"-->
<% 
file_info = request.servervariables("appl_physical_path") 
file_info = file_info + right(request.servervariables("script_name"),(len(request.servervariables("script_name"))-1))  
set fso = createobject("scripting.filesystemobject") 
%>
Date Last Modified
<br>
<%= datevalue(fso.getfile(file_info).datelastmodified) %>
<br>
Date/Time Last Modified
<br>
<%= fso.getfile(file_info).datelastmodified %>
<!--#include file="bottom.inc"-->