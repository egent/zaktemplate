{% extends "template.tpl" %}

{% block top_title %}Четырехкомнатные квартиры в Набережных Челнах
<br /><small><a href="/">Мир недвижимости Набережные Челны</a></small>
{% endblock %}
{% block title %}Четырехкомнатные квартиры в Набережных Челнах{% endblock %}
{% block header %}Продажа четырехкомнатных квартир в Набережных Челнах{% endblock %}

{% block submenu %}
{% include 'rooms_menu.tpl' %}
{% endblock %}

{% block body %}
{% include 'items.tpl' %}
{% endblock %}

{% block footer_text %}Продажа четырехкомнатных квартир в Наб Челнах. {% endblock %}