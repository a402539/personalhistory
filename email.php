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
mail("info@personalhistory.ru", "������ � �����", " �� $name
email-�����������: $email
����: $reason
����� ������: $message",
"From: <$email>\nContent-type: text/plain; charset=windows-1251"); 
// Header("Content-type: text/html");
echo "<br><br><center>���� ������ ���������� �������.<br><br><a href='javascript:history.back()'>�����</a> "
?>