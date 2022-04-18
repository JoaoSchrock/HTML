<%
    page_to_read="view_source.asp"
    set fso = createobject("scripting.filesystemobject")
    set act = fso.opentextfile(server.mappath(page_to_read))
    read_text = act.readall
    act.close
    Response.Write  "<pre>" & server.htmlencode(read_text) & "</pre>"
%>
   