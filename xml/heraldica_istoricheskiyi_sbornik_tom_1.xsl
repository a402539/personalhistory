<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="application/xslt+xml" href="#stylesheet"?>

<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
   <html>
   	<head>
			<style>
				.f {font-weight: bold}
				.n {font-weight: bold; color: maroon}
				.fn {font-weight: bold; color: darkgreen}
			  .d {color: #008}
			</style>
   </head>
   <body>
<hr/><table><tr><td width="90%">
<a href="http://personalhistory.ru">Домой</a>&#160;<a href="http://greg20111.domain.com">greg20111</a>&#160;<a href="http://abv.byethost24.com">abv</a>&#160;<a href="http://boris.auchat.ru">boris</a>&#160;<a href="http://personalhistory.ru/forum/index.php">Форум</a>&#160;<a href="http://personalhistory.ru/forum_old/index.html">Архив форума</a>&#160;<a href="http://spiski-ru.blogspot.com/">Блог</a>&#160;<a href="http://personalhistory.ru/db/db.php">SQL-Базы</a>&#160;<a href="/dso.htm">DSO-базы</a>&#160;<a href="/geno.htm">Гено-базы</a>&#160;<a href="/projects/index.html">Проекты</a>&#160;<a href="/papers/index.html">Статьи</a>&#160;<a href="/docs.htm">Документы</a>&#160;<a href="/booksNL.htm">Книги</a>&#160;<a href="http://personalhistory.ru/chat.htm">Чат</a>&#160;<a href="http://personalhistory.ru/rss.xml"><img align="absmiddle" src="http://personalhistory.ru/rss.gif"/></a>&#160;<a href="/email.htm" target="_blank">Письмо автору</a>
</td><td width="10%"><script type="text/javascript" src="/orphus/orphus.js"><xsl:text>javascript here</xsl:text></script>
<a href="http://orphus.ru" id="orphus" target="_blank"><img alt="Система Orphus" src="/orphus/Oleg_Fadjarov_btn1.gif" border="0" width="257" height="48" /></a>
</td></tr></table><hr/>
См. также Алфавитный указатель гг. потомственныхъ дворянъ Русской Имперіи (матеріалы для русской генеалогіи) <a href="/papers/heraldica_istoricheskiyi_sbornik_tom_1.htm#p185">htm</a>
<hr/>
   <h2><center>Алфавитный указатель гг. потомственныхъ дворянъ Русской Имперіи (матеріалы для русской генеалогіи). 1900 г.</center></h2>
   <table border="1">
     <xsl:for-each select="//p">
     <!--<xsl:sort select="count(d)" data-type="number" order="descending" />-->
     <xsl:sort select="f"/>
     <xsl:sort select="n"/>
     <xsl:sort select="fn"/>
     <tr>
       <td class="f"><xsl:value-of select="f"/></td>
       <td class="n"><xsl:value-of select="n"/></td>
       <td class="fn"><xsl:value-of select="fn"/></td>
       <!--<td><xsl:value-of select="count(d)"/></td>-->
       <xsl:for-each select="d">
       	<td class="d"><xsl:value-of select="."/></td>
	     </xsl:for-each>
     </tr>
     </xsl:for-each>
   </table>
<hr/><table><tr><td width="90%">
<a href="http://personalhistory.ru">Домой</a>&#160;<a href="http://greg20111.domain.com">greg20111</a>&#160;<a href="http://abv.byethost24.com">abv</a>&#160;<a href="http://boris.auchat.ru">boris</a>&#160;<a href="http://personalhistory.ru/forum/index.php">Форум</a>&#160;<a href="http://personalhistory.ru/forum_old/index.html">Архив форума</a>&#160;<a href="http://spiski-ru.blogspot.com/">Блог</a>&#160;<a href="http://personalhistory.ru/db/db.php">SQL-Базы</a>&#160;<a href="/dso.htm">DSO-базы</a>&#160;<a href="/geno.htm">Гено-базы</a>&#160;<a href="/projects/index.html">Проекты</a>&#160;<a href="/papers/index.html">Статьи</a>&#160;<a href="/docs.htm">Документы</a>&#160;<a href="/booksNL.htm">Книги</a>&#160;<a href="http://personalhistory.ru/chat.htm">Чат</a>&#160;<a href="http://personalhistory.ru/rss.xml"><img align="absmiddle" src="http://personalhistory.ru/rss.gif"/></a>&#160;<a href="/email.htm" target="_blank">Письмо автору</a>
</td><td width="10%"><script type="text/javascript" src="/orphus/orphus.js"><xsl:text>javascript here</xsl:text></script>
<a href="http://orphus.ru" id="orphus" target="_blank"><img alt="Система Orphus" src="/orphus/Oleg_Fadjarov_btn1.gif" border="0" width="257" height="48" /></a>
</td></tr></table><hr/>
Комментарии приветствуются <a href="mailto:webmaster@personalhistory.ru">webmaster@personalhistory.ru</a>.
<br/>&#169; 2018 Борис Алексеев. Использование, иное, чем для персональных образовательных целей, требует согласования.
<br/><b><font size="-1">Последнее изменение 11.08.2018 13:57:47</font></b>
   </body>
   </html>
</xsl:template>

</xsl:stylesheet> 