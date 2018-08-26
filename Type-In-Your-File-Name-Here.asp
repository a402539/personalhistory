<HTML>

<HEAD>

<TITLE> Working with database </TITLE>

<STYLE TYPE="text/css">

<!--

.Font8  {font-family:arial; font-size:8pt;}

.Font10  {font-family:arial; font-size:10pt;}

.Font12Bold  {font-family:arial; font-size:12pt; font-weight:bold;}

.Font12BoldBlue  {font-family:arial; font-size:12pt; font-weight:bold; color:#336699;}

.Font14BoldBlue  {font-family:arial; font-size:14pt; font-weight:bold; color:#336699;}

-->

</STYLE>

</HEAD>

<BODY>

<CENTER>

<FONT CLASS='Font14BoldBlue'>Working with database</FONT>

<HR COLOR=#336699 WIDTH=260>

</CENTER>

 

<BR><BR>

<FONT CLASS=Font12BoldBlue>Creating table<BR></FONT><FONT CLASS=Font10>

<HR COLOR=#336699>

<%

Dim AbsPath
AbsPath="c:\sites\content\_\_\_\1917"

'On Error Resume Next

strOLEDB = "Provider=Microsoft.Jet.OLEDB.4.0;"
strOLEDB = strOLEDB & "Data Source=" & AbsPath & "\db\db.mdb" & ";"
'strOLEDB = strOLEDB & "User ID=admin;Password=;"

Set Conn = Server.CreateObject ("ADODB.Connection")
Conn.Open strOLEDB

Response.Write("<br>" & strOLEDB & "<br>")
Response.Write("<br>" & "Hello, world" & "<br>")

Conn.Execute("drop table `gub`")

sql = "CREATE TABLE `gub`" &_
 "(`Date` varchar(12) default NULL," &_
 "`gub` varchar(70) default NULL)"
Set RS = Conn.Execute(sql)

Response.Write("<br>Execute: " & sql & "<br>")

'If Err.Number > 0 Then
'     Response.Write("Error #" & Err.Number & "<br>")
'     Response.Write("Error Source: " & Err.Source & "<br>")
'     Response.Write("Error Description: " & Err.Description & "<br>")
'End If

'On Error goto 0

'Do this test
'If RS.BOF And RS.EOF Then
' Response.Write ('No records were returned")
'Else
' Response.Write ("Loop through to show records")
'End If


'-------------------------------------------------------------------------Sever.MapPath

%>

 

</FONT>

</BODY>

</HTML>