{% extends "template.tpl" %}

{% block top_title %}Двухкомнатные квартиры в Набережных Челнах
<br /><small><a href="/">Мир недвижимости Набережные Челны</a></small>
{% endblock %}
{% block title %}Двухкомнатные квартиры в Набережных Челнах продажа{% endblock %}
{% block header %}Двухкомнатные квартиры{% endblock %}

{% block submenu %}
{% include 'rooms_menu.tpl' %}
{% endblock %}

{% block body %}
{% include 'items.tpl' %}
{% endblock %}

{% block footer_text %}Продажа двухкомнатных квартир в Наб Челнах. {% endblock %}