<%
'*******************************************************
'*     ASP 101 Sample Code - http://www.asp101.com     *
'*                                                     *
'*   This code is made available as a service to our   *
'*      visitors and is provided strictly for the      *
'*               purpose of illustration.              *
'*                                                     *
'* Please direct all inquiries to webmaster@asp101.com *
'*******************************************************
%>

<%
' Declare our vaiables
Dim objFSO, objCountFile  ' object vars for FSO and File
Dim strCountFileName      ' filename of count text file
Dim iCount                ' count variable
Dim bUseImages            ' boolean whether or not to use images
Dim I                     ' standard looping var


' Determine whether we use images or plain text
' You could just set this to True or False instead
bUseImages = CBool(Request.QueryString("images"))

' Compute our count file's filename
' This is based on the file from which you call count.asp
' It basically takes that name and appends a .cnt so I don't
' accidently overwrite any files.  If for some reason you have
' a file named script_name.asp.cnt then change this or watch out!
strCountFileName = Server.MapPath(Request.ServerVariables("SCRIPT_NAME") & ".cnt")


' Create FileSystemObject to deal with file access
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")

' Open the file as a text stream (1 = ForReading, True = Create)
Set objCountFile = objFSO.OpenTextFile(strCountFileName, 1, True)

' Read the current count from the file
If Not objCountFile.AtEndOfStream Then
	' Set value to contents of the file
	iCount = CLng(objCountFile.ReadAll)
Else
	' If no file exists or it's empty start at 0
	iCount = 0
End If

' Close the file and destroy the object
objCountFile.Close
Set objCountFile = Nothing


' Increment the count
iCount = iCount + 1


' Overwrite existing file and get a text stream to new one
Set objCountFile = objFSO.CreateTextFile(strCountFileName, True)

' Write updated count
objCountFile.Write iCount

' Close the file and destroy the object
objCountFile.Close
Set objCountFile = Nothing


' Destroy the FSO object
Set objFSO = Nothing


' We're all done with the hard part
' All that's left is to display the results
If bUseImages Then
	' Loop through the count integer showing each digit
	' You can grab the images one at a time or get the zip
	' http://www.asp101.com/samples/download/counter_imgs.zip
	For I = 1 to Len(iCount)
		' Output the IMG tag using the right digit
		Response.Write "<img src=""./images/digit_"
		Response.Write Mid(iCount, I, 1)
		Response.Write ".gif"" alt="""
		Response.Write Mid(iCount, I, 1)
		Response.Write """ width=""20"" height=""27"" />"
	Next 'I
Else
	' No image wanted just show the variable
	Response.Write iCountç
End If
%>
