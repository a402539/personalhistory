<?php
function getTCY($url)  
{    //��������� XML-���� � �������    
$xml = file_get_contents('http://bar-navig.yandex.ru/u?ver=2&show=32&url='.$url);      
//���� XML ���� ��������, �� ���������� �������� ��������� value    
//����� ���������� false - ������    
return $xml ? (int) substr(strstr($xml, 'value="'), 7) : false;  }    
function yandex_tic($url){    $file=file_get_contents("http://search.yaca.yandex.ru/yca/cy/ch/$url/");    
if(preg_match("!-\s+([0-9]{0,8})&lt;\/b&gt;!is",$file,$ok)){          
// ���� �� � ��������.              
$str=$ok[1];          }    
else if(preg_match("!&lt;td class=\"current\" valign=\"middle\"&gt;(.*?)&lt;/td&gt;\n&lt;/tr&gt;!si", $file, $ok)){
if(preg_match("!&lt;td align=\"right\"&gt;(.*?)&lt;/td&gt;\n&lt;/tr&gt;!si", $ok[0], $str)){
// ���� � ��������.                      
$str=$str[1];                  } 
else {                      
$str=0;                  }          }          
else {              
$str=0;          
}    
return trim($str);  }   
//������ �������������  
echo '���:'.getTCY('http://www.htmlweb.ru')." http://www.htmlweb.ru<br>";
echo '�: '.yandex_tic("www.htmlweb.ru").' www.htmlweb.ru<br>';
echo '���:'.getTCY('http://personalhistory.ru').' http://personalhistory.ru<br>';
echo '�: '.yandex_tic("personalhistory.ru").' personalhistory.ru<br>';
echo '���:'.getTCY('http://www.personalhistory.ru').' http://www.personalhistory.ru<br>';
echo '�: '.yandex_tic("www.personalhistory.ru").' www.personalhistory.ru<br>';
?>
