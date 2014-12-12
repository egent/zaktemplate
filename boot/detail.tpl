{% extends "boot/main.tpl" %}

{% block title %}{{ item.header }}{% endblock %}

{% block breadcrumb %}{% endblock %}

{% block sidebar %}
{% if gallery%}
<label>Фото:</label>
{% for foto in gallery %} <a href="{{ foto|replace({'-s':''}) }}"><img src="{{ foto }}" title="Фото {{ loop.index }} : {{ item.header }}" alt="Фото {{ loop.index }}" class="img-polaroid" width="100"></a> {% endfor %}
{% endif %}
{% endblock %}


{% block body %}
<h3 class="text-center">{{ item.header }}</h3>
<div class="well" style="overflow:hidden;"> <small><i class="icon-time"></i> Объявление размещено: {{ item.created|date("d.m.Y") }}</small> {% if item.price  %}
  <h4 class="muted"><small>Цена:</small> {{ item.price|number_format(0,',',' ') }}&nbsp;<small>руб.</small></h4>
  {% endif %}
  <hr>
  <div>
    <div class="span6"> <strong>Характеристики:</strong><br>
      комнат: {{ item.rooms }}<br>
      площадь: {{ item.total }}<br>
      площадь дома: {{ item.square }}<br>
      участок: {{ item.garden }} соток<br>
      тип: {{ item.view }}<br>
      тип: {{ item.house_type }}<br>
      материал: {{ item.dom_material }}<br>
      этаж: {{ item.e }}<br>
      этажность: {{ item.ee }}<br>
      вода: {{ item.vo }}<br>
      эл-во: {{ item.el }}<br>
      
    </div>
    <div class="span6">
      <strong>Контакты</strong><br>
      Имя: {{ item.name }}<br>
      Телефон: {{ item.tel }}<br>
      Адрес: {{ item.street }}, {{ item.dom }} {% if item.kompleks %} ({{ item.kompleks }}){% endif %}
    </div>
  </div>
  <div>
    <div class="span12">
      <hr>
      <strong>Описание:</strong><br>
      <p> {{ item.text|nl2br }} </p>
    </div>
  </div>
</div>
{% endblock %}