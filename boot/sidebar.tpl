{% block sidebar %}
<p> <a class="btn btn-block btn-warning btn-large" href="/boot/add/">Разместить объявление</a> </p>
<ul class="nav nav-tabs nav-stacked" id="navbar">
  <li{% if category=='flat'%} class="active"{% endif %}><a href="/boot/objects/flat/">Квартиры</a></li>
  <li{% if category=='room'%} class="active"{% endif %}><a href="/boot/objects/room/">Комнаты (малосемейки)</a></li>
  <li{% if category=='house'%} class="active"{% endif %}><a href="/boot/objects/house/">Дома, дачи, коттеджи</a></li>
  <li{% if category=='lands'%} class="active"{% endif %}><a href="/boot/objects/lands/">Земельные участки</a></li>
  <li{% if category=='garage'%} class="active"{% endif %}><a href="/boot/objects/garage/">Гаражи и машиноместа</a></li>
  <li{% if category=='com'%} class="active"{% endif %}><a href="/boot/objects/com/">Коммерческая недвижимость</a></li>
</ul>

{#<form method="get">
  <fieldset>
    <legend>Поиск квартир</legend>
    <label>Комант в квартире</label>
    <label class="checkbox inline">
      <input type="checkbox" name="rooms[]" value="1">
      1 </label>
    <label class="checkbox inline">
      <input type="checkbox" name="rooms[]" value="2">
      2 </label>
    <label class="checkbox inline">
      <input type="checkbox" name="rooms[]" value="3">
      3 </label>
    <label class="checkbox inline">
      <input type="checkbox" name="rooms[]" value="4">
      4 </label>
    <label class="checkbox inline">
      <input type="checkbox" name="rooms[]" value="5">
      более </label>
    <br>
    <br>
    <label> Цена от:
      <input type="text" name="sprice1" class="span3">
      до
      <input type="text" name="sprice2" class="span3">
      р. </label>
    <button type="submit" class="btn btn-warning pull-right">Найти</button>
  </fieldset>
</form>#}
{% if infos %}
<div class="well" id="news">
  <h4>Новости</h4>
  {% for item in infos %}
  <p><span class="muted">{{ item.created|date("d.m.Y") }}</span> <a href="/info/text_{{ item.id }}.html">{{ item.title }}</a></p>
  {% endfor %}
  <p align="right"> <small> <a href="#">все новости <i class="icon-list-alt"></i></a> </small> </p>
</div>
{% endif %}
{% endblock sidebar %}