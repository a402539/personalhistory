<?php
function getTCY($url)  
{    //считываем XML-файл с данными    
$xml = file_get_contents('http://bar-navig.yandex.ru/u?ver=2&show=32&url='.$url);      
//если XML файл прочитан, то возвращаем значение параметра value    
//иначе возвращаем false - ошибка    
return $xml ? (int) substr(strstr($xml, 'value="'), 7) : false;  }    
function yandex_tic($url){    $file=file_get_contents("http://search.yaca.yandex.ru/yca/cy/ch/$url/");    
if(preg_match("!-\s+([0-9]{0,8})&lt;\/b&gt;!is",$file,$ok)){          
// сайт не в каталоге.              
$str=$ok[1];          }    
else if(preg_match("!&lt;td class=\"current\" valign=\"middle\"&gt;(.*?)&lt;/td&gt;\n&lt;/tr&gt;!si", $file, $ok)){
if(preg_match("!&lt;td align=\"right\"&gt;(.*?)&lt;/td&gt;\n&lt;/tr&gt;!si", $ok[0], $str)){
// сайт в каталоге.                      
$str=$str[1];                  } 
else {                      
$str=0;                  }          }          
else {              
$str=0;          
}    
return trim($str);  }   
//пример использования  
echo 'ТИЦ:'.getTCY('http://www.htmlweb.ru')." http://www.htmlweb.ru<br>";
echo 'Я: '.yandex_tic("www.htmlweb.ru").' www.htmlweb.ru<br>';
echo 'ТИЦ:'.getTCY('http://personalhistory.ru').' http://personalhistory.ru<br>';
echo 'Я: '.yandex_tic("personalhistory.ru").' personalhistory.ru<br>';
echo 'ТИЦ:'.getTCY('http://www.personalhistory.ru').' http://www.personalhistory.ru<br>';
echo 'Я: '.yandex_tic("www.personalhistory.ru").' www.personalhistory.ru<br>';
?>
