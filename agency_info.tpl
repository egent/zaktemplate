{% extends "template.tpl" %}
{% block title %}{{ item.firm }}{% endblock %}
{% block header %}{{ item.firm }}{% endblock %}

{% block desc %}{{ item.firm }} Агентства недвижимости. Каталог агентств в городе Набережные Челны{% endblock %}
{% block key %}агенства, агентства, недвижимость, недвижимости, {{ item.keywords }}{% endblock %}

{% block body %}
<table class="" cellpadding="4" cellspacing="4" width="560" height="600">
<tr valign="top">
<td valign="top">
<p><em>Телефон:</em> {{ item.tel }}</p>
<p><em>Веб-сайт:</em> {{ item.url }}</p>
<p><em>E-mail: </em>{{ item.email }}</p>
<p><em>Адрес по комплексу:</em> {{ item.address }}</p>
<p><em>Адрес по улице:</em> {{ item.address_street }}</p>
{#{ logo }#}
</td>
</tr>
</table>
{% endblock %}

{% block footer_text %}Агентства недвижимости в Набережных Челнах{% endblock %}