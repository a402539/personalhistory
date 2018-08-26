# Connecting to an Oracle or Microsoft Access database using ODBC on WINDOWS OS
# See www.php.net for further reference  

$AbsPath = "c:\sites\content\_\_\_\1917"
$strOLEDB = "Provider=Microsoft.Jet.OLEDB.4.0;"
$strOLEDB = strOLEDB & "Data Source=" & AbsPath . "\db\db.mdb" . ";"
#strOLEDB = strOLEDB & "User ID=admin;Password=;"

#Set Conn = Server.CreateObject ("ADODB.Connection")
#Conn.Open strOLEDB

#$ora_dsn= "DRIVER={Microsoft ODBC for Oracle};SERVER=servername;UID=username;PWD=password";
//$msa_dsn = "DRIVER=Microsoft Access Driver (*.mdb); DBQ=c:\sites\content\_\_\_\1917\db\db.mdb;";

//$dsn = $ora_dsn; # or $msa_dsn
#$dsn = $msa_dsn

$username = "";
$password = "";

# open a connection
$conn = odbc_connect($strOLEDB, $username, $password); 

# The sql table  
$table=  "1914-1918"; 

#Prepare the sql statement  
$stmt= odbc_prepare($conn,"select * from $table"); 

# Execute the  statement
odbc_execute($stmt);  

#Fetch result. 
echo "Executing sql  statement: select * from $table\n";
echo "Printing the php assosiative array  returned by odbc_fetch_array\n";
while ( $row = odbc_fetch_array  ($stmt)) { 
	echo "<pre>"; 
	print_r($row); 
	echo "</pre>";
} 

# Once more 

$stmt = odbc_prepare($conn,"select * from $table"); 
odbc_execute($stmt);

# Fetch result. 
echo "Executing sql statement: select * from $table\n";
echo "Printing one field from the assosiative array returned by odbc_fetch_array\n";
while ( $row = odbc_fetch_array ($stmt) ) {
    echo "<pre>";
    echo "familyname = " . $row['FAMILYNAME'];
    echo "</pre>";
}