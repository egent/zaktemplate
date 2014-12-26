{% extends "template.tpl" %}

{% block top_title %}Трехкомнатные квартиры в Набережных Челнах
<br /><small><a href="/">Мир недвижимости Набережные Челны</a></small>
{% endblock %}
{% block title %}Трехкомнатные квартиры в Набережных Челнах{% endblock %}
{% block header %}Трехкомнатные квартиры{% endblock %}

{% block submenu %}
{% include 'rooms_menu.tpl' %}
{% endblock %}

{% block body %}
{% include 'items.tpl' %}
{% endblock %}

{% block footer_text %}Продажа трехкомнатных квартир. {% endblock %}