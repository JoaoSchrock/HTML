<title>CodeAve.com(CSV to HTML)</title>
<body bgcolor="#FFFFFF">
<%
csv_to_read="states.csv"
set fso = createobject("scripting.filesystemobject")
set act = fso.opentextfile(server.mappath(csv_to_read))

imported_text = act.readline
'Read the first line of the csv, typically these are colum headings

imported_text = replace(imported_text,chr(13),",")
'Change the line breaks to commas to delimit through-out

imported_text = replace(imported_text,chr(34),"")
'Remove al quotes (If your csv has quotes other than to seperate text
'You may want to remove this modifier to the imported text

split_text=split(imported_text,",")
'Split the top line by comma

num_imported=ubound(split_text)+1
'Count the number of splits and add one for the last element

total_imported_text = act.readall
'Read the rest of the csv

total_imported_text = replace(total_imported_text,chr(13),",")
'Change the line breaks to commas to delimit through-out

total_imported_text = replace(total_imported_text,chr(34),"")
'Remove al quotes (If your csv has quotes other than to seperate text
'You may want to remove this modifier to the imported text

total_split_text=split(total_imported_text,",")
'Split the file up by comma

total_num_imported=ubound(total_split_text)
'Count the number of splits 
'This will be the numer of cells in the table
%>
<table width="100%">
<tr>
<%
for table = 0 to num_imported -1
'This will create a table cell for each column in the csv
' (-1 is used because arrays begin with 0)
%>
<td width="<% response.write 100/(num_imported) 'make the cell widths even %>%">
<b><%= split_text(count) %></b>
</td>
<% 
count=count+1
next 
%>
</tr>
<tr>
<%
'Reset the counter
count=0
' This wil determine how many rows are in the csv
for tablea = 0 to (total_num_imported/ (num_imported)-1)
%>
<%
for table = 0 to num_imported -1
'This will create a table cell for each column in the csv
' (-1 is used because arrays begin with 0)
%><td width="<%= 100/(num_imported) %>%">
<%= total_split_text(count) 
%>
</td>
<% 
count=count+1
next ' end of the observation 
%></tr>
<% next 'end of the csv %>
</table>






