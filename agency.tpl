{% extends "template.tpl" %}

{% block top_title %}Агентства недвижимости{% endblock %}

{% block title %}Агентства недвижимости города Набережные Челны{% endblock %}
{% block header %}Агентства недвижимости{% endblock %}

{% block desc %}Агентства недвижимости. Каталог агентств недвижимости города Набережные Челны{% endblock %}
{% block key %}агентства, недвижимость, недвижимости, продажа, недвижимости{% endblock %}

{% block body %}
<table class="table table-condensed table-hover">
<tr>
<th>Название</th>
<th>Телефон</th>
</tr>
{% for item in items %}
<tr class="{{ loop.index is even ? 'even' : 'odd' }}">
<td><a href="/agency/{{ item.alias }}.html">{{ item.firm }}</a></td>
<td>{{ item.tel }}</td>
</tr>
{% endfor %}
</table>
<div class="pagenator">
{% autoescape false %}
{{ pager }}
{% endautoescape %}
</div>
{% endblock %}
{% block footer_text %}Агентства недвижимости в Набережных Челнах{% endblock %}