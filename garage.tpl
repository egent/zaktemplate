{% extends "template.tpl" %}

{% block top_title %}Гаражи в Набережных Челнах
<br /><small><a href="/">недвижимость в Набережных Челнах</a></small>
{% endblock %}
{% block title %}Гаражи. боксы в Набережных Челнах.{% endblock %}
{% block header %}Продажа недвижимости в Набережных Челнах{% endblock %}
{% block side %}{% endblock %}
{% block content_width %}style="width:100%"{% endblock %}
{% block body %}
<table align="right"><tr>
  <td width="200" align="left">
  <a href="#" id="cleanfilters" onClick="return false;">Убрать фильтры поиска</a>
  </td>
  <td width="120">
  <div style="width:130px; overflow:hidden;">
  <a href="https://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-lang="ru">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
  </div>
  </td>
  <td width="120">
  <div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id; 
    js.src = "//connect.facebook.net/ru_RU/all.js#xfbml=1&appId=186670831361604";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>
  
  <div class="fb-like" data-href="<?=$thisurl?>" data-send="false" data-layout="button_count" data-width="135" data-show-faces="true" data-font="tahoma"></div>
  </td>
  <td width="120">
  <script type="text/javascript" src="http://vk.com/js/api/share.js?11" charset="windows-1251"></script>
  <script type="text/javascript"><!--
  document.write(VK.Share.button(false,{type: "round", text: "Сохранить"}));
  --></script>
  </td>
</tr></table><br class="clear">
<small>всего {{ total }} объявлений</small><br>
<div id="inprogress">Секундочку...</div>
<table id="myTable" class="items tablesorter" style="width:100%"> 
<thead> 
<tr>
<th filter-type='ddl'>Дата</th>
<th filter-type='ddl'>Адрес</th>
<th>Площадь</th>
<th>Отопл.</th>
<th>Электр.</th>
<th>Описание</th>
<th>Контакты</th>
<th>Цена</th>
</tr>
</thead>
<tbody>
{% for item in items %}
<tr>
<td>{{ item.date|date("d.m.Y") }}</td>
{# <a title="{{ item.comment|replace({',': ', ', '.': ". "}) }}" id="tooltiped">описание</a> #}
<td>
{{ item.adres|replace({'"': '', ',': ', ', '.': '. '}) }}
</td> 
<td>{{ item.square }}</td>
<td>{{ item.otop }}</td>
<td>{{ item.elect }}</td>
<td>{{ item.comment }}</td>
<td>
{{ item.firm }}<br />
{{ item.firm_tel|replace({',':' ' , '.':" " , ';':" " , '=':" "}) }}<br />
</td>
<td>
<strong>{{ item.price|replace({'торг':' торг'}) }}</strong>
</td>
</tr>
{% endfor %}
</tbody>
</table>
{# <div class="pagenator">
{% autoescape false %}
{{ pager }}
{% endautoescape %}
</div>#}
<div id="left_banner"></div>
{% endblock %}
{% block footer_text %}Недвижимость в Набережных Челнах. Гаражи.{% endblock %}