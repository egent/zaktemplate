{% extends "template.tpl" %}

{% block top_title %}Гаражи в Набережных Челнах
<br /><small><a href="/">недвижимость в Набережных Челнах</a></small>
{% endblock %}
{% block title %}Гаражи. боксы в Набережных Челнах.{% endblock %}
{% block header %}Продажа недвижимости в Набережных Челнах{% endblock %}
{% block side %}{% endblock %}
{% block content_width %}style="width:100%"{% endblock %}
{% block body %}
<p>всего {{ total }} объявлений</p>
<table class="table table-bordered table-striped table-condensed">
<thead> 
<tr>
<th>Адрес</th>
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
{#<td>{{ item.date|date("d.m.Y") }}</td>
 <a title="{{ item.comment|replace({',': ', ', '.': ". "}) }}" id="tooltiped">описание</a> #}
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