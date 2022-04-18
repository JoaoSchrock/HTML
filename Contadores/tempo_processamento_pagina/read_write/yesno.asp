<!--#include file="top.inc"-->

<%
'Query the table for all responses
accessdb="yesno" 
cn="DRIVER={Microsoft Access Driver (*.mdb)};"
cn=cn & "DBQ=" & server.mappath(accessdb)
set rs = server.createobject("ADODB.Recordset")
sql = "select * from [table]" 
rs.open sql, cn

'move to the first record
rs.movefirst

'starts a loop that will continue until
'there are no more records
do while not rs.eof

'Check the value of the Yes/No field.
'ans_true and ans_false will accumulate
'a numeric summerization of the values contained
'in the table field

if rs("field") = "True" then
ans_true=ans_true+1
end if

if rs("field") = "False" then
ans_false=ans_false+1
end if

rs.movenext
loop

'Output the stats
%>
True: <%= ans_true %> <br>
False: <%= ans_false %> <br>
Total: <%= ans_true + ans_false %> <br>
%True: <%= formatnumber(ans_true/(ans_true + ans_false),2) %> <br>
%False <%= formatnumber(ans_false/(ans_true + ans_false),2) %>

<!--#include file="bottom.inc"-->