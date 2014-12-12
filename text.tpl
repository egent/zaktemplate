{% extends "template.tpl" %}

{% block top_title %}Полезная информация{% endblock %}

{% block title %}{{ item.title }}{% endblock %}
{% block header %}{{ item.title }}{% endblock %}

{% block desc %}Новости ЖКХ Набережные Челны{% endblock %}
{% block key %}новости, агентства, недвижимость, недвижимости, продажа, недвижимости{% endblock %}

{% block body %}

  <table class="infos">
    <tr><td class="info_item">
    <span style="color:#999; font-size:9px;">{{ item.created|date("d.m.Y") }}</span>
    {% autoescape false %}{{ item.anons|replace({'<p></p>':''}) }}{% endautoescape %}
    {% autoescape false %}{{ item.text|replace({'<p></p>':''}) }}{% endautoescape %}
    <br />
    <em>{{ item.author }}</em>
    </td></tr>
  </table><br />
	<hr> 
  <table class="infos">
  {% for item in rnditems %}
    <tr><td class="info_item">
    <span style="color:#999; font-size:9px;">{{ item.created|date("d.m.Y") }}</span> <a href="/info/text_{{ item.id }}.html">{{ item.title }}</a><br>    
    </td></tr>
  {% endfor %}
  </table>  
  <hr>

{% endblock %}


