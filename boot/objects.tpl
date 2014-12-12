{% extends "boot/main.tpl" %}
{% block title %}{{ title }}{% endblock %}
{% block header %}{{ header }}{% endblock %}
{% block body %}
<table class="table table-bordered2 table-hover">
  <thead>
    <tr>
      <td colspan="4"> {% if category %}
        <p><a href="/boot/objects/{{ category }}/sale/" class="btn btn-info{% if type=='sale'%} active{% endif %}">Продажа</a> <a href="/boot/objects/{{ category }}/rent/" class="btn btn-info{% if type=='rent'%} active{% endif %}">Аренда</a> <a href="/boot/objects/{{ category }}/demand/" title="куплю, сниму" class="btn btn-info tp{% if type=='demand'%} active{% endif %}">Спрос</a> <a href="/boot/objects/{{ category }}/change/" class="btn btn-info{% if type=='change'%} active{% endif %}">Обмен</a></p>
        {% endif %}
        
        
        {% if category == 'flat' and type %} <a href="?rooms=studio" class="btn btn-mini{% if rooms=="studio" %} active{% endif %}">Студии</a> <a href="?rooms=1" class="btn btn-mini{% if rooms==1 %} active{% endif %}">1-комнатные</a> <a href="?rooms=2" class="btn btn-mini{% if rooms==2 %} active{% endif %}">2-комнатные</a> <a href="?rooms=3" class="btn btn-mini{% if rooms==3 %} active{% endif %}">3-комнатные</a> <a href="?rooms=4" class="btn btn-mini{% if rooms==4 %} active{% endif %}">4-комнатные</a> <a href="?rooms=5" class="btn btn-mini{% if rooms==5 %} active{% endif %}">Многокомнатные</a> {% elseif category == 'house' and type %} <a href="?view=dom" class="btn btn-mini{% if view=="dom" %} active{% endif %}">Дома</a> <a href="?view=dacha" class="btn btn-mini{% if view=="dacha" %} active{% endif %}">Дачи</a> <a href="?view=cottage" class="btn btn-mini{% if view=="cottage" %} active{% endif %}">Коттеджи</a> <a href="?view=townhouse" class="btn btn-mini{% if view=="townhouse" %} active{% endif %}">Таунхаусы</a> {% else %} <small>найдено {{ total }} объявлений</small> {% endif %}
        {% if newobjects %}
        <div class="btn-group pull-right" data-toggle="buttons-radio"> <a href="/boot/order/p/" class="btn btn-mini{% if order_by=='price'%} active{% endif %}" title="упорядочить по цене">{% if order_by=='price'%} <i class="{% if order_type == 'DESC' %}icon-arrow-up{% else %}icon-arrow-down{% endif %}"></i>{% endif %}по цене</a> <a href="/boot/order/d/" class="btn btn-mini{% if order_by=='created'%} active{% endif %}" title="упорядочить по дате">{% if order_by=='created'%} <i class="{% if order_type == 'DESC' %}icon-arrow-up{% else %}icon-arrow-down{% endif %}"></i>{% endif %}по дате</a> </div>
        {% endif %} </td>
    </tr>
  </thead>
  <tbody>
  
  {% for item in newobjects %}
  <tr>
    <td width="140"> {% if item.price  %}
      <h4 class="muted">{{ item.price|number_format(0,',',' ') }}&nbsp;<small>руб.</small></h4>
      {% endif %} </td>
    <td style="text-align:center;" width="110"> {% if item.first_image %} <img class="img-polaroid" src="{{ item.first_image }}" width="80"> {% else %} <img class="img-polaroid" src="/design/boot/img/placeholder-100x100.gif" width="80"> {% endif %} </td>
    <td><p><a href="/boot/{{ item.category }}/{{ item.type }}/obj_{{ item.id }}.html">{{ item.header[:100] }}{% if item.header|length > 100 %}&hellip;{% endif %}</a></p>
      <p><small class="muted"> {{ item.type }} / {{ item.category }}<br />
        {{ item.street }}{% if item.dom %}, {{ item.dom }} {% endif %}
        {% if item.kompleks %} ({{ item.kompleks }}){% endif %}<br />
        дата подачи: {{ item.created|date("d.m.Y") }}<br />
        {% if item.rooms %} комнат: {{ item.rooms }} {% endif %}</small></p>
      <p>{% if item.private %}<i class="icon-user"></i>{% endif %} {{ item.name }}, {{ item.tel }}</p></td>
  </tr>
  {% endfor %}
    </tbody>
  
</table>
{% if not newobjects %}
<div class="alert alert-block">
  <h4>Объявления нет.</h4>
  <p>По вашему запросу в этом разделе объявления не найдены. Выберите другой раздел.</p>
</div>
{% endif %}
<div class="pagination pagination-centered pagination-large">
  <ul>
    {{ pager|raw }}
  </ul>
</div>
{% endblock %} 