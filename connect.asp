<%
AbsPath = "c:\sites\content\_\_\_\1917"
strOLEDB = "Provider=Microsoft.Jet.OLEDB.4.0;"
strOLEDB = strOLEDB & "Data Source=" & AbsPath & "\db\db.mdb" & ";"
'strOLEDB = strOLEDB & "User ID=admin;Password=;"

Set Conn = Server.CreateObject ("ADODB.Connection")
Conn.Open strOLEDB
%>