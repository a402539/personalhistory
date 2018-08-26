<%
 error_reporting(E_ALL);
 if (isset($base)): 
  Response.Write("<br>Список таблиц\n");
  $result = mysql_list_tables($base,$db);
  while ($row = mysql_fetch_row($result)) {
   if(substr($row[0],0,2)<>'ib' and substr($row[0],0,3)<>'jos' and substr($row[0],0,5)<>'phpbb'): // 06.08.08 убираем из списка таблицы форумов ib, phpbb; CMS jos
   // if (!isset($table)): $table=$row[0]; endif;
   if (isset($table) and $table==strtoupper("$row[0]")):
     Response.Write("<a href=\"http://history.h15.ru/db/db.php?table=`$row[0]`\"><b>$row[0]</b></a> ");
    else:
     Response.Write("<a href=\"http://history.h15.ru/db/db.php?table=`$row[0]`\">$row[0]</a> ");
    endif;
   endif; 
  }
  Response.Writef("\n");
  if (isset($table)):
   if(!(substr($table,0,1)=='`')): $table ="`$table`"; endif;
   $sql = "select * from $table limit 1";
   $result = mysql_query($sql);
   if (!$result): Response.Write("Ошибка SQL запроса <b>$sql</b> к таблице $table " . mysql_error());
   else:
    $sql = "select * from $table";
    if (isset($fn)):
     if(substr($fn,0,1)=='`'): $sql =$sql." where $fn";
     else: $sql =$sql." where `$fn`"; endif;
     if(substr($fv,0,1)=='`'): $sql =$sql." like \"".substr($fv,1,strlen($fv)-2)."\"";
     else: $sql =$sql." like \"$fv\""; endif;
    endif; 
    if (isset($ord)):
     if(substr($ord,0,1)=='`'): $sql =$sql." order by $ord";
     else: $sql =$sql." order by `$ord`"; endif;
    endif;
    $sql=$sql." limit 0,30";
    Response.Write("<br> Запрос <b>$sql</b>\n");
    $result = mysql_query($sql);
    if ($result>0):
     Response.Writef("Строк %d\n",mysql_num_rows($result));
     $num_fields=mysql_num_fields($result);
     Response.Write("<table border=1 cellpadding=3>\n<tr>");
     for($i=0;$i<$num_fields;$i++){
      $field=mysql_fetch_field($result,$i);
      $name=$field->name;
      if ($field->max_length):
       $length=$field->max_length;
      else:
       $length=mysql_field_len($result,$i);
      endif;
      $str="";
      if (isset($fn)):
       if(substr($fn,0,1)=='`'): $str ="&fn=$fn"; else: $str ="&fn=`$fn`"; endif;
       if(substr($fv,0,1)=='`'): $str =$str."&fv=$fv"; else: $str =$str."&fv=`$fv`"; endif;
      endif;
      if (isset($ord) and $ord==$name):
       Response.Write("\n    <td><a href=\"http://history.h15.ru/db/db.php?table=$table$str&ord=`$name`\"><b>$name</b></a></td>");
      else:
       Response.Write("\n    <td><a href=\"http://history.h15.ru/db/db.php?table=$table$str&ord=`$name`\">$name</a></td>");
      endif;
     }
     Response.Write("</tr>\n<tr>");
     for($i=0;$i<$num_fields;$i++){
      $field=mysql_fetch_field($result,$i);
      $name=$field->name;
      if ($field->max_length):
       $length=$field->max_length;
      else:
       $length=mysql_field_len($result,$i);
      endif;
      Response.Write("\n    <td><form action=\"http://history.h15.ru/db/db.php\">\n");
      Response.Write(" <input name=table type=hidden value=$table>\n");
      if (isset($ord)):
       if (substr($ord,0,1)=='`'): Response.Write(" <input name=ord type=hidden value=$ord>\n"); 
       else: Response.Write(" <input name=ord type=hidden value=`$ord`>\n"); 
       endif;
      endif;
      Response.Write(" <input name=fn type=hidden value=\"$name\">\n"); 
      Response.Write(" <input name=fv type=text size=$length maxlength=$length>\n");
      Response.Write(" <input type=submit value='?'></form></td>\n");
     }
     Response.Write("</tr>\n");
     while ($row = mysql_fetch_row($result)) {
      Response.Write("<tr>"); 
      for($i=0;$i<$num_fields;$i++){Response.Write("<td>$row[$i]</td>");}; 
      Response.Write("</tr>\n");
     }
     Response.Write("</table>\n");
    else: Response.Write("Ошибка SQL запроса к таблице $table"); endif;
   endif;
  else: Response.Write("<br>Выберите таблицу\n"); endif;
 else: Response.Write("<br>Не выбрана база данных\n"); endif;
 Response.Write("<br><b><font size=-1>Окно в базу данных. Версия 3 16.11.2008 17:34:17</font></b>");
%>