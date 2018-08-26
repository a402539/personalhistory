<?php
// Проблема переменной register_globals = off
// Доступно, начиная с PHP 4.1.0

// echo '<br>1+ '.$_GET['table'];
// echo '<br>2 '.$_POST['table'];
// echo '<br>3+ '.$_REQUEST['table'];

// import_request_variables('p', 'p_');
// echo '<br>4 '.$p_table;

// Доступно, начиная с PHP 3. Начиная с PHP 5.0.0, эти длинные предопределенные
// переменные могут быть отключены директивой register_long_arrays.

// echo '<br>5+ '.$HTTP_GET_VARS['table'];

// Доступно, если директива PHP register_globals = on. Начиная
// с PHP 4.2.0, значение по умолчанию register_globals = off.
// Использование/доверие этому методу непредпочтительно.

// echo '<br>6 '.$table;
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

getpost_ifset(array('name', 'email', 'reason', 'message'));
?>
<?
mail("info@personalhistory.ru", "письмо с сайта", " от $name
email-отправителя: $email
тема: $reason
текст письма: $message",
"From: <$email>\nContent-type: text/plain; charset=windows-1251"); 
// Header("Content-type: text/html");
echo "<br><br><center>Ваше письмо отправлено успешно.<br><br><a href='javascript:history.back()'>НАЗАД</a> "
?>