<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  <xsl:template match="/">
    <html>
    	<meta charset="utf8"/>
    	<head>
<!--    		
<script>
function removeInput()
{
	var x=document.getElementsByTagName("tr");
	for (var i = 0; x.length>i; i++) {
		y=x[i].getElementsByTagName("td");
    for (var j=0;y.length>j;j++){
    	var yj=y[j]; if (yj.hasAttribute("ondblclick")) {	yj.removeAttribute("ondblclick"); };
    	z=yj.getElementsByTagName("input");	if (z.length>0) {yj.removeChild(z[0])};
    };
 	};
 	b=document.getElementsByTagName("button")[0]; document.body.removeChild(b);
 	s=document.getElementsByTagName("script")[0]; document.head.removeChild(s);
};
function myFunction(node) {  
		if (node.childNodes.length == 1) 
		{ var input = document.createElement("input");  input.type="text";
			input.value=node.textContent;
			node.appendChild(input);}
		else
		{ if (node.textContent !== node.childNodes[1].value) {var text = node.childNodes[1].value; node.removeChild(node.childNodes[1]); node.textContent=text;}
			else {node.removeChild(node.childNodes[1]);}
		};
};
</script>
-->      	
</head>

      <body>
<!--
		   	<button onclick="removeInput();">Убрать input</button>
      	<a href="#Лазареты"> Лазареты</a> <a href="#Офицеры"> Офицеры</a> <a href="#НижниеЧиныАдреса"> НижниеЧиныАдреса</a> <a href="#НижниеЧины"> НижниеЧины</a>
      	<hr/>
-->      	
        <h1><center>Бюро учета потерь в 1-ой Мировой войне (1914-1918). Нижние чины<br/>(картотека Ялуторовского архива, сканы gwar.elar.ru)</center></h1>
        См. также <a target="_blank" href="http://personalhistory.ru/images/Ялуторовск/index.html">Ялуторовск</a>
        Ящики 
        <a target="_blank" href="http://personalhistory.ru/xml/1_А.htm">1_А</a> , 
        <a target="_blank" href="http://personalhistory.ru/xml/2_А.htm">2_А</a> ,
        <a target="_blank" href="http://personalhistory.ru/xml/3_А.htm">3_А</a>
        <h3>Ящик <xsl:value-of select="/Spisok/@Ящик"/></h3>
<!--
        <form action="getElementById('t1').innerHTML=Date()">
   First name: <input type="text" name="fname"></input><br/>
   Last name: <input type="text" name="lname"></input><br/>
   <input type="submit" value="Submit"></input>
</form> 
-->
        <table border="1">
          <xsl:for-each select="//Person">
          	<xsl:sort order="ascending" select="ID"/>
            <tr>
              <td>
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
              	<!--<img width="200" src="http://dev.gwar.elar.ru/Niznie_chiny/{/Spisok/@Ящик}/{скан}.JPG"/><br/>-->
              	<a target="_blank" href="http://dev.gwar.elar.ru/Niznie_chiny/{/Spisok/@Ящик}/{скан}.JPG"><xsl:value-of select="скан"/></a></td>
            </tr>
          </xsl:for-each>
        </table>
<!--        <a name="Офицеры"></a><h2>Именной список 01. Офицеры</h2>
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
-->
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
