<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes"/>
<!-- Постраничная навигация https://habrahabr.ru/post/138740/ -->
	<!-- Номер текущей страницы -->
	<xsl:param name="page" select="0"/>
	
	<!-- Основное преобразование -->
  <xsl:template match="/">
		<!-- Число элементов на странице -->
		<xsl:variable name="pageItems" select="5"/>
	
		<!-- Вычисляем текущую страницу  -->
		<xsl:variable name="pageCurrent">
			<xsl:choose>
				<!-- Если текущая страница меньше одного -->
				<xsl:when test="number($page) &lt; 1">
					<xsl:text>1</xsl:text>
				</xsl:when>
				<!-- Если текущая страница больше общего количества -->
				<xsl:when test="number($page) > ceiling(count(/Spisok/*) div $pageItems)">
					<xsl:value-of select="ceiling(count(/Spisok/*) div $pageItems)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="number($page)"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		
		<html>
    	<meta charset="utf8"/>
    	<head><!-- onload="alert(concat('head ',location.search))">-->
    		<!--<title><xsl:value-of select="concat('Страница № ',$pageCurrent)"/></title>-->
				<!-- Немного стилей для красоты -->
				<!--<style>
					#nav tr{float:left;list-style:none;}
					#nav a{text-decoration:none;padding:4px;color:#333}
					#nav a.on, #nav a:hover{background:#bbb;}
				</style>-->
<script>
	var sortID; sortID='Воинская_часть';
	function myFunction() {
		alert(document.getElementById('v21').value);
	};
	// ************************************************************
	// Create an array to keep query string variables
	var qsParm = new Array();
	// This function gets query string values from current page
	// and stores them in above defined array
	function qs()
	    {
            var query = window.location.search.substring(1);
            var parms = query.split('&amp;');
           
            for (var i=0; i &lt; parms.length; i++) {
                var pos = parms[i].indexOf('=');
                if (pos > 0)
                {
                    var key = parms[i].substring(0,pos);
                    var val = parms[i].substring(pos+1);
                    qsParm[key] = val;
                }
            }
    }

	qsParm['f'] = null;
	qsParm['v'] = null;
	// Call function – get query strings
	qs();
	//alert(qsParm['v']);
</script>
</head>

      <body><!--</body> onload="alert(concat('body ',location.search))">-->
        <h1><center>Бюро учета потерь в 1-ой Мировой войне (1914-1918). Нижние чины<br/>(картотека Ялуторовского архива, сканы gwar.elar.ru)</center></h1>
        См. также <a target="_blank" href="http://personalhistory.ru/images/Jalutorovsk/index.html">Ялуторовск</a>
        Ящики 
        <a target="_blank" href="http://personalhistory.ru/xml/1-A.php?page=1">1-A</a> , 
        <a target="_blank" href="http://personalhistory.ru/xml/2-A.php?page=1">2-A</a> ,
        <a target="_blank" href="http://personalhistory.ru/xml/3-A.php?page=1">3-A</a>
        <h3>Ящик <xsl:value-of select="/Spisok/@Ящик"/></h3>
<!--
        <form action="getElementById('t1').innerHTML=Date()">
   First name: <input type="text" name="fname"></input><br/>
   Last name: <input type="text" name="lname"></input><br/>
   <input type="submit" value="Submit"></input>
</form> 
-->
				<!--<ul>
					<xsl:for-each select="/Spisok/*[position() &gt; ($pageCurrent * $pageItems - $pageItems) and position() &lt;= ($pageCurrent * $pageItems)]">
						<li><xsl:value-of select="@id"/></li>
					</xsl:for-each>
				</ul>
				<hr/>-->
				<!-- Вызываем шаблон постраничной навигации -->
				<xsl:call-template name="pageNav">
					<xsl:with-param name="items" select="/Spisok/*"/>
					<xsl:with-param name="pageCurrent" select="$page"/>
					<xsl:with-param name="pageItems" select="$pageItems"/>
					<xsl:with-param name="pageParty" select="2"/>
				</xsl:call-template>
		</body>
		</html>
	</xsl:template>

	<!-- Шаблон создания постраничной навигации -->
	<xsl:template name="pageNav">
		<!-- Элементы -->
		<xsl:param name="items"/>
		<!-- Текущая страница -->
		<xsl:param name="pageCurrent"/>
		<!-- Число элементов на странице -->
		<xsl:param name="pageItems"/>
		<!-- Число ссылок назад и вперед -->
		<xsl:param name="pageParty"/>

		<!-- Всего страниц -->
		<xsl:variable name="count" select="ceiling(count($items) div $pageItems)"/>

		<xsl:if test="$page &gt; 0">
			Всего страниц <xsl:value-of select="$count"/> <br/>
			Страница № 
	
			<xsl:if test="$pageCurrent &gt; 1">
			<!-- В начало и назад -->
				<a href="?page=1">&lt;&lt;</a>&#160;
				<a href="?page={$pageCurrent - 1}">&lt;</a>&#160;
			</xsl:if>
				<xsl:value-of select="$pageCurrent"/>
			<!-- Следующая и в конец -->
			<xsl:if test="$pageCurrent &lt; $count">
				&#160;<a href="?page={$pageCurrent + 1}">&gt;</a>
				&#160;<a href="?page={$count}">&gt;&gt;</a>
			</xsl:if>

		</xsl:if>
				
      <table id="nav" border="1">

			<!-- Центральные -->
			<xsl:for-each select="$items[ceiling(position() div $pageItems) = $pageCurrent]">
       	<!--<xsl:sort order="ascending" select="ID"/>-->
       	<!--$page &gt; 0 and--> 
				<xsl:if test="($pageCurrent - $pageParty) &lt;= position() and ($pageCurrent + $pageParty) &gt;= position()">
					&#160;
					<a href="?page={position()}">
						<xsl:if test="$pageCurrent=position()">
							<xsl:attribute name="class">on</xsl:attribute>
						</xsl:if>
						<xsl:value-of select="position()"/>
					</a>
				</xsl:if>
	            <tr>
	              <td width="30%" valign="top">
	              <b>ID: </b> <xsl:value-of select="ID"/> &#160; <a target="_blank" href="http://gwar.elar.ru/cartoteka/?ID={ID}"><xsl:value-of select="FIO"/></a>
	              <!--<td ondblclick="myFunction(this)"><xsl:value-of select="ID"/></td>-->
	              <hr />
	              <b>Тип документа: </b> <xsl:value-of select="Тип_документа"/>
	              <br /><b>Воинская часть: </b> <xsl:value-of select="Воинская_часть"/>
	              <br /><b>Звание: </b> <xsl:value-of select="Звание"/>
	              <br /><b>Дата поступления: </b> <xsl:value-of select="Дата_поступления"/>
	              <br /><b>Дата события: </b> <xsl:value-of select="Дата_события"/>
	              <br /><b>Место сражения: </b> <xsl:value-of select="Место_сражения"/>
	              <br /><b>Место убытия: </b> <xsl:value-of select="Место_убытия"/>
	              <br /><b>Судьба: </b> <xsl:value-of select="Судьба"/>
	              <br /><b>Фамилия (записано от руки): </b> <xsl:value-of select="Фамилия_записано_от_руки"/>
	              <br /><b>Скобка: </b> <xsl:value-of select="Скобка"/>
	              </td>
	              <td>
									<xsl:if test="$page = 0">
		              	<a target="_blank" href="http://dev.gwar.elar.ru/Niznie_chiny/{/Spisok/@Ящик}/{скан}.JPG">
			              		<center><xsl:value-of select="скан"/></center>
		              	</a>
									</xsl:if>
									<xsl:if test="$page != 0">
	              		<center><xsl:value-of select="скан"/></center><br/>
		              	<a target="_blank" href="http://dev.gwar.elar.ru/Niznie_chiny/{/Spisok/@Ящик}/{скан}.JPG">
			              		<img width="100%" src="http://dev.gwar.elar.ru/Niznie_chiny/{/Spisok/@Ящик}/{скан}.JPG"/>
		              	</a>
									</xsl:if>
	              </td>
	            </tr>

			</xsl:for-each>
			
			</table>
			
		<!--</ul>-->
	</xsl:template>

</xsl:stylesheet>				

<!--
				<br/>Поле <xsl:value-of select="$f" /> 
				<br/>Значение <xsl:value-of select="$vw" />
         <form>
  				Поле:
  				<select name="f" id="f1" onchange="alert(this.options[this.selectedIndex].value)">>
    				<option value="ID">ID</option>
    				<option value="Тип_документа">Тип документа</option>
    				<option value="Воинская_часть">Воинская часть</option>
    				<option value="Звание">Звание</option>
    				<option value="Дата_поступления">Дата_поступления</option>
    				<option value="Дата_события">Дата_события</option>
    				<option value="Место_сражения">Место_сражения</option>
    				<option value="Место_убытия">Место_убытия</option>
    				<option value="Судьба">Судьба</option>
  				</select>
  				Значение:  <input type="text" name="v2" id="v21" value="190000" onchange="var s=this.value;alert(s);" />
  				<input type="submit" value="Найти" />
				</form>
				<script>var v22 = document.getElementById('v21').value; alert(qsParm[‘v’]);</script>
				<xsl:variable name="v22">qsParm['v']</xsl:variable>
				<br/>Поле <xsl:value-of select="$f" /> 
				<br/>Значение <xsl:value-of select="$vw" />
				<br/>v22 <xsl:value-of select="$v22" />
				<a href="?page={$v}">&lt;&lt;</a>
        <table border="1">
          <xsl:for-each select="//Person">
          	<xsl:sort order="ascending" select="sortID"/>
          	<xsl:if test="concat('ID != ', '189061')">
	            <tr>
	              <td>
	              <b onclick="alert(qsParm['v']);">ID: </b> <xsl:value-of select="ID"/> &#160; <a target="_blank" href="http://gwar.elar.ru/cartoteka/?ID={ID}"><xsl:value-of select="FIO"/></a>
	              <td ondblclick="myFunction(this)"><xsl:value-of select="ID"/></td>
	              <hr />
	              <b>Тип документа: </b> <xsl:value-of select="Тип_документа"/>
	              <br /><b>Воинская часть: </b> <xsl:value-of select="Воинская_часть"/>
	              <br /><b>Звание: </b> <xsl:value-of select="Звание"/>
	              <br /><b>Дата поступления: </b> <xsl:value-of select="Дата_поступления"/>
	              <br /><b>Дата события: </b> <xsl:value-of select="Дата_события"/>
	              <br /><b>Место сражения: </b> <xsl:value-of select="Место_сражения"/>
	              <br /><b>Место убытия: </b> <xsl:value-of select="Место_убытия"/>
	              <br /><b>Судьба: </b> <xsl:value-of select="Судьба"/>
	              <br /><b>Фамилия (записано от руки): </b> <xsl:value-of select="Фамилия_записано_от_руки"/>
	              <br /><b>Скобка: </b> <xsl:value-of select="Скобка"/>
	              </td>
	              <td>
	              	<img width="200" src="http://dev.gwar.elar.ru/Niznie_chiny/{/Spisok/@Ящик}/{скан}.JPG"/><br/>
	              	<a target="_blank" href="http://dev.gwar.elar.ru/Niznie_chiny/{/Spisok/@Ящик}/{скан}.JPG"><xsl:value-of select="скан"/></a></td>
	            </tr>
						</xsl:if>
          </xsl:for-each>
        </table>
        <table border="1">
          <tr gcolor="#9acd32">
            <th>id</th>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th>Текст</th>
          </tr>
          <xsl:for-each select="Выпуск/ОфицерскиеЧины//Строка">
            <xsl:sort select="@Фамилия"/>
            <xsl:sort select="@Имя"/>
            <xsl:sort select="@Отчество"/>
            <tr>
	            <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="@Фамилия"/></td>
              <td><xsl:value-of select="@Имя"/></td>
              <td><xsl:value-of select="@Отчество"/></td>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>
        <a name="НижниеЧиныАдреса"></a><h2>Именной список 01. НижниеЧины/Адреса</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>id</th>
            <th>Адрес</th>
            <th>Губерния</th>
            <th>Уезд</th>
            <th>Текст</th>
          </tr>
          <xsl:for-each select="Выпуск/НижниеЧины//Строка">
            <xsl:sort select="@Адрес"/>
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="@Адрес"/></td>
              <td><xsl:value-of select="@Губерния"/></td>
              <td><xsl:value-of select="@Уезд"/></td>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>
        <a name="НижниеЧины"></a><h2>Именной список 01. Нижние чины</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>id</th>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th>Текст</th>
          </tr>
          <xsl:for-each select="Выпуск/НижниеЧины//Строка">
            <xsl:sort select="@Фамилия"/>
            <xsl:sort select="@Имя"/>
            <xsl:sort select="@Отчество"/>
            <tr>
	            <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="@Фамилия"/></td>
              <td><xsl:value-of select="@Имя"/></td>
              <td><xsl:value-of select="@Отчество"/></td>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
-->