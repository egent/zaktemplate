<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="ru" class="no-js"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>{% block title %}Мир недвижимости Набережные Челны. Недвижимость в Набережных Челнах. Квартиры в Набережных Челнах.{% endblock %}</title>
<meta name="description" content="{% block desc %}Мир недвижимости Набережные Челны: вторичное жилье, квартиры, малосемееки, дома, котеджи, дачи в городе Набережные Челны. Весь мир недвижимости. Из рук в руки Набережные Челны.{% endblock %}">
<meta name="keywords" content="{% block key %}мир, недвижимости, набережные, челны, недвижимость, вторичное, жилье, продажа, покупка, квартиры, комнаты, дома, дачи, гаражи{% endblock %}">
<meta name="verify-admitad" content="1b0e7913ce" />
<meta name="author" content="zakamie">
<meta name='yandex-verification' content='5f0c8e634ecef34b' />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/favicon.ico">
<link rel="stylesheet" href="/css/style.css?v=2">
<link rel="stylesheet" href="/js/zForms/css/ZForms-screen.css"> 
<script src="/js/libs/jquery-1.5.min.js"></script>
<script src="/js/libs/modernizr-1.6.min.js"></script>
<script src="/js/jquery.tools.min.js"></script>        
<script src="/js/jquery.form.js"></script>      
<script src="/js/zForms/ZForms-jquery.js"></script>   

	<script type="text/javascript" src="/js/stickyscroll/jquery-contained-sticky-scroll.js"></script>
  <script type="text/javascript">
  jQuery(document).ready(function(){
    jQuery('#left_banner').containedStickyScroll({
				duration: 0,
        unstick: true,
        closeChar: '' 
    });
  });
  </script>
    
	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="/js/fancybox2/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="/js/fancybox2/source/jquery.fancybox.js"></script>
	<link rel="stylesheet" type="text/css" href="/js/fancybox2/source/jquery.fancybox.css" media="screen" />

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/js/fancybox2/source/helpers/jquery.fancybox-thumbs.css?v=2.0.3" />
	<script type="text/javascript" src="/js/fancybox2/source/helpers/jquery.fancybox-thumbs.js?v=2.0.3"></script>

	<script src="/js/tablesorter/jquery.tablesorter.min.js"></script>
  <script src="/js/picnet.table.filter.min.js"></script>
  <link rel="stylesheet" href="/js/tablesorter/style.css">

<script src="/js/script.js"></script>      
</head>
<body>
<div style="position:absolute; left:-2000px;">
<!-- Yandex.Metrika informer -->
<a href="http://metrika.yandex.ru/stat/?id=10565908&amp;from=informer"
target="_blank" rel="nofollow"><img src="//bs.yandex.ru/informer/10565908/3_0_4F4D46FF_2F2D26FF_1_pageviews"
style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" onClick="try{Ya.Metrika.informer({i:this,id:10565908,type:0,lang:'ru'});return false}catch(e){}"/></a>
<!-- /Yandex.Metrika informer -->

<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter10565908 = new Ya.Metrika({id:10565908, enableAll: true, webvisor:true});
        }
        catch(e) { }
    });
})(window, "yandex_metrika_callbacks");
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer></script>
<noscript><div><img src="//mc.yandex.ru/watch/10565908" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t25.4;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число посетителей за"+
" сегодня' "+
"border='0' width='0' height='0'><\/a>")
//--></script><!--/LiveInternet-->
</div>
	<div id="header-container">
		<header class="wrapper">        
			<h1 id="title">{% block top_title %}<a href="/">Мир недвижимости Набережные Челны</a><br><small>альтернативный поиск недвижимости</small>{% endblock %}</h1>			
			<nav>
      {% block menu %}
      <ul class="topmenu">
        {#<li{% if(it == 1) %} class="cur"{% endif %}><a href="/">Главная</a></li>#}
        
        <li{% if(it > 8) %} class="cur"{% endif %}><a href="/flats/">Квартиры</a>					
        {% if(it < 8)%}
        <ul class="sub">
        <li><a href="/flats/malo/">малосемейки<ins>0</ins></a></li>  
        <li><a href="/flats/one/">однокомнатные<ins>1</ins></a></li>
        <li><a href="/flats/two/">двухкомнатные<ins>2</ins></a></li>
        <li><a href="/flats/three/">трехкомнатные<ins>3</ins></a></li>
        <li><a href="/flats/four/">четырехкомнатные<ins>4</ins></a></li>                    
        {# <li><a href="/flats/five/">пятикомнатные<ins>5</ins></a></li> #}
        <li><a href="/flats/more/">многокомнатные<ins></ins></a></li> 
        </ul>
        {% endif %}
        </li>
        <li{% if(it == 3) %} class="cur"{% endif %}><a href="/doma/">Дома</a></li>
        <li{% if(it == "d") %} class="cur"{% endif %}><a href="/dachi/">Дачи</a></li> 
		<li{% if(it == "l") %} class="cur"{% endif %}><a href="/lands/">Участки</a></li>             
		<li{% if(it == "g") %} class="cur"{% endif %}><a href="/garage/">Гаражи</a></li>                     
        <li{% if(it == 4) %} class="cur"{% endif %}><a href="/comm/">Коммерческая недвижимость</a></li>
        <li class="green{% if(it == 5) %} cur{% endif %}"><a href="/objects/">Объявления</a></li>
        <li class="green{% if(it == 6) %} cur{% endif %}"><a href="/add/"><strong>+ добавить</strong></a></li>
        <li{% if(it == "fo") %} class="cur"{% endif %}><a href="/forum/">Форум</a></li>
     	<li><a href="/agency/">Агентства</a></li>
      </ul>
      {% endblock %}
			</nav>
		</header>
	</div>




  <div id="sub_header" class="wrapper">
    {% block submenu %}
    {% endblock %}

 {% block bc %}<div id="bc">путь: {% autoescape false %} {{ BC }} {% endautoescape %}</div>{% endblock %}   
    
{% block reklama %} 
<br>
<div align="center">
<script type="text/javascript"><!--
google_ad_client = "ca-pub-6358741859029637";
/* верхний большой */
google_ad_slot = "4061761474";
google_ad_width = 336;
google_ad_height = 280;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
&nbsp;&nbsp;&nbsp;
<script type="text/javascript"><!--
google_ad_client = "ca-pub-6358741859029637";
/* верхний большой */
google_ad_slot = "4061761474";
google_ad_width = 336;
google_ad_height = 280;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script> 
{# 
<!-- 300*250 Advertur.ru start -->
<script type="text/javascript" src="http://ddnk.advertur.ru/v1/code.js?id=5984"></script>
<!-- 300*250 Advertur.ru end -->


<!-- Яндекс.Директ -->
<script type="text/javascript">
yandex_partner_id = 84574;
yandex_site_bg_color = 'FFFFFF';
yandex_stat_id = 2;
yandex_ad_format = 'direct';
yandex_font_size = 0.9;
yandex_direct_type = 'horizontal';
yandex_direct_border_type = 'block';
yandex_direct_limit = 3;
yandex_direct_title_font_size = 1;
yandex_direct_links_underline = false;
yandex_direct_header_bg_color = 'FFFFFF';
yandex_direct_border_color = 'FBE5C0';
yandex_direct_title_color = 'E44D26';
yandex_direct_url_color = '666666';
yandex_direct_text_color = '000000';
yandex_direct_hover_color = '000000';
yandex_direct_sitelinks_color = '0000CC';
yandex_direct_favicon = true;
yandex_no_sitelinks = false;
document.write('<scr'+'ipt type="text/javascript" src="//an.yandex.ru/system/context.js"></scr'+'ipt>');
</script>#} 
</div>
{% endblock %}        
    
   
  </div> 
  

     
	<div id="main" class="wrapper">
		<section id="content" {% block content_width %} style="width:100%"{% endblock %}><br>
	    <header><h1>{% block header %}Добро пожаловать в мир недвижимости города Набережные Челны{% endblock %}</h1></header>

{% block top_banners %} 
<div class="banners" style="margin-bottom:10px;overflow: hidden;">

</div>
<br clear="all">
{% endblock %}  

{% block message %}{% endblock %}

    {% block body %}       
    {% endblock %}
    </section>
        
		{% block side %}
    {# <aside id="stick">
          {% block right_direct%}{% endblock %}
        	{% block sub_menu %}{% endblock sub_menu %}
					<div class="box">
            <header>Меню сайта</header>
              <nav>
                <ul class="menu">
                  <li{% if(it == 1) %} class="cur"{% endif %}><a href="/">Главная</a></li>
                  <li{% if(it == 2) %} class="cur"{% endif %}><a href="/flats/">Продажа квартир в Наб Челнах</a></li>    
                  <li{% if(it == 3) %} class="cur"{% endif %}><a href="/doma/">Дома, Коттеджи, Дачи, Участки</a></li>     
                  <li{% if(it == 4) %} class="cur"{% endif %}><a href="/comm/">Коммерческая недвижимость</a></li>
                  <li{% if(it == 5) %} class="cur"{% endif %}><a href="/objects/">Бесплатные объявления</a></li>
                  <li{% if(it == "fo") %} class="cur"{% endif %}><a href="/forum/">Форум</a></li>
                  <li{% if(it == "ag") %} class="cur"{% endif %}><a href="/agency/">Агентства недвижимости</a></li>
                  <li{% if(it == "ma") %} class="cur"{% endif %}><a href="/maps/chelny.html">Карта Набережные Челны</a></li> 
                </ul>
              </nav>
            </div>  

          {% block modules %}  
          <div class="box">
            <header>Написать нам</header>
            <div class="bodybox">            
            Это форма для отзывов и предложений!<br><br>            
              <form id="ajaxForm" action="/mailme/" method="post" class="zf"> 
                  <small>Имя:</small><br>
                  <input type="text" name="user" value="Аноним" style="width:216px;" class="zf" onclick="return { oRequired : { iMin : 5 } }" /> <br>
                  <small>E-mail:</small><br>
                  <input type="text" name="email" style="width:216px;" class="zf cleared" onclick="return { oRequired : { iMin : 5 } }" /> <br>  
                  <small>Текст:</small><br>                  
                  <textarea name="text" style="width:216px;" class="cleared"></textarea><br>
                  <input type="submit" value="Отправить" /> 
              </form>  
            </div>
          </div>        
          {% endblock modules %}
		</aside> #}
    {% endblock side %}

    <div id="back-top">
      <a href="#top"><span></span>Вверх</a>
    </div>            
               
{% block bottom_banners %}
<div style="text-align:center"><br clear="all">
<!-- Яндекс.Директ -->
<script type="text/javascript">
yandex_partner_id = 84574;
yandex_site_bg_color = 'FFFFFF';
yandex_stat_id = 2;
yandex_site_charset = 'utf-8';
yandex_ad_format = 'direct';
yandex_font_size = 0.9;
yandex_direct_type = 'horizontal';
yandex_direct_border_type = 'block';
yandex_direct_limit = 4;
yandex_direct_title_font_size = 1;
yandex_direct_header_bg_color = 'FFFFFF';
yandex_direct_border_color = 'FBE5C0';
yandex_direct_title_color = 'E44D26';
yandex_direct_url_color = '666666';
yandex_direct_all_color = '666666';
yandex_direct_text_color = '000000';
yandex_direct_hover_color = '000000';
yandex_direct_favicon = true;
document.write('<sc'+'ript type="text/javascript" src="http://an.yandex.ru/system/context.js"></sc'+'ript>');
</script>       
</div>
{% endblock %}
	</div>
	<div id="footer-container">
		<footer class="wrapper">
		 <br>&copy; 2005 - 2012 {% block footer_text %}г. Набережные Челны. Весь Мир Недвижимости. {% endblock %}<br>
		<small>Для предложений: <a href="mailto:zakamie.ru@mail.ru ">zakamie.ru@mail.ru</a></small><br><br>
        <script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8"></script>
<div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="none" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,lj,friendfeed,moikrug"></div> 
		<br>
<div class="right">         
<noindex>

<!--LiveInternet counter-->
<script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t25.4;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число посетителей за"+
" сегодня' "+
"border='0' width='88' height='15'><\/a>")
//-->
</script>
<!--/LiveInternet-->

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-27746051-1']);
  _gaq.push(['_setDomainName', 'zakamie.ru']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<br>
<!-- begin of Top100 code -->
<a href="http://top100.rambler.ru/navi/2481666/"><img src="http://counter.rambler.ru/top100.cnt?2481666" alt="Rambler's Top100" border="0" /></a>
<!-- end of Top100 code -->

<!-- Yandex.Metrika counter -->
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript"></script>
<script type="text/javascript">
try { var yaCounter84574 = new Ya.Metrika({id:84574,
          clickmap:true,
          accurateTrackBounce:true,type:1});
} catch(e) { }
</script>
<noscript><div><img src="//mc.yandex.ru/watch/84574?cnt-class=1" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->  

<!-- topCHELNY.ru : Челнинский рейтинг ресурсов - TOP Набережные Челны -->
<script language="javascript">
java="1.0";
java1=""+"&refer="+escape(document.referrer)+"&page="+
escape(window.location.href);
document.cookie="astratop=1; path=/"; java1+="&c="+(document.cookie?"yes":"now");
</script>
<script language="javascript1.1">java="1.1";java1+="&java="+(navigator.javaEnabled()?"yes":"now")</script>
<script language="javascript1.2">java="1.2";
java1+="&razresh="+screen.width+'x'+screen.height+"&cvet="+
(((navigator.appName.substring(0,3)=="Mic"))?
screen.colorDepth:screen.pixelDepth)</script>
<script language="javascript1.3">java="1.3"</script>
<script language="javascript">java1+="&jscript="+java+"&rand="+Math.random();
document.write("<a href='http://www.topchelny.ru/stat.php?id=1401&fromsite=1' rel='nofollow' target='_blank'><img "+
" src='http://www.topchelny.ru/img.php?id=1401&"+java1+"&' border=0 width=88 height=31 alt='topCHELNY.ru'></a>")</script>
<noscript><a href="http://www.topchelny.ru/" target="_blank" rel="nofollow"><img src="http://www.topchelny.ru/img.php?id=1401" border=0 width=88 height=31 alt="topCHELNY.ru"></a></noscript>
<!-- /topCHELNY.ru : Челнинский рейтинг ресурсов - TOP Набережные Челны -->
</noindex>
</div>         
		</footer>
	</div>
	<!--[if lt IE 7 ]>
	<script src="js/libs/dd_belatedpng.js"></script>
	<script> DD_belatedPNG.fix('img, .png_bg');</script>
	<![endif]-->  
</body> 
</html>