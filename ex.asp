Dim oConn, sConnection 

 

Set oConn = Server.CreateObject("ADODB.Connection")

sConnection = "Provider=Microsoft.Jet.OLEDB.4.0;" & _

              "Data Source=c:\sites\content\_\_\_\1917\db\db.mdb;" & _

              "Persist Security Info=False"

oConn.Open(sConnection)

 

oConn.Close

Set oConn = nothing
