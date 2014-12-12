{% extends "template.tpl" %}

{% block top_title %}Однокомнатные — продажа однокомнатных квартир в Набережных Челнах
<br /><small><a href="/">Мир недвижимости Набережные Челны</a></small>
{% endblock %}
{% block title %}Однокомнатные — квартиры в Набережных Челнах{% endblock %}
{% block header %}Однокомнатные квартиры в Набережных Челнах{% endblock %}

{% block submenu %}
{% include 'rooms_menu.tpl' %}
{% endblock %}

{% block body %}
{% include 'items.tpl' %}
{% endblock %}

{% block footer_text %}Однокомнатные квартиры в Набережных Челнах{% endblock %}