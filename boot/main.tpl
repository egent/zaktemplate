<!DOCTYPE html>
<html>
<head>
<title>{% block title %}Boot - Недвижимость в Набережных Челнах{% endblock %}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
{% block style %}
<link rel="stylesheet" href="/design/boot/css/bootstrap.css">
<link rel="stylesheet" href="/design/boot/css/style.css">
{% endblock %}
    {% block script %}
<script src="/design/boot/js/jquery.min.js"></script>
<script src="/design/boot/js/bootstrap.min.js"></script>
<script>$(document).ready(function(){$('.tp').tooltip()})</script>
{% endblock %}
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="#">Z</a>
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li> <a href="/boot/">Главная</a> </li>
          <li class="dropdown {% if category %} active{% endif %}">
          <a data-toggle="dropdown" class="dropdown-toggle" href="#">Недвижимость <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li{% if category=='flat'%} class="active"{% endif %}><a href="/flat/"><i class="icon-calendar"></i> Квартиры</a>
            </li>
            <li{% if category=='room'%} class="active"{% endif %}><a href="/room/"><i class="icon-th-large"></i> Комнаты</a>
            </li>
            <li{% if category=='house'%} class="active"{% endif %}><a href="/house/"><i class="icon-home"></i> Дома, дачи, коттеджи</a>
            </li>
            <li{% if category=='lands'%} class="active"{% endif %}><a href="/lands/"><i class="icon-picture"></i> Земельные участки</a>
            </li>
            <li{% if category=='garage'%} class="active"{% endif %}><a href="/garage/"><i class="icon-wrench"></i> Гаражи и машиноместа</a>
            </li>
            <li{% if category=='com'%} class="active"{% endif %}><a href="/com/"><i class="icon-briefcase"></i> Коммерческая недвижимость</a>
            </li>
            <li class="divider"></li>
            <li> <a href="#"><em>Агентства недвижимости</em></a> </li>
            <li> <a href="#"><em>Добавить объявление</em></a> </li>
          </ul>
          </li>
          <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#">Финансы <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li> <a href="#">Банки</a> </li>
              <li> <a href="#">Кредиты</a> </li>
            </ul>
          </li>
          <li> <a href="#">О сайте</a> </li>
          <li> <a href="#">Новости</a> </li>
        </ul>
      </div>
      <div class="btn-group">
        <ul class="dropdown-menu">
          <li> <a href="#">First Link</a> </li>
          <li> <a href="#">Second Link</a> </li>
          <li> <a href="#">Third Link</a> </li>
        </ul>
      </div>
      <div style="" class="btn-group pull-right open"></div>
    </div>
  </div>
</div>

<div class="container" style="margin-top: 60px;">
<div class="row">
  <div class="span12">
    {% block breadcrumb %}
    {{ BC|raw }}
    {% endblock %}
  </div>
</div>
<div class="row">
<div class="span12 text-center"></div>
</div>
</div>
</div>

<div class="container" style="margin: 0 auto; max-width: 1000px;">
  <div class="row">
    <div class="row-fluid">
      <div class="span9"> 

    <div class="page-header">
      <h1 class="text-center">{% block header %}Мир Недвижимости Набережные Челны{% endblock %}</h1>
    </div>
      
{% block ads_top %}
  {% include 'boot/ads_top.tpl' %}  
  {% endblock %}       
      
      
      {% block body %}
        {% endblock %} </div>
      <div class="span3"> {% block sidebar %}
        {% include 'boot/sidebar.tpl' %}  
        {% endblock %} </div>
      <div class="span12 text-center"> {% block ads_bottom %}
        {% include 'boot/ads_botom.tpl' %}  
        {% endblock %} </div>
    </div>
    <div class="row-fluid">
      <div class="span9">
        <ul class="nav nav-pills">
          <li class="disabled"> <a href="#">Главная</a> </li>
          <li> <a href="#">Контакты</a> </li>
          <li> <a href="#">Карта сайта</a> </li>
        </ul>
      </div>
      <div class="span3"> </div>
    </div>
  </div>
</div>
<script>
		$('.tip').tooltip();
		$('.ppvr').popover();
</script>
</body>
</html>