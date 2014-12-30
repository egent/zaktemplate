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
    <link rel="stylesheet" href="/assets/css/template.css">

  </head>
  <body>
    <div class="container">             
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="/"><i class="glyphicon glyphicon-th-large"></i></a>
            </div>        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                  {% block menu %}
                  {#<li{% if(it == 1) %} class="active"{% endif %}><a href="/">Главная</a></li>#}
                    <li role="presentation" class="dropdown {% if(it > 8) %} active{% endif %}">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
                      Квартиры <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li{% if(it == 10) %} class="active"{% endif %}><a href="/flats/malo/">малосемейки</a></li>  
                        <li{% if(it == 11) %} class="active"{% endif %}><a href="/flats/one/">однокомнатные</a></li>
                        <li{% if(it == 12) %} class="active"{% endif %}><a href="/flats/two/">двухкомнатные</a></li>
                        <li{% if(it == 13) %} class="active"{% endif %}><a href="/flats/three/">трехкомнатные</a></li>
                        <li{% if(it == 14) %} class="active"{% endif %}><a href="/flats/four/">четырехкомнатные</a></li>                    
                        <li{% if(it == 16) %} class="active"{% endif %}><a href="/flats/more/">многокомнатные</a></li>    
                    </ul>
                    </li>        
                    <li{% if(it == 3) %} class="active"{% endif %}><a href="/doma/">Дома</a></li>
                    <li{% if(it == "d") %} class="active"{% endif %}><a href="/dachi/">Дачи</a></li> 
                    <li{% if(it == "l") %} class="active"{% endif %}><a href="/lands/">Участки</a></li>             
                    <li{% if(it == "g") %} class="active"{% endif %}><a href="/garage/">Гаражи</a></li>                     
                    <li{% if(it == 4) %} class="active"{% endif %}><a href="/comm/" title="Коммерческая недвижимость">Коммерческая</a></li>
                    {# <li class="green{% if(it == 5) %} active{% endif %}"><a href="/objects/">Объявления</a></li>
                     <li class="green{% if(it == 6) %} active{% endif %}"><a href="/add/"><strong>+ добавить</strong></a></li> #}
                    <li{% if(it == "ag") %} class="active"{% endif %}><a href="/agency/">Агентства</a></li>
                  {% endblock %}
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
   
      <div class="row" style="min-height:300px;">
        {% block message %}{% endblock %}
        <h1 class="text-center">{% block header %}Добро пожаловать в мир недвижимости города Набережные Челны{% endblock %}</h1>
        <div id="body" style="display:none">
        {% block body %}{% endblock %}
        </div>
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
    
    
    
    <!-- bootstrap widget theme -->
    <link rel="stylesheet" href="/assets/js/tablesorter/css/theme.bootstrap.css">
    <!-- tablesorter plugin -->
    <script src="/assets/js/tablesorter/js/jquery.tablesorter.js"></script>
    <!-- tablesorter widget file - loaded after the plugin -->
    <script src="/assets/js/tablesorter/js/jquery.tablesorter.widgets.js"></script>  
    
	<!-- Tablesorter: optional -->
	<link rel="stylesheet" href="/assets/js/tablesorter/addons/pager/jquery.tablesorter.pager.css">
	<script src="/assets/js/tablesorter/addons/pager/jquery.tablesorter.pager.js"></script>      
    

	<script src="/assets/js/base.js"></script>

  </body>
</html>
