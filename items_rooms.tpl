<small>всего {{ total }} объявлений</small><br>
<table class="items" cellpadding="4" cellspacing="4" width="560">
<tr><td colspan="3">
<form action="" name="search" method="post">
<input type="text" name="sword" width="40" value="{{ sword }}" style="width:144px;" > <input type="submit" value="Поиск" name="sbutton"> 
</form>
</td>
<td colspan="8">
<script type="text/javascript"><!--
google_ad_client = "ca-pub-6358741859029637";
/* zakamie_search */
google_ad_slot = "7665808879";
google_ad_width = 468;
google_ad_height = 15;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</td></tr>
<tr class="header">
<td><a href="/order/a/">Адрес</a></td>
<td><a href="/order/r/">Комнат</a></td>
<td><a href="/order/f/">Этаж</a></td>
<td>Площадь</td>
<td>Балкон</td>
<td>Тел.<br />точка</td>
<td>Ж/Д</td>
<td><a href="/order/ft/">Контакты</a></td>
<td><a href="/order/p/">Цена</a></td>
</tr>
{% for item in items %}
{% if ( loop.index == 11 ) %}
<tr><td colspan="9" align="center">
<!-- Яндекс.Директ -->
<script type="text/javascript">
yandex_partner_id = 84574;
yandex_site_bg_color = 'FFFFFF';
yandex_stat_id = 4;
yandex_site_charset = 'utf-8';
yandex_ad_format = 'direct';
yandex_font_size = 0.8;
yandex_direct_type = 'flat';
yandex_direct_limit = 1;
yandex_direct_title_font_size = 1;
yandex_direct_title_color = 'E44D26';
yandex_direct_url_color = '999999';
yandex_direct_all_color = '999999';
yandex_direct_text_color = '999999';
yandex_direct_hover_color = '666666';
yandex_direct_favicon = false;
document.write('<sc'+'ript type="text/javascript" src="http://an.yandex.ru/system/context.js"></sc'+'ript>');
</script>
</td></tr>
{% endif %}
<tr class="{{ loop.index is even ? 'even' : 'odd' }}">
<td align="center">
<small style="color:#999; font-size:9px;">{{ item.date|date("d.m.Y") }}</small><br />
{{ item.adres }}<br />
<a title="{{ item.comment|replace({',': ', ', '.': ". "}) }}" id="tooltiped">описание</a>
<div class="comment" style="display:none">{{ item.comment|replace({',': ', ', '.': ". "}) }}</div>
</td> 
<td>{{ item.rooms == 0 ? 'мало- семейка' : item.rooms }}</td>
<td>{{ item.floor }}</td>
<td>{{ item.square }}</td>
<td>{{ item.balcon }}</td>
<td>{{ item.tel }}</td>
<td>{{ item.door }}</td>
<td>{{ item.firm }}<br />{{ item.firm_tel }}</td>
<td>{{ item.price }}</td>
</tr>
{% endfor %}
</table>
<div class="pagenator">
{% autoescape false %}
{{ pager }}
{% endautoescape %}
</div>