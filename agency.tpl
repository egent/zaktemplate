{% extends "template.tpl" %}

{% block top_title %}Агентства недвижимости
{% endblock %}

{% block title %}Агентства недвижимости города Набережные Челны{% endblock %}
{% block header %}Агентства недвижимости{% endblock %}

{% block desc %}Агентства недвижимости. Каталог агентств недвижимости города Набережные Челны{% endblock %}
{% block key %}агентства, недвижимость, недвижимости, продажа, недвижимости{% endblock %}

{% block body %}
<div align="center"><br />
<script type="text/javascript">(function(){ var id = Math.floor(Math.random() * 999); document.write('<div id="x'+id+'"></div>'); var wsc=document.createElement('script'); wsc.type='text/javascript'; wsc.src='http://cityads.ru/zrxMTE2MTY4MQ==/async/1/dv/' + id; wsc.async=true; var ssc = document.getElementsByTagName('script')[0]; ssc.parentNode.insertBefore(wsc, ssc); })();</script><br /><br />
</div>
<small>всего {{ total }} агентств недвижимости города Набережные Челны</small><br>
<table class="items" cellpadding="4" cellspacing="4" width="560">
<tr class="header">
<td>Название</td>
<td>Телефон</td>
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
<br>
{% endblock %}

{% block footer_text %}Агентства недвижимости в Набережных Челнах{% endblock %}
