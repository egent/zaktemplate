{% extends "template.tpl" %}

{% block title %}Квартиры в Набережных Челнах{% endblock %}
{% block header %}Квартиры в Набережных Челнах. Продажа квартир.{% endblock %}
{% block top_title %}Продать или купить квартиру в Челнах{% endblock %}

{% block submenu %}
{% endblock %}

{% block top_banners %} 
{% endblock %}

{% block body %}
<table width="100%">
<tr>
<td>
	 Выберите количество комнат:<br><br>
  <ul class="rooms" style="font-size:16px; line-height:18px;">
  <li><a href="/flats/malo/">малосемейки</a></li>
  <li><a href="/flats/one/">однокомнатные</a></li>
  <li><a href="/flats/two/">двухкомнатные</a></li>
  <li><a href="/flats/three/">трехкомнатные</a></li>
  <li><a href="/flats/four/">четырехкомнатные</a></li>
  <li><a href="/flats/five/">пятикомнатные</a></li>
  <li><a href="/flats/more/">многокомнатные</a></li>
  </ul>
</td>
</tr>
</table>


{% endblock %}

{% block message %}
{% endblock %}

{% block bottom_banners %}
{% endblock %}

{% block footer_text %}Квартиры в Набережных Челнах.{% endblock %}