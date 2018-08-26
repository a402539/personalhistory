<?php
 error_reporting(E_ALL);
 global $text;
 print("<b><font size=-1>Окно в базу данных. Версия 3.2 08.01.2011 17:10:57</font></b>");
 if (isset($base)): 
$charset = $db->character_set_name();
printf ("Current character set is %s\n", $charset);
  printf("<br>$s\n","Список табличек");
  $result = mysql_list_tables($base,$db);
  while ($row = mysql_fetch_row($result)) {
   if(substr($row[0],0,2)<>'ib' and substr($row[0],0,3)<>'jos' and substr($row[0],0,5)<>'phpbb'): // 06.08.08 убираем из списка таблицы форумов ib, phpbb; CMS jos
   // if (!isset($table)): $table=$row[0]; endif;
   if (isset($table) and $table==strtoupper("$row[0]")):
     print("<a href=\"db.php?table=`$row[0]`\"><b>$row[0]</b></a> ");
    else:
     print("<a href=\"db.php?table=`$row[0]`\">$row[0]</a> ");
    endif;
   endif; 
  }
  printf("\n");
  if (isset($table)):
   if(!(substr($table,0,1)=='`')): $table ="`$table`"; endif;
   $sql = "select * from $table limit 1";
   $result = mysql_query($sql);
   if (!$result): print("Ошибка SQL запроса <b>$sql</b> к таблице $table " . mysql_error());
   else:
    $sql = "select * from $table";
    $num_fields=mysql_num_fields($result);$m=0;
    for($i=1;$i<=$num_fields;$i++){
     $field=mysql_fetch_field($result,$i-1);
     $name=$field->name;
     if (isset($_GET[$name])): $val=$_GET[$name]; else: $val=''; endif;
     if ($val<>''):
      if(substr($val,0,1)=='`'): $sql =$sql." where `$name` like \"".substr($val,1,strlen($val)-2)."\"";
      else:
       if ($m==0): $sql .=" where "; else: $sql .=" and "; endif;
       $sql .="`$name` like \"$val\"";
      endif;
      $m+=1;
     endif;
    }
    if (isset($ord)):
     if(substr($ord,0,1)=='`'): $sql .= " order by $ord";
     else: $sql .= " order by `$ord`"; endif;
    endif;
    $sql .= " limit 0,30";
    print("<br> Запрос <b>$sql</b>\n");
    $result = mysql_query($sql);
    if ($result>0):
     printf("Строк %d\n",mysql_num_rows($result));
     $num_fields=mysql_num_fields($result);
     print("<hr><form action=\"db.php\">");
     print("<input name=table type=hidden value=$table>");
     print("<table>");
     for($i=1;$i<=$num_fields;$i++){
      $field=mysql_fetch_field($result,$i-1);
      $name=$field->name;
      if (isset($ord) and $ord==$name):
       print("<tr><td>$i</td><td><a href=\"db.php?table=$table&ord=`$name`\"><b>$name</b></td>");
      else:
       print("<tr><td>$i</td><td><a href=\"db.php?table=$table&ord=`$name`\">$name</a></td>");
      endif;
      $field=mysql_fetch_field($result,$i-1);
      $name=$field->name;
      if (isset($ord)):
       if (substr($ord,0,1)=='`'): print("<input name=ord type=hidden value=$ord>"); 
       else: print("<input name=ord type=hidden value=`$ord`>"); 
       endif;
      endif;
      print("<td><input name=$name type=text size=40 maxlength=80></td></tr>");
     }
     print("</table><input type=submit value='?'></form>");
     print("<hr><table border=1>");
     while ($row = mysql_fetch_row($result)) {
      print("<tr>");
      for($i=1;$i<=$num_fields;$i++)
      	{$text = urlencode("$i ".$row[$i-1]);
      	//print("<img src=ti.php?text=$text><br>");
      	//print("$i ".$row[$i-1]."<br>");
      	}; 
      for($i=0;$i<$num_fields;$i++){print("<td>$row[$i]</td>");}; 
      print("</tr>");
     };
     print("</table>");
    else: print("Ошибка SQL запроса к таблице $table"); endif;
   endif;
  else: print("<br>Выберите таблицу\n"); endif;
 else: print("<br>Не выбрана база данных\n"); endif;
?>