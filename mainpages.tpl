{% extends "template.tpl" %}

{% block title %}Квартиры в Набережных Челнах - страница {{ page }}, {{ total }} объявлений.{% endblock %}
{% block desc %}Недвижимость Набережные Челны: двухкомнатные квартиры квартиры, малосемееки, дома, котеджи, дачи.{% endblock %}
{% block top_title %}<a href="/">мир недвижимости набережные челны</a><br><small>продажа квартир в Набережных Челнах, {{ page }} страница</small>{% endblock %}
{% block header %}продажа квартир в Набережных Челнах{% endblock %}

{% block body %}
{% include 'items_rooms.tpl' %}
{% endblock %}
