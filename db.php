<html><meta charset=utf8>
<head>
<title>Персональная история. База данных</title>
</head>
<body>
<hr><table><tr><td width=90%>
<a href="http://abv.byethost24.com">abv</a> <a href="http://history.h15.ru/">h15</a> <a href="http://1917.brinkster.net/">1917</a> <a href="http://history.easyforum.ru">Форум</a> <a href="http://spiski-ru.blogspot.com/">Блог</a> <a href="http://history.h15.ru/db/db.php">SQL-Базы</a> <a href="../dso.htm">DSO-базы</a> <a href="../geno.htm">Гено-базы</a> <a href="projects/index.html">Проекты</a> <a href="papers/index.html">Статьи</a> <a href="../booksNL.htm">Книги</a> <a href="../email.htm">Письмо автору</a>
</td><td width=10%><script type="text/javascript" type="text/javascript" src="http://history.h15.ru/orphus/orphus.js"></script>
<a href="http://orphus.ru" id="orphus" target="_blank"><img alt="Система Orphus" src="../orphus/Oleg_Fadjarov_btn1.gif" border="0" width="257" height="48" /></a>
</td></tr></table><hr>
<center>
<h3>Базы данных проекта</h3>
Комментарии приветствуются <a href="mailto:a402539@yandex.ru">a402539 @ yandex . ru</a>.
<!-- <br>Обсудить проекты можно на форуме <a href="http://history.h15.ru/phpBB2/index.php">http://history.h15.ru/phpBB2/index.php</a> -->
</center>
<hr>
Постепенно все базы будут переводиться в "кодировку" ct1251, в которой 8 дореволюционных букв &#1030;&#1110;&#1122;&#1123;&#1138;&#1139;&#1140;&#1141; перекодируются по правилу &#1030;&#1110;ЕеФфИи (т.е. первые две остаются на месте, а остальные заменяются на современные аналоги). Первая из таблиц в такой кодировке - <a href="db.php?table=`АртБригада1877-1878`">АртБригада1877-1878</a>. Такой формат данных - временный, и в дальнейшем будет заменен полноценным форматом Unicode.
<br>При просмотре базы данных можно установить сортировку по любому полю (для этого нажать на кнопку с названием поля), а также фильтровать (набрать в окошке значение фильтра и нажать кнопку со знаком вопроса) с использованием метасимволов `_` (любой символ) и `%` (любая последовательность символов). Например, при фильтре `на%` в поле `Чин` таблицы `награда` будут выведены записи со следующим значением поля `Чин`: `Наместник ..`, `начальник ..` и т.д. 
<br><b>Внимание!</b> Теперь появилась возможность искать сразу по нескольким колонкам. Например, скажем, если в таблице `1914-1918потери` указать в поле `ГуберниЯ` значение `Рязанская%` или `Рязанская губ.` (без обратных кавычек, естественно), а в полях `ФамилиЯ` и `ИмЯ`, скажем, `Иванов%` и `Иван%` соответственно (знак процента в конце ставим на всякий пожарный - чтобы возможный твердый знак в конце слов учесть), то в ответ получим всех Ивановых Иванов из Рязанской губернии.
<hr>30.08.2010 <b>Инструкция по применению</b> <textarea readonly cols=120 rows=5>
Вызываем базу данных по адресу http://history.h15.ru/db/db.php
Там есть список таблиц (сверху, в виде списка кратких наименований таблиц, и снизу - в виде таблицы, где указано полное наименование и есть ссылка для вызова каждой таблицы).

Если, скажем, интересует 
- таблица "Участники русско-турецкой войны 1877-1878", то вызываем таблицу с кратким наименованием 1877-1878
- таблица "Харьковский институт благородных девиц", то вызываем таблицу с кратким наименованием Харьковский
и т.д.

Пусть, скажем, нам нужна таблица с кратким наименованием Харьковский
Тогда просто нажимаем в верхней части на кнопку с наименованием Харьковский
Это эквивалентно вызову базы со следующим параметром http://history.h15.ru/db/db.php?table=`Харьковский`
(Если в кратком наименовании нет пробелов, обратные косые в наименовании можно опустить, т.е., в данном случае, можно вызвать таблицу и без обратных кавычек, по адресу http://history.h15.ru/db/db.php?table=Харьковский ).

Далее, если в этой таблице меня интересуют все Андреевы, то справа от имени реквизита ФамилиЯ набираю Андреева и нажимаю на знак вопроса под списком реквизитов.
Это эквивалентно набору в строке адреса следующего:
http://history.h15.ru/db/db.php?table=`Харьковский`&ФамилиЯ=Андреева
Другими словами, для фильтрования списка справа добавляем конструкцию &ИмяРеквизита=ЕгоЗначение
В данном случае ИмяРеквизита=ФамилиЯ, ЕгоЗначение=Андреева

Если значение реквизита известно не целиком, то можно применять два "волшебных" символа
`_` (любой символ) и `%` (любая последовательность символов)
Например, вот так можно вывести список всех, фамилия которых начинается на букву А и содержит букву н:
http://history.h15.ru/db/db.php?table=`Харьковский`&ФамилиЯ=А%н%
В ответ на этот запрос выведется список из 6 человек.

Если нужно одновременно ввести и фамилию, и имя, то можно это сделать командой:
http://history.h15.ru/db/db.php?table=`Харьковский`&ФамилиЯ=А%н%&ИмЯ=Анна

Если надо список отсортировать по, скажем, фамилии, то нажимаем на кнопку с наименованием этого реквизита.
Например, если к предыдущему фильтру добавить условие сортировки по фамилии, то вся строка запроса выглядит так:
http://history.h15.ru/db/db.php?table=`Харьковский`&ФамилиЯ=А%н%%&ИмЯ=Анна&ord=ФамилиЯ

Как это можно прочесть на экране, в результате выполнится следующая строка запроса
select * from `Харьковский` where `ФамилиЯ` like "А%н%" and `ИмЯ` like "Анна" order by `ФамилиЯ` limit 0,30
</textarea>
<hr>
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
<?
 include 'connect.php';
 include 'win-sql3.php';
?>
<hr>
<ul><b>Свежие базы</b> 28.08.10
 <li>28.08.10 Новая таблица <a href="db.php?table=courses1878">Список поступивших на С.-Петербургских высшие женские курсы в 1878 году</a> (422 записи)
 <li>22.06.09 Открыт "второй фронт" - <a href="http://history.h15.ru/dso.htm">DSO-базы</a>.
 	Эти базы будут размещаться и на <a href="http://1917.brinkster.net/dso.htm">другом, "запасном", сайте</a>.
 	<ul>
 		<li>"Сборник лиц, награжденных орденом Красного Знамени 1926" - 13742 записи.
 		<li>"Кавалеры орденов Славы трех степеней" - 2636 записей.
  </ul>
 <li>08.05.09 Новая таблица <a href="db.php?table=Лукомский">Лукомский. Указатель к общему гербовнику дворянских родов</a> (3797 записей).
 <li>23.04.09 Новая таблица <a href="db.php?table=Волковское">Волковское кладбище г.Санкт-Петербург</a> (3606 записей).
 <li>22.04.09 Новая таблица <a href="db.php?table=Александр">Александровский женский мещанский институт. Педагогический курс. Выпускницы 1848-1893</a> (677 записей).
 <li>19.04.09 Новая таблица <a href="db.php?table=z1756">Реестр Запорожского Войска 1756 г.</a> (12758 записей).
 <li>05.04.09 Новая таблица <a href="db.php?table=`ПридворныйШтат1913`">Придворный штат на 1913 год</a> (1655 записей).
 <li>09.03.09 Теперь <a href="db.php?table=`Смольный`">Список выпускниц Смольного ин-та благородных девиц 1767-1914</a> (6518 записей) содержит списки как штата и выпускниц 1767-1914, так и список воспитанниц 1914 (раньше эти сведения были разделены на две таблицы). Пока основная часть и добавленный список воспитанниц 1914 остаются в разных кодировках (ct1251 и cp1251 соответственно).
 <li>08.03.09 Новая таблица <a href="db.php?table=`Белостокский`">Белостокский</a> (1762 записи) - 1841-1891. Белостокский институт благородных девиц - штат и выпускницы за 1841-1891 годы. См. также статью <a href="http://history.h15.ru/papers/belostok.htm">Историческій Очеркъ Б&#1123;лостокскаго Інстітута Благородныхъ Д&#1123;вицъ 1841-1891 г.</>.
 <li>04.03.09 Новая таблица <a href="db.php?table=`1914-1918КовенскийУезд`">1914-1918КовенскийУезд</a> (395 персон) - 1914-1918. Именной списокъ нижнимъ чинамъ запаса, ратникамъ призваннымъ при мобилизаціи войскъ на д&#1123;йствительную военную службу въ Ковенскомъ у&#1123;зд&#1123; и отправленнымъ по назначенію въ части войскъ (только часть списка - №№ 1-10, 2041-2368, 3723-3731, 3746-3799 - все, чем располагаю).
 <li>02.03.09 Новая таблица `СПИСОКЪ нижнимъ чинамъ Л.-Гв. Коннаго полка, удостоеннымъ знака отличия Военнаго Ордена 4-й степени за 1805-1877 гг.` (378 персон) <a href="db.php?table=`КонныйПолк1805-1877(utf8)`">КонныйПолк1805-1877(utf8)</a>, <a href="db.php?table=`КонныйПолк1805-1877(ct1251)`">КонныйПолк1805-1877(ct1251)</a>. Первый вариант - в кодировке Unicode, второй - в "кодировке" ct1251, которая совпадает с cp1251, с учетом замены четырех дореволюционных букв на современные аналоги.
 <li>27.02.09 Новая таблица <a href="db.php?table=`МосковскаЯ1895`">Адрес-календарь Московской губернии 1895</a> (2488 персон)
 <li>19.03.09 Пополнена таблица <a href="db.php?table=`НиколаевскаЯ`">Николаевская Мариинская женская гимназия (1866-1873)</a> (80 персон)
 <li>19.03.09	Пополнена таблица <a href="db.php?table=`Харьковский`">Харьковский институт благородных девиц 1885,1895</a> (283 персоны)
 <li>20.02.09 Новая таблица <a href="db.php?table=`АртБригада1877-1878`">Кавказская гренадерская артиллерийская бригада 1877-1878</a> - 353 записи.
 <li>05.02.09 <a href="db.php?table=`1914-1918потери`">"Именной список нижних чинов 1914-1918. Потери</a> - выпуски 0001-0002, 0004-0006, 0008-0024, 0026, 0946 переформатированы в "осовремененную" кодировку (старенькие буквочки заменены на соответствующие современные: ИЕФИ), в итоге весь текст читается нормально, без всяких прямоугольничков вместо букв. Такая же судьба ждет в ближайшие дни и остальные выпуски.
 <li>29.01.09 Добавлен <a href="db.php?table=`Смольный`">список выпускниц Смольного ин-та благородных девиц 1767-1914</a> размером 6040 записей. Первоначально список набит в дореволюционной орфографии (в точности, как в оригинале), а затем произведены замены старых букв на новые по след. правилу: Іі&#1122;&#1123;&#1138;&#1139;&#1140;&#1141; заменяется ИиЕеФфИи. Если в предыдущем предложении вместо стареньких букв видны только прямоугольнички, то это Вы не так смотрите. Например, в броузере Internet Explorer надо через пункт меню Сервис, Свойства обозревателя, Шрифты, Шрифт веб-страницы выбрать, например, шрифт Palatino Linotype, и Вам будет щастье. Все остальные особенности текста сохранены (в частности в конце слов обычно стоит твердый знак).
 <li>09.01.09 <a href="db.php?table=`дума1475-1700`">дума1475-1700</a> - Боярская дума 1475-1700 - пока 194 записи.
 <li>14.01.09 <a href="db.php?table=`1914-1918потери`">"Именной список нижних чинов 1914-1918. Потери</a> - 124,879 записей (165 выпусков 0001-0002, 0004-0006, 0008-0023, 0026, 0027(9 страниц), 0031-0032, 0043, 0045-0046, 0050, 0067-0068, 0080-0081, 0083, 0088-0089, 0091, 0096, 0099, 0102, 0104, 0106, 0109, 0116, 0137, 0140, 0142, 0149, 0152, 0155, 0157, 0167, 0170, 0172, 0174, 0181, 0195, 0209-0210, 0216, 0225, 0228, 0232-0234, 0236-0237, 0242, 0249, 0251, 0254, 0264, 0277, 0280, 0283, 0295-0296, 0299, 0302, 0316, 0319-0320, 0327, 0337, 0352, 0356-0357, 0370, 0380, 0406, 0415, 0417-0418, 0421, 0423, 0429-0430, 0451, 0467, 0472, 0475, 0477, 0479, 0481-0483, 0490, 0492, 0494-0495, 0498, 0511, 0516, 0518-0519, 0521, 0537, 0539, 0547-0548, 0553, 0557, 0574, 0585, 0587, 0589, 0592, 0594, 0600, 0620, 0662, 0664, 0666-0667, 0672, 0678, 0681, 0683-0685, 0689, 0692, 0697, 0700, 0702, 0704, 0708, 0710, 0723, 0728, 0737, 0764, 0768, 0806, 0997, 1000, 1117, 1120, 1142, 1241, 2608, 2667, 2684, 2693, 2696).
 <li>27.12.08 Добавил <a href="db.php">новый движок</a>, который теперь выводит данные о конкретном человеке не в одну длинную (иногда очень) строку, а блоком, в котором значение каждой колонки по человеку выдается отдельной строкой. В итоге, по-моему, стало полегче читать данные.
 <li>27.12.08 Добавил список из 9532 военнопленных в Германии (<a href="db.php?table=`stalag18A`">Шталаг18А</a>), из которых только 21 <a href="db.php?table=`stalag18A`&fn=`Комментарии`&fv=`Russia%`">россиянин</a> (чтобы узнать это, надо в окошечке под названием последней колонки Комментарии написать Russia% и нажать на знак вопроса).
 <li>27.12.08 Добавил список воспитанниц 1914 года <a href="db.php?table=`Смольный1914`">Смольного института благородных девиц</a>.
 <li>18.12.08 Теперь в этой таблице выпуски 0001-0002,0004 страницы 00003-00032,00049-00064 всего записей 2293
 <li>14.12.08 <b>ЭПОХАЛЬНОЕ СОБЫТИЕ</b> Выложил выпуск 0001 (страницы 00003-00016) <a href="db.php?table=`1914-1918потери`">"Именной список нижних чинов 1914-1918. Потери</a> первые 700 записей.
 <li>09.12.08 В таблице <a href="db.php?table=`финский плен`">Русские военнопленные в Финляндии</a> разделил место захоронения на три колонки, а позднее упорядочил ФИО (оставил заглавными только первые буквы)
 <li>07.12.08 Создал таблицу <a href="db.php?table=`финский плен`">Русские военнопленные в Финляндии</a> (10906 записей).
 <li>06.12.08 Создал таблицу <a href="db.php?table=`норвегиЯ`">"Русские военнопленные в Норвегии 1941-1945"</a> (85039 записей). 
 	Соотв-но, колонки называются по-норвежски (ФИО пленных - русские, но в норвежской транскрипции). Предпосл. колонка - наименование лагеря, последняя - номер в списке, составленном перед передачей пленных в 1945 году на Родину.
 	Колонку `Nasjonalitet` можно использовать для фильтрования по национальности.
 	<br>Там есть такие 105 значений этой колонки
' ', '-', '?', '??', '???', '???+', '???Tysk', 'A', 'Abchazisk', 'Adigeets??', 'Admur??', 'Adzeber??', 'Al`zerbed??', 'Armensk', 'Aserbajdzjansk', 'Avarisk', 'Bakalinsk', 'Basjkirsk', 'Bortsjin??', 'Bulgarsk', 'Burjat-mongolsk', 'Chakasisk', 'Dagestansk', 'Daren??', 'Darginsk', 'Dunagansj??', 'Dungansk', 'Dungasjisk', 'Erevansk ??', 'Estisk', 'Ezdn', 'Ezdy??', 'Georgisk', 'Gorets', 'Gresk', 'GSSR??', 'Gukl.', 'Hviterussisk', 'Hviterussisk', 'Hviterussisk', 'Iagasjtsjisk', 'Ingusjetisk', 'Jшdisk', 'Kabardinsk', 'Kalmykisk', 'Karakalmyk', 'Karaolbak', 'Karatsjaevets', 'Karelo-finsk', 'Karelsk', 'Kasakhisk', 'Kirgisisk', 'Kolop. tysk??', 'Kolsj??', 'Komipermisk', 'Komisk', 'Kosakk', 'Kul.', 'Laks', 'Latvisk', 'Lezgisk', 'Litauisk', 'Lokiz??', 'Lopar`??', 'Ma??', 'Malovan.', 'Marisk', 'Marsju???', 'Migrell??', 'Moksja', 'Moldovisk', 'Moravisk', 'Mordvinsk', 'Nanajsk', 'Nemedpov', 'Nempov', 'Ossetisk', 'Pakarin', 'Pezgin', 'Polsk', 'Rumensk', 'Russisk', 'Samisk', 'Sigшyner', 'Tabasaransk', 'Tadzjikisk', 'Tatar', 'Tsjekkisk', 'Tsjekko-slovakisk', 'Tsjerkessisk', 'Tsjerv??', 'Tsjetsjensk', 'Tsjuvasjisk', 'Tung?', 'Turkmensk', 'Tyrkisk', 'Tysk', 'Udmurdisk', 'Udmurtisk', 'Ujgud', 'Ukrainsk', 'Ukrainsk-sigшyner', 'Ungur??', 'Usbekisk', 'V.EP.S', 'Zjapot'
 	<br>Например, так можно отыскать <a href="db.php?table=`норвегиЯ`&fn=`Nasjonalitet`&fv=`Russisk`">русских</a>
 	<br>Можно поиск провести и по любой другой нации
<form action="db.php" method=post>
 <input type=hidden name=table value=`норвегиЯ`>
 <input type=hidden name=fn value=`Nasjonalitet`>
 <select name=fv>
 <option disabled>Выберите нацию</option> 	
 <option value=` `>' '</option>
 <option value=`-`>'-'</option>
 <option value=`?`>'?'</option>
 <option value=`??`>'??'</option>
 <option value=`???`>'???'</option>
 <option value=`???+`>'???+'</option>
 <option value=`???Tysk`>'???Tysk'</option>
 <option value=`A`>'A'</option>
 <option value=`Abchazisk`>'Abchazisk'</option>
 <option value=`Adigeets??`>'Adigeets??'</option>
 <option value=`Admur??`>'Admur??'</option>
 <option value=`Adzeber??`>'Adzeber??'</option>
 <option value=`Al`zerbed??`>'Al`zerbed??'</option>
 <option value=`Armensk`>'Armensk'</option>
 <option value=`Aserbajdzjansk`>'Aserbajdzjansk'</option>
 <option value=`Avarisk`>'Avarisk'</option>
 <option value=`Bakalinsk`>'Bakalinsk'</option>
 <option value=`Basjkirsk`>'Basjkirsk'</option>
 <option value=`Bortsjin??`>'Bortsjin??'</option>
 <option value=`Bulgarsk`>'Bulgarsk'</option>
 <option value=`Burjat-mongolsk`>'Burjat-mongolsk'</option>
 <option value=`Chakasisk`>'Chakasisk'</option>
 <option value=`Dagestansk`>'Dagestansk'</option>
 <option value=`Daren??`>'Daren??'</option>
 <option value=`Darginsk`>'Darginsk'</option>
 <option value=`Dunagansj??`>'Dunagansj??'</option>
 <option value=`Dungansk`>'Dungansk'</option>
 <option value=`Dungasjisk`>'Dungasjisk'</option>
 <option value=`Erevansk ??`>'Erevansk ??'</option>
 <option value=`Estisk`>'Estisk'</option>
 <option value=`Ezdn`>'Ezdn'</option>
 <option value=`Ezdy??`>'Ezdy??'</option>
 <option value=`Georgisk`>'Georgisk'</option>
 <option value=`Gorets`>'Gorets'</option>
 <option value=`Gresk`>'Gresk'</option>
 <option value=`GSSR??`>'GSSR??'</option>
 <option value=`Gukl.`>'Gukl.'</option>
 <option value=`Hviterussisk`>'Hviterussisk'</option>
 <option value=`Hviterussisk`>'Hviterussisk'</option>
 <option value=`Hviterussisk`>'Hviterussisk'</option>
 <option value=`Iagasjtsjisk`>'Iagasjtsjisk'</option>
 <option value=`Ingusjetisk`>'Ingusjetisk'</option>
 <option value=`Jшdisk`>'Jшdisk'</option>
 <option value=`Kabardinsk`>'Kabardinsk'</option>
 <option value=`Kalmykisk`>'Kalmykisk'</option>
 <option value=`Karakalmyk`>'Karakalmyk'</option>
 <option value=`Karaolbak`>'Karaolbak'</option>
 <option value=`Karatsjaevets`>'Karatsjaevets'</option>
 <option value=`Karelo-finsk`>'Karelo-finsk'</option>
 <option value=`Karelsk`>'Karelsk'</option>
 <option value=`Kasakhisk`>'Kasakhisk'</option>
 <option value=`Kirgisisk`>'Kirgisisk'</option>
 <option value=`Kolop. tysk??`>'Kolop. tysk??'</option>
 <option value=`Kolsj??`>'Kolsj??'</option>
 <option value=`Komipermisk`>'Komipermisk'</option>
 <option value=`Komisk`>'Komisk'</option>
 <option value=`Kosakk`>'Kosakk'</option>
 <option value=`Kul.`>'Kul.'</option>
 <option value=`Laks`>'Laks'</option>
 <option value=`Latvisk`>'Latvisk'</option>
 <option value=`Lezgisk`>'Lezgisk'</option>
 <option value=`Litauisk`>'Litauisk'</option>
 <option value=`Lokiz??`>'Lokiz??'</option>
 <option value=`Lopar`??`>'Lopar`??'</option>
 <option value=`Ma??`>'Ma??'</option>
 <option value=`Malovan.`>'Malovan.'</option>
 <option value=`Marisk`>'Marisk'</option>
 <option value=`Marsju???`>'Marsju???'</option>
 <option value=`Migrell??`>'Migrell??'</option>
 <option value=`Moksja`>'Moksja'</option>
 <option value=`Moldovisk`>'Moldovisk'</option>
 <option value=`Moravisk`>'Moravisk'</option>
 <option value=`Mordvinsk`>'Mordvinsk'</option>
 <option value=`Nanajsk`>'Nanajsk'</option>
 <option value=`Nemedpov`>'Nemedpov'</option>
 <option value=`Nempov`>'Nempov'</option>
 <option value=`Ossetisk`>'Ossetisk'</option>
 <option value=`Pakarin`>'Pakarin'</option>
 <option value=`Pezgin`>'Pezgin'</option>
 <option value=`Polsk`>'Polsk'</option>
 <option value=`Rumensk`>'Rumensk'</option>
 <option selected value=`Russisk`>'Russisk'</option>
 <option value=`Samisk`>'Samisk'</option>
 <option value=`Sigшyner`>'Sigшyner'</option>
 <option value=`Tabasaransk`>'Tabasaransk'</option>
 <option value=`Tadzjikisk`>'Tadzjikisk'</option>
 <option value=`Tatar`>'Tatar'</option>
 <option value=`Tsjekkisk`>'Tsjekkisk'</option>
 <option value=`Tsjekko-slovakisk`>'Tsjekko-slovakisk'</option>
 <option value=`Tsjerkessisk`>'Tsjerkessisk'</option>
 <option value=`Tsjerv??`>'Tsjerv??'</option>
 <option value=`Tsjetsjensk`>'Tsjetsjensk'</option>
 <option value=`Tsjuvasjisk`>'Tsjuvasjisk'</option>
 <option value=`Tung?`>'Tung?'</option>
 <option value=`Turkmensk`>'Turkmensk'</option>
 <option value=`Tyrkisk`>'Tyrkisk'</option>
 <option value=`Tysk`>'Tysk'</option>
 <option value=`Udmurdisk`>'Udmurdisk'</option>
 <option value=`Udmurtisk`>'Udmurtisk'</option>
 <option value=`Ujgud`>'Ujgud'</option>
 <option value=`Ukrainsk`>'Ukrainsk'</option>
 <option value=`Ukrainsk-sigшyner`>'Ukrainsk-sigшyner'</option>
 <option value=`Ungur??`>'Ungur??'</option>
 <option value=`Usbekisk`>'Usbekisk'</option>
 <option value=`V.EP.S`>'V.EP.S'</option>
 <option value=`Zjapot`>'Zjapot'</option>
 </select>
 <input type=submit value="Найти">
</form>
 <li>02.12.08 Малость подправил базу <a href="db.php?table=`губернии`">губерний и уездов</a>
 <li>17.11.08 Ввел новую базу <a href="db.php?table=`Елисаветинский`">"Список выпускниц Петербургскаго Елисаветинскаго института"</a>
</ul>
<ul><b>Ближайшие планы</b> 01.02.2009
 <li>01.02.09 Поиск в базе фамилии <a href=db.php?table=`1914-1918потери`&fn=`ФамилиЯ`&fv=`Зеленскiй`>Зеленскiй</a> дает 12 человек.
  <br>Обнаружился один нюанс. Оказывается, последние выпуски были напечатаны уже в современной орфографии. Таким образом, нашелся еще один <a href=db.php?table=`1914-1918потери`&fn=`ФамилиЯ`&fv=`Зеленский`>Зеленский</a>, с предпоследней буквой "и".
  <br>Отсюда следует, что надо все переводить в одну, "осовремененную", кодировку, когда старые буквы заменяются аналогичными современными (по правилу &#1030;&#1110;&#1122;&#1123;&#1138;&#1139;&#1140;&#1141; -> ИиЕеФфИи). Буду делать это в ближайшие дни.
  <br><b>!!! Особо акцентирую внимание помощников. Эта замена будет делаться мной ТОЛЬКО при помещении в базу данных</b>, что обеспечит более удобный и предсказуемый поиск в базе (просто набираем при поиске слово современными буквами). <b>НАБИВАТЬ НАДО ПО-ПРЕЖНЕМУ В ТОЧНОМ СООТВЕТСТВИИ С ОРИГИНАЛОМ, Т.Е. С ДОРЕВОЛЮЦИОННЫМИ БУКВАМИ !!!</b>.
  <br>В дальнейшем, когда будет найден приемлемый способ, помимо "осовремененного", адаптированного к современному написанию, варианта базы, будет выкладываться "эталонный", т.е. в дореволюционном написании, вариант базы данных. Либо, что, пожалуй, правильнее, будет доработана процедура поиска, чтобы она сама искала слово, напечатанное современными буквами, как в адаптированном варианте базы, так и в эталонном. Это позволит тогда обойтись только одним, эталонным, вариантом. Тогда текст мы будем видеть в том виде, как он был в свое время напечатан, а поиск производить в удобном нам, современном, написании. 
 <li>На горизонте маячат "Именные списки .." - внушительные по размерам - десятки и сотни тысяч записей.
</ul>	
<table border=1> 01.09.10
 <tr><td>Период</td><td>Наименование</td><td>Вызов</td><td>Записей</td><td>Кодировка</td><td>Дата последнего изменения</td></tr>
 <tr><td>1475-1700</td><td>Боярская дума 1475-1700</td><td><a href="db.php?table=`дума1475-1700`">дума1475-1700</a></td><td>194</td><td></td><td></td></tr>
 <tr><td>1756</td><td>Реестр Запорожского Войска 1756 г.</td><td><a href="db.php?table=`z1756`">z1756</a></td><td>12758</td><td>cp1251</td><td>19.04.09</td></tr>
 <tr><td>1767-1914</td><td>Смольный институт благородных девиц (штат, выпускницы и воспитанницы)</td><td><a href="db.php?table=Смольный">Смольный</a></td><td>6518</td><td>ct1251+cp1251</td><td>09.03.09</td></tr>
 <tr><td>1790-1899</td><td>Костромская губерния. Дворяне</td><td><a href="db.php?table=`kostroma`">kostroma</td><td>1680</td><td></td><td></td></tr>
 <tr><td>1797-1917</td><td>Указатель к общему гербовнику дворянских родов</td><td><a href="db.php?table=Лукомский">Лукомский</td><td>3797</td><td>utf8</td><td>08.05.09</td></tr>
 <tr><td>1805-1877</td><td>Списокъ нижнимъ чинамъ Л.-Гв. Коннаго полка, удостоеннымъ знака отличия Военнаго Ордена 4-й степени за 1805-1877 гг.</td><td><a href="db.php?table=`КонныйПолк1805-1877(ct1251)`">КонныйПолк1805-1877(ct1251)</a></td><td>378</td><td>ct1251</td><td>02.03.09</td></tr>
 <tr><td>1805-1877</td><td>Списокъ нижнимъ чинамъ Л.-Гв. Коннаго полка, удостоеннымъ знака отличия Военнаго Ордена 4-й степени за 1805-1877 гг.</td><td><a href="db.php?table=`КонныйПолк1805-1877(utf8)`">КонныйПолк1805-1877(utf8)</a></td><td>378</td><td>utf8</td><td>02.03.09</td></tr>
 <tr><td>1841-1891</td><td>Белостокский институт благородных девиц (штат и выпускницы)</td><td><a href="db.php?table=Белостокский">Белостокский</a></td><td>1762</td><td>utf8</td><td>07.03.09</td></tr>
 <tr><td>1847-1908</td><td>СПБ. Елисаветинский институт благородных девиц</td><td><a href="db.php?table=Елисаветинский">Елисаветинский</a></td><td>1695</td><td></td><td></td></tr>
 <tr><td>1848-1893</td><td>СПБ. Александровский женский мещанский институт. Педагогический курс. Выпускницы</td><td><a href="db.php?table=Александр">Александр</a></td><td>677</td><td>cp1251</td><td>22.04.09</td></tr>
 <tr><td>1866-1873</td><td>Николаевская Мариинская женская гимназия</td><td><a href="db.php?table=НиколаевскаЯ">Николаевская</td><td>80</td><td>cp1251</td><td>19.03.09</td></tr>
 <tr><td>1877-1878</td><td>Русско-турецкая война 1877-1878</td><td><a href="db.php?table=`АртБригада1877-1878`">АртБригада1877-1878</a></td><td>353</td><td>ct1251</td><td></td></tr>
 <tr><td>1877-1878</td><td>Участники русско-турецкой войны 1877-1878</td><td><a href="db.php?table=`1877-1878`">1877-1878</a></td><td>1531</td><td></td><td></td></tr>
 <tr><td>1878</td><td>Список поступивших на С.-Петербургские высшие женские курсы в 1878 году</td><td><a href="db.php?table=`courses1878`">courses1878</a></td><td>422</td><td>cp1251</td><td>28.08.10</td></tr>
 <tr><td>1882-1889, 1893-1911</td><td>СПБ. Бестужевские высшие женские курсы</td><td><a href="db.php?table=courses">courses</td><td>3480</td><td></td><td></td></tr>
 <tr><td>1885,1895</td><td>Харьковский институт благородных девиц</td><td><a href="db.php?table=Харьковский">Харьковский</td><td>283</td><td>cp1251</td><td>19.03.09</td></tr>
 <tr><td>1890</td><td>Николаевский Женский Сиротский Институт - выпуск 1890 года</td><td><a href="db.php?table=`Сиротский1890`">Сиротский1890</a></td><td>49</td><td>cp1251</td><td>01.09.10</td></tr>
 <tr><td>1895</td><td>Алфавит персон адрес-календаря Московской губернии 1895</td><td><a href="db.php?table=`МосковскаЯ1895`">МосковскаЯ1895</td><td>2488</td><td></td><td>28.02.09</td></tr>
 <tr><td>1904-1905</td><td>Русские военнопленные в Японии 1904-1905</td><td><a href="db.php?table=`плен`">плен</a></td><td>1729</td><td></td><td></td></tr>
 <tr><td>1904-1905</td><td>Русско-японская война. "Полтава"</td><td><a href="db.php?table=`полтава`">полтава</a></td><td>119</td><td></td><td></td></tr>
 <tr><td>1904-1905</td><td>Русско-японская война. "Стерегущий"</td><td><a href="db.php?table=`стерегущий`">стерегущий</a></td><td>48</td><td></td><td></td></tr>
 <tr><td>1904-1905</td><td>Русско-японская война. Все</td><td><a href="db.php?table=`все`">все</a></td><td>1885</td><td></td><td></td></tr>
 <tr><td>1904-1905</td><td>Русско-японская война. Награды</td><td><a href="db.php?table=`награда`">награда</a></td><td>765</td><td></td><td></td></tr>
 <tr><td>1904-1905</td><td>Участники русско-японской войны 1904-1905</td><td><a href="db.php?table=`1904-1905`">1904-1905</a></td><td>1932</td><td></td><td></td></tr>
 <tr><td>1913</td><td>Придворный штат на 1913 год</td><td><a href="db.php?table=`ПридворныйШтат1913`">ПридворныйШтат1913</a></td><td>1655</td><td>html</td><td>05.04.09</td></tr>
 <tr><td>1914-1918</td><td>Именной список нижних чинов. Потери</td><td><a href="db.php?table=`1914-1918потери`">1914-1918потери</a></td><td>124879</td><td></td><td></td></tr>
 <tr><td>1914-1918</td><td>Именной список нижних чинов. Распределение губерний по выпускам</td><td><a href="db.php?table=`1914-1918`">1914-1918</a></td><td>7398</td><td></td><td>08.05.09</td></tr>
 <tr><td>1914-1918</td><td>Именной списокъ нижнимъ чинамъ запаса, ратникамъ призваннымъ при мобилизаціи войскъ на д&#1123;йствительную военную службу въ Ковенскомъ у&#1123;зд&#1123; и отправленнымъ по назначенію въ части войскъ</td><td><a href="db.php?table=`1914-1918КовенскийУезд`">1914-1918КовенскийУезд</a></td><td>395</td><td>utf8</td><td>04.03.09</td></tr>
 <tr><td>1926</td><td>Сборник лиц, награжденных орденом Красного Знамени</td><td><a href="http://history.h15.ru/dso.htm">Орден Красного Знамени</a></td><td>13742</td><td><b><font color=red>DSO</font></b></td><td>14.06.09</td></tr>
 <tr><td>1941-1945</td><td>Военнопленные в Германии 1941-1945. Шталаг18А </td><td><a href="db.php?table=`stalag18A`">stalag18A</td><td>9532</td><td></td><td></td></tr>
 <tr><td>1941-1945</td><td>Русские военнопленные в Норвегии 1941-1945</td><td><a href="db.php?table=`норвегиЯ`">норвегиЯ</a></td><td>85039</td><td></td><td></td></tr>
 <tr><td>1941-1945</td><td>Русские военнопленные в Финляндии 1941-1945</td><td><a href="db.php?table=`финский плен`">финский плен</a></td><td>10906</td><td></td><td></td></tr>
 <tr><td>1943-1945</td><td>Кавалеры ордена Славы трех степеней</td><td><a href="http://history.h15.ru/dso.htm">Орден Славы трех степеней</a></td><td>2636</td><td><b><font color=red>DSO</font></b></td><td>22.06.09</td></tr>
 <tr><td></td><td>Губернии и уезды Российской империи</td><td><a href="db.php?table=`губернии`">губернии</a></td><td>917</td><td></td><td></td></tr>
 <tr><td></td><td>Населенные места Российской империи</td><td><a href="db.php?table=`Населенные места`">Населенные места</a></td><td>980</td><td></td><td></td></tr>
 <tr><td></td><td>Волковское кладбище г.Санкт-Петербург</td><td><a href="db.php?table=Волковское">Волковское</a></td><td>3606</td><td>cp1251</td><td>23.04.09</td></tr>
 <tr><td></td><td>Всего</td><td>33+2 таблицы</td><td>291250 +13742 +2636</td><td></td><td></td></tr>
</table>

<hr><table><tr><td width=90%>
<a href="http://abv.byethost24.com">abv</a> <a href="http://history.h15.ru/">h15</a> <a href="http://1917.brinkster.net/">1917</a> <a href="http://history.easyforum.ru">Форум</a> <a href="http://spiski-ru.blogspot.com/">Блог</a> <a href="http://history.h15.ru/db/db.php">SQL-Базы</a> <a href="../dso.htm">DSO-базы</a> <a href="../geno.htm">Гено-базы</a> <a href="projects/index.html">Проекты</a> <a href="papers/index.html">Статьи</a> <a href="../booksNL.htm">Книги</a> <a href="../email.htm">Письмо автору</a>
</td><td width=10%><script type="text/javascript" type="text/javascript" src="http://history.h15.ru/orphus/orphus.js"></script>
<a href="http://orphus.ru" id="orphus" target="_blank"><img alt="Система Orphus" src="../orphus/Oleg_Fadjarov_btn1.gif" border="0" width="257" height="48" /></a>
</td></tr></table><hr>
<br>Комментарии приветствуются <a href="mailto:a402539@yandex.ru">a402539 @ yandex . ru</a>.
<br>&copy; 2008 Борис Алексеев. Использование, иное, чем для персональных образовательных целей, требует согласования.
<br><b><font size=-1>Последнее изменение 01.09.2010 22:16:37</font></b>
<hr>
<!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='http://counter.yadro.ru/hit?t29.10;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";h"+escape(document.title.substring(0,80))+";"+Math.random()+
"' alt='' title='LiveInternet: показано количество просмотров и"+
" посетителей' "+
"border=0 width=88 height=120><\/a>")//--></script><!--/LiveInternet-->
<!--Rating@Mail.ru LOGO--><a target=_top
href="http://top.mail.ru/jump?from=1458835"><img
SRC="http://d2.c4.b6.a1.top.mail.ru/counter?id=1458835;t=130;l=1"
border=0 height=40 width=88
alt="Рейтинг@Mail.ru"/></a><!--/LOGO-->
</body>
</html>