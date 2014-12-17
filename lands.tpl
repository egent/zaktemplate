{% extends "template.tpl" %}

{% block top_title %}{% endblock %}
{% block title %}Земельные участки в Набережных Челнах{% endblock %}
{% block header %}Земельные участки{% endblock %}
{% block side %}{% endblock %}
{% block content_width %}style="width:100%"{% endblock %}
{% block body %}
<p>всего {{ total }} объявлений</p>
<table class="table table-bordered table-striped table-condensed">
<thead> 
<tr>
<th>Адрес</th>
<th>Сотоки</th>
<th>Вода</th>
<th>Описание</th>
<th>Контакты</th>
<th>Цена</th>
</tr>
</thead>
<tbody>
{% for item in items %}
<tr>
<td>
{{ item.adres|replace({',': ', ', '.': '. '}) }}
</td> 
<td>{{ item.sotki }}</td>
<td>{{ item.vo }}</td>
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
{% block footer_text %}Земля, участки в Набережных Челнах. Продажа.{% endblock %}