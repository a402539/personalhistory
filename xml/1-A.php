<?php
// Подготавливаем данные и таблицу стилей
$data = new DOMDocument('1.0', 'UTF-8');
$data->load('1-A.xml');
$view = new DOMDocument('1.0', 'UTF-8');
$view->load('yalu.xslt');

// Создаем XSLT процессор
$xsl = new XSLTProcessor();

// Импортируем таблицу стилей
$xsl->importStyleSheet($view);

// Если в запросе есть номер страницы, то передаем ее шаблону
$xsl->setParameter('', 'page', 1);
if (isset($_GET['page'])) {
	$xsl->setParameter('', 'page', $_GET['page']);
}

// Преобразовываем данные и выводим на экран
echo $xsl->transformToXML($data);
?>