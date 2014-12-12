<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="ru" class="no-js"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Мир недвижимости Набережные Челны. Недвижимость в Набережных Челнах.</title>
<meta name="description" content="Мир недвижимости Набережные Челны: вторичное жилье, квартиры, малосемееки, дома, котеджи, дачи в городе Набережные Челны. Весь мир недвижимости. Из рук в руки Набережные Челны.">
<meta name="keywords" content="мир, недвижимости, набережные, челны, недвижимость, вторичное, жилье, продажа, покупка, квартиры, комнаты, дома, дачи, гаражи">
<meta name="author" content="zakamie">
<meta name='yandex-verification' content='5f0c8e634ecef34b' />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/favicon.ico">
<link rel="stylesheet" href="/css/style.css?v=2">
<script src="/js/libs/jquery-1.5.min.js"></script>
<script src="/js/tablesorter/jquery.tablesorter.min.js"></script>
<script src="/js/picnet.table.filter.min.js"></script>
<link rel="stylesheet" href="/js/tablesorter/style.css">
<script>
$(document).ready(function() { 

 	$(".tablesorter").tablesorter({widthFixed: true, widgets: ['zebra']}); 
	 
	
	$("table").bind("sortStart",function() { 
			$("#inprogress").show(); 
	}).bind("sortEnd",function() { 
			$("#inprogress").hide(); 
	}); 	
	
	$('.tablesorter').tableFilter();
	
	
}); 
</script>
</head>
<body>
<div style="display:block; position:fixed; bottom:0; background-color:#FFC;">
<script type="text/javascript"><!--
google_ad_client = "ca-pub-6358741859029637";
/* bootm */
google_ad_slot = "3423529178";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</div>

{#
/*
            [id] => 9006
            [date] => 2012-02-27 11:29:28
            [type_id] => 1
            [rooms] => 0
            [adres] => ааЏа 17/   16
            [floor] => 5/5
            [square] => 25
            [balcon] => -
            [tel] => -
            [door] => -
            [firm] => абаОаКбб-аЁity
            [firm_tel] => 390400, 395794, 536313
            [price] => 870
            [comment] => 2 аВ 4 аВ баОб баОбб. аЁаОбаЕаД 1 баЕаЛаОаВаЕаК
            [object] => 
            [sotki] => 
            [type_house] => 
            [otop] => 
            [elect] => 
            [vo] => 
            [url_info] => 
            [unique] => f278db798b8207c455017bee50b6fe7d
            [actual] => 1

*/
#}
<div id="inprogress">Секундочку...</div>
<table id="myTable" class="items tablesorter" style="width:100%"> 
<thead> 
<th filter-type='ddl'>Дата</th>
<th filter-type='ddl'>Адрес</th>
<th>Этаж</th>
<th>Площадь</th>
<th>Балкон</th>
<th>Тел. точка</th>
<th>Ж/Д</th>
<th>Контакты</th>
<th>Цена</th>
</tr>
</thead> 
<tbody> 
{% for item in items %}
<tr>
<td><small style="color:#999; font-size:9px;">{{ item.date|date("d.m.Y") }}</small></td>
<td align="center">
{{ item.adres }}
</td> 
<td>{{ item.floor }}</td>
<td>{{ item.square }}</td>
<td>{{ item.balcon }}</td>
<td>{{ item.tel }}</td>
<td>{{ item.door }}</td>
<td>{{ item.firm }}<br />{{ item.firm_tel }}<br>
{# <small>{{ item.comment|replace({',': ', ', '.': ". "}) }}</small> #}
</td>
<td>{{ item.price }}</td>
</tr>
{% endfor %}
</tbody>
</table>
<!-- Яндекс.Директ -->
<script type="text/javascript">
yandex_partner_id = 84574;
yandex_site_bg_color = 'FFFFFF';
yandex_stat_id = 2;
yandex_site_charset = 'utf-8';
yandex_ad_format = 'direct';
yandex_font_size = 0.9;
yandex_direct_type = 'auto';
yandex_direct_border_type = 'block';
yandex_direct_title_font_size = 1;
yandex_direct_header_bg_color = 'FFFFFF';
yandex_direct_border_color = 'FBE5C0';
yandex_direct_title_color = 'E44D26';
yandex_direct_url_color = '666666';
yandex_direct_text_color = '000000';
yandex_direct_hover_color = '000000';
yandex_direct_favicon = true;
document.write('<sc'+'ript type="text/javascript" src="http://an.yandex.ru/system/context.js"></sc'+'ript>');
</script>
</body></html>