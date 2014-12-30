{% extends "template.tpl" %}

{% block message %}
{% endblock %}

{% block bc %}
{% endblock %}

{% block header %}Недвижимость в Набережных Челнах{% endblock %}
  	
{% block body %}
  <h3>Новые объявления</h3>
  <table class="objects" style="width:100%">
  {% for item in objects %}
    <tr><td class="item">
    <small style="color:#999; font-size:9px;">{{ item.created|date("d.m.Y") }}</small> | <small><b>#{{ item.id }}</b></small>
    <a href="/objects/obj_{{ item.id }}.html" class="green">{{ item.header }}</a><br>
    <div style="height:70px; overflow:hidden;">{% autoescape false %}{{ item.text|replace({'\n':'<br>'}) }}{% endautoescape %}</div>
    </td></tr>
  {% endfor %}
  </table>
{% endblock %}

{% block modules %}
    <table class="new_objects">
    {% for item in newobjects %}
    <tr><td width="20"><small>{{ item.created|date("d.m.y") }}</small> </td>
    <td><a href="/objects/obj_{{ item.id }}.html" style="color: #009900;"> {{ item.header|lower }}</a></td>
    </tr>
    {% endfor %}
    </table>
    
    <small>    
    <a href="/objects/" class="green right">Все объявления</a><br>
    <a href="/add/" class="green right">Добавить объявление</a>
    </small>
{{ parent() }}  
{% endblock %}

{% block bottom_banners %}
{% endblock %}
{% block right_direct%}
{% endblock %}