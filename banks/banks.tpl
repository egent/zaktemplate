{% extends "template.tpl" %}

{% block top_title %}{% endblock %}
{% block title %}Банки Набережных Челнов{% endblock %}
{% block header %}Банки Челнов{% endblock %}
{% block top_banners %} 
{% endblock %}
{% block reklama %} 
{% endblock %}

{% block menu %}
<ul class="topmenu">
<li><a href="/">Главная</a></li>
</ul>
{% endblock %}

{% block body %}
<div id="left_banner" style="margin-right:10px">
</div>
<div class="banks">
{% for item in banks %}
<div class="bank">
<a href="/banks/{{ item.bank_aname }}.html"><img src="/images/b/{{ item.bank_logo }}" class="bank_logo" title="{{ item.bank_name }} Набережные Челны"></a><br>
<span class="bank_name"><a href="/banks/{{ item.bank_aname }}.html">{{ item.bank_name }}</a></span>
</div>
{% endfor %}
</div>

{% endblock %}
{% block footer_text %}Банки в Набережных Челнах. Кредиты наличными в Челнах.{% endblock %}