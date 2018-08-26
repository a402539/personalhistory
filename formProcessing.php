<?PHP
/*The form values are stored in the $_POST and $_GET supergloabals as an array. The array is indexed with the form
name properity. We will be using the $_POST superglobal in this example. If you wish to try this with GET do a text replace on $_POST with $_GET, be sure the html form tag has the get method as well*/

//import superglobals to variables
$TEXTAREA = $_POST['TEXTAREA'];
$text = $_POST['text'];
$password = $_POST['password'];
$radioButtons = $_POST['radioButtons'];

//has the checkbox been checked?
if (empty($_POST['checkbox'])){
  //the checkbox was not selected
  $checkbox = 'The checkbox was not selected';
}else{
  //the check was selected
  $checkbox = 'The checkbox was selected';
}

//output information to screen
echo <<<html
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<META http-equiv="Content-Language" content="en-us">
<META http-equiv="Content-Type" content="text/html; charset=windows-1252">
<TITLE>Test Form Return Page</TITLE>
</HEAD>

<BODY>
Textarea = $TEXTAREA <br>
<br>
Textbox = $text <br>
<br>
Password = $password <br>
<br>
$checkbox<br>
<br>
RadioButtons = $radioButtons <br>
<br>

<a href="form.htm">Go back to the HTML page</a>
</BODY>
</HTML>
html;
?>