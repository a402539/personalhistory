<?php
 $db = mysqli_connect('greg20111.domaincommysql.com', 'alexwantstowork', 'dvenogitriruki') or die("Error " . mysqli_error($link));
 $base=personalhistory;
$charset = $db->character_set_name();
printf ("Current character set is %s\n", $charset);
?>