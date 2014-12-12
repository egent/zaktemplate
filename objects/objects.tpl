{% extends "template.tpl" %}

{% block top_title %}Бесплатные объявления о недвижимости{% endblock %}
{% block title %}Бесплатные объявления о недвижимости в Набережных Челнах из рук в руки irr.ru авито{% endblock %}
{% block header %}Объявления{% endblock %}

{% block body %}
<table width="730" class="objects">
<tr><td colspan="3" class="caption"><small>всего {{ total }} объявлений</small></td></tr>
{% for item in objects %}

<tr>
<td class="foto" width="30" align="center">
<small><b>#{{ item.id }}</b></small>
</td>

<td>
<div class="header"><a href="/objects/obj_{{ item.id }}.html">{{ item.header }}</a></div>
{{ item.text }}</td>
<td width="120" class="price">
{{ item.price == 0 ? 'договорная' : item.price ~ ' руб.' }}</td>
{% endfor %}
<tr><td colspan="3">
<div class="pagenator">
{% autoescape false %}
{{ pager }}
{% endautoescape %}
</div>
</td></tr>
</table>
<div id="left_banner"></div>
{% endblock %}
{% block footer_text %}Объявления о недвижимости в Набережных Челнах: продать, купить, снять, сдать.{% endblock %}