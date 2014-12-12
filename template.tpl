<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./favicon.ico">

    <title>{% block title %}Мир недвижимости Набережные Челны. Недвижимость в Набережных Челнах. Квартиры в Набережных Челнах.{% endblock %}</title>
    
    <meta name="description" content="{% block desc %}Мир недвижимости Набережные Челны: вторичное жилье, квартиры, малосемееки, дома, котеджи, дачи в городе Набережные Челны. Весь мир недвижимости. Из рук в руки Набережные Челны.{% endblock %}">
    <meta name="keywords" content="{% block key %}мир, недвижимости, набережные, челны, недвижимость, вторичное, жилье, продажа, покупка, квартиры, комнаты, дома, дачи, гаражи{% endblock %}">
    <meta name="verify-admitad" content="1b0e7913ce" />
    <meta name='yandex-verification' content='5f0c8e634ecef34b' />    

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    
    <!-- Zakamie theme -->
    <link rel="stylesheet" href="/css/template.css">
    
  </head>

  <body>

    <div class="container">
      <div class="header">
        <nav>
          <ul class="nav nav-pills pull-right">
      	  {% block menu %}
          {#<li{% if(it == 1) %} class="active"{% endif %}><a href="/">Главная</a></li>#}
            <li role="presentation" class="dropdown" {% if(it > 8) %} class="active"{% endif %}>
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
              Квартиры <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="/flats/malo/">малосемейки</a></li>  
                <li><a href="/flats/one/">однокомнатные</a></li>
                <li><a href="/flats/two/">двухкомнатные</a></li>
                <li><a href="/flats/three/">трехкомнатные</a></li>
                <li><a href="/flats/four/">четырехкомнатные</a></li>                    
                <li><a href="/flats/more/">многокомнатные</a></li>    
            </ul>
            </li>        
            <li{% if(it == 3) %} class="active"{% endif %}><a href="/doma/">Дома</a></li>
            <li{% if(it == "d") %} class="active"{% endif %}><a href="/dachi/">Дачи</a></li> 
            <li{% if(it == "l") %} class="active"{% endif %}><a href="/lands/">Участки</a></li>             
            <li{% if(it == "g") %} class="active"{% endif %}><a href="/garage/">Гаражи</a></li>                     
            <li{% if(it == 4) %} class="active"{% endif %}><a href="/comm/" title="Коммерческая недвижимость">Коммерческая</a></li>
            <li class="green{% if(it == 5) %} active{% endif %}"><a href="/objects/">Объявления</a></li>
            {# <li class="green{% if(it == 6) %} active{% endif %}"><a href="/add/"><strong>+ добавить</strong></a></li> #}
            <li{% if(it == "fo") %} class="active"{% endif %}><a href="/forum/">Форум</a></li>
            <li><a href="/agency/">Агентства</a></li>
	      {% endblock %}
	      </ul>
        </nav>
        <h3 class="text-muted">Z</h3>
      </div>

      <div class="jumbotron">
        <h2>{% block header %}Добро пожаловать в мир недвижимости города Набережные Челны{% endblock %}</h2>
        <p class="lead"></p>
        <p><a class="btn btn-lg btn-success" href="/add/" role="button">Разместить объявление</a></p>
      </div>

     
      <div class="row marketing">
        {% block message %}{% endblock %}
        {% block body %}{% endblock %}
      </div>

      <footer class="footer">
        <p>&copy; Zakamie 2014</p>
        <p><small>{% block footer_text %}{% endblock %}</small></p>
      </footer>

    </div> <!-- /container -->

	<script src="http://yastatic.net/jquery/2.1.1/jquery.min.js"></script>
    
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->    

    {# <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> #}
  </body>
</html>
