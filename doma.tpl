{% extends "template.tpl" %}

{% block top_title %}Дома. Коттеджи. Дачи.
{% endblock %}
{% block title %}Продажа домов, коттеджей в Набережных Челнах.{% endblock %}
{% block header %}Дома, коттеджи.{% endblock %}
{% block side %}{% endblock %}
{% block content_width %}style="width:100%"{% endblock %}
{% block body %}

<p>всего {{ total }} объявлений</p>
<table class="table table-bordered table-striped table-condensed">
<thead> 
<tr>
<th>Дата</th>
<th>Населенный пункт</th>
<th>Сотоки</th>
<th>Этаж</th>
<th>Пл.</th>
<th>Отоп. Элек.</th>
<th>ВО+</th>
<th>Контакты</th>
<th>Цена</th>
</tr>
</thead>
<tbody>
{% for item in items %}
<tr>
<td>{{ item.date|date("d.m.Y") }}</td>
<td>
{{ item.object }} {{ item.adres|replace({',': ', ', '.': '. '}) }}
</td> 
<td>{{ item.sotki }}</td>
<td>{{ item.floor }}</td>
<td>{{ item.square }}</td>
<td>{{ item.otop != '+' ? '-' : '+' }} / {{ item.elect != '+' ? '-' : '+'}}</td>
<td>{{ item.vo != '+' ? '-' : '+' }}</td>
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
{% block footer_text %}Продажа домов, коттеджей, дачь, гаражей в Наб Челнах. Земля. Продам земельные участки.{% endblock %}