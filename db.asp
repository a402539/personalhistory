<html>
<head>
<title>������������ �������. ���� ������</title>
<!--Rating@Mail.ru COUNTER--><script language="JavaScript" type="text/javascript"><!--
d=document;var a='';a+=';r='+escape(d.referrer)
js=10//--></script><script language="JavaScript1.1" type="text/javascript"><!--
a+=';j='+navigator.javaEnabled()
js=11//--></script><script language="JavaScript1.2" type="text/javascript"><!--
s=screen;a+=';s='+s.width+'*'+s.height
a+=';d='+(s.colorDepth?s.colorDepth:s.pixelDepth)
js=12//--></script><script language="JavaScript1.3" type="text/javascript"><!--
js=13//--></script><script language="JavaScript" type="text/javascript"><!--
d.write('<IMG src="http://d2.c4.b6.a1.top.mail.ru/counter'+
'?id=1458835;js='+js+a+';rand='+Math.random()+
'" height="1" width="1" alt="top.mail.ru" border="0" />')
if(11<js)d.write('<'+'!-- ')//--></script><noscript><img
src="http://d2.c4.b6.a1.top.mail.ru/counter?js=na;id=1458835"
height="1" width="1" alt="top.mail.ru" border="0" /></noscript><script language="JavaScript" type="text/javascript"><!--
if(11<js)d.write('--'+'>')//--></script><!--/COUNTER-->
</head>
<body>
<hr>
<a href="http://1917.brinkster.net/">�� �������</a> <a href="http://history.h15.ru/">�� ������� (������ ����)</a> <a href="http://history.easyforum.ru">�����</a> <a href="http://spiski-ru.blogspot.com/">����</a> <a href="http://history.h15.ru/db/db.php">���� ������</a> <a href="http://1917.brinkster.net/projects/index.html">�������</a> <a href="http://1917.brinkster.net/papers/index.html">������</a> <a href="http://1917.brinkster.net/booksNL.htm">�����</a> <a href="http://1917.brinkster.net/email.htm">������ ������ �����</a>
<hr>
<center>
<h3>���� ������ �������</h3>
����������� �������������� <a href="mailto:a402539@yandex.ru">a402539 @ yandex . ru</a>.
<!-- <br>�������� ������� ����� �� ������ <a href="http://history.h15.ru/phpBB2/index.php">http://history.h15.ru/phpBB2/index.php</a> -->
</center>
<hr>
<h3><center><b>16.11.2008 ��� ��������� �������� ������� � ���� ������, ��������� �������� ������� <a href="http://history.h15.ru/db/db.php">http://history.h15.ru/db/db.php</a>, �����������������, �� ��������� �������, �� ������ ����� <a href="http://history.h15.ru">http://history.h15.ru</a>, ������ ��� �������� ����� �������� �� �� PHP, � �� ASP, � ������ ����� ������� � ���� �� �� MySQL, � �� Access.</center></h3>
<hr>
��� ��������� ���� ������ ����� ���������� ���������� �� ������ ���� (��� ����� ������ �� ������ � ��������� ����), � ����� ����������� (������� � ������ �������� ������� � ������ ������ �� ������ �������) � �������������� ������������ `_` (����� ������) � `%` (����� ������������������ ��������). ��������, ��� ������� `��%` � ���� `���` ������� `�������` ����� �������� ������ �� ��������� ��������� ���� `���`: `��������� ..`, `��������� ..` � �.�. 
<hr>
<?php
// �������� ���������� register_globals = off
// ��������, ������� � PHP 4.1.0

// echo '<br>1+ '.$_GET['table'];
// echo '<br>2 '.$_POST['table'];
// echo '<br>3+ '.$_REQUEST['table'];

// import_request_variables('p', 'p_');
// echo '<br>4 '.$p_table;

// ��������, ������� � PHP 3. ������� � PHP 5.0.0, ��� ������� ����������������
// ���������� ����� ���� ��������� ���������� register_long_arrays.

// echo '<br>5+ '.$HTTP_GET_VARS['table'];

// ��������, ���� ��������� PHP register_globals = on. �������
// � PHP 4.2.0, �������� �� ��������� register_globals = off.
// �������������/������� ����� ������ �����������������.

// echo '<br>6 '.$table;
?>

<?
function getpost_ifset($test_vars) // getpost_ifset(array('username', 'password', 'password2'));
    {  
        if (!is_array($test_vars)) {  
            $test_vars = array($test_vars);  
        }  
          
        foreach($test_vars as $test_var) {  
            if (isset($_POST[$test_var])) {  
                global $$test_var;  
                $$test_var = $_POST[$test_var];  
            } elseif (isset($_GET[$test_var])) {  
                global $$test_var;  
                $$test_var = $_GET[$test_var];  
            }  
        }  
    }  

getpost_ifset(array('db', 'base', 'table', 'fn', 'fv', 'ord'));
?>

<!--#include file="connect.asp" -->
<!--#include file="win-sql2.asp" -->

<hr>
<br><a href="http://1917.brinkster.net/">�� �������</a> <a href="http://history.h15.ru/">�� ������� (������ ����)</a> <a href="http://history.easyforum.ru">�����</a> <a href="http://spiski-ru.blogspot.com/">����</a> <a href="http://history.h15.ru/db/db.php">���� ������</a> <a href="http://1917.brinkster.net/projects/index.html">�������</a> <a href="http://1917.brinkster.net/papers/index.html">������</a> <a href="http://1917.brinkster.net/booksNL.htm">�����</a> <a href="http://1917.brinkster.net/email.htm">������ ������ �����</a>
<hr>
<br>����������� �������������� <a href="mailto:a402539@yandex.ru">a402539 @ yandex . ru</a>.
<br>&copy; 2008 ����� ��������. �������������, ����, ��� ��� ������������ ��������������� �����, ������� ������������.
<br><b><font size=-1>��������� ��������� 15.11.2008 15:07:19</font></b>
<hr>
<!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='http://counter.yadro.ru/hit?t29.10;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";h"+escape(document.title.substring(0,80))+";"+Math.random()+
"' alt='' title='LiveInternet: �������� ���������� ���������� �"+
" �����������' "+
"border=0 width=88 height=120><\/a>")//--></script><!--/LiveInternet-->
<!--Rating@Mail.ru LOGO--><a target=_top
href="http://top.mail.ru/jump?from=1458835"><img
SRC="http://d2.c4.b6.a1.top.mail.ru/counter?id=1458835;t=130;l=1"
border=0 height=40 width=88
alt="�������@Mail.ru"/></a><!--/LOGO-->
</body>
</html>