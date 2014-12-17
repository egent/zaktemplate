{% extends "template.tpl" %}

{% block top_title %}Дачи{% endblock %}
{% block title %}Дачи в Набережных Челнах{% endblock %}
{% block header %}Дачи в Набережных Челнах{% endblock %}
{% block side %}{% endblock %}
{% block content_width %}style="width:100%"{% endblock %} 
{% block body %}

<p>всего {{ total }} объявлений</p>
<table class="table table-bordered table-striped table-condensed">
<thead> 
<tr>
<th filter-type='ddl'>Дата</th>
<th filter-type='ddl'>Садовое общество</th>
<th>Сотки</th>
<th>Дом</th>
<th>Эл.</th>
<th>Вода</th>
<th>Описание</th>
<th>Цена</th>
</tr>
</thead>
<tbody>
{% for item in items %}
<tr>
<td>{{ item.date|date("d.m.Y") }}</td>
{# <a title="{{ item.comment|replace({',': ', ', '.': ". "}) }}" id="tooltiped">описание</a> #}
<td>
{{ item.adres|replace({',': ', ', '.': '. '}) }}
</td> 
<td>{{ item.sotki }}</td>
<td>{{ item.square }}</td>
<td>{{ item.elect }}</td>
<td>{{ item.vo }}</td>

<td><small>{{ item.comment }}</small><br><br>
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
{% block footer_text %}Недвижимость. Продажа дач в Набережных Челнах.{% endblock %}