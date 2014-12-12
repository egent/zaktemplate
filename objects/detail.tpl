{% extends "template.tpl" %}

{% block title %}{{ item.header|lower }} {% endblock %}
{% block header %}{% endblock %}

{% block key %}бесплатные,объявления,набережные челны,недвижимость,продажа,обмен,аренда{% endblock %}
{% block desc %}{{ item.text }}{% endblock %}

{% set cat = {'sale':'Продажа недвижимости', 'rent':'Аренда недвижимости', 'demand':'Спрос', 'change': 'Обмен'} %}

{% block body %}
<table width="730" class="objects">
<tr><td class="caption">
<small><b>#{{ item.id }}</b></small>  Категория / {{ cat[item.category] }} /
<small style="float:right">{{ item.created|date("d.m.Y") }}</small>
</td>
</tr>
<tr>
<td>
  <div class="header"><h3>{{ item.header }}</h3></div>
  <div class="text">{% autoescape false %}{{ item.text|replace({'\n':'<br>'}) }}{% endautoescape %}</div><br>
  <em>Адрес:</em> <strong>{{ item.street }}{% if item.dom %}, {{ item.dom }}{% endif %}</strong><br>  
  <em>Комнат:</em> <strong>{{ item.rooms }}</strong><br>
  <em>Этаж/Этажность:</em> <strong>{{ item.e }}/{{ item.ee }}</strong><br><br>

  <em>Общая площадь:</em> <strong>{{ item.total }} м<sup>2</sup></strong><br>
  <em>Жилая площадь:</em> <strong>{{ item.living }} м<sup>2</sup></strong><br>
  <em>Кухня:</em> <strong>{{ item.kitchen }} м<sup>2</sup></strong><br>
  <hr>
  <div class="contacts">
  <em>Контактное лицо:</em> <strong>{{ item.name }}, {{ item.tel }}</strong><br>
  </div>
  <div class="price" style="float:right"><strong>Цена: {{ item.price == 0 ? 'договорная' : item.price ~ ' руб.' }}</strong></div>
</td>
</tr>
<tr>
<td>
{% for foto in gallery %}
<img src="{{ foto }}" title="Фото {{ loop.index }} : {{ item.header }}" alt="Фото {{ loop.index }}" hspace="10" width="250">
{% endfor %}
</td>
</tr>
</table>
{% endblock %}
{% block footer_text %}Объявления о недвижимости в Набережных Челнах: продать, купить, снять, сдать.{% endblock %}