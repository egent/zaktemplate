{% extends "template.tpl" %}

{% block top_title %}Коммерческая недвижимость{% endblock %}
{% block title %}Аренда помещений в Набережных Челнах{% endblock %}
{% block header %}Аренда офисов и помещений{% endblock %}

{% block desc %}Коммерческая недвижимость. Купля, продажа, аренда офисов, помещений, складов. Набережные Челны{% endblock %}
{% block key %}коммерческая недвижимость, аренда коммерческой недвижимости, продажа коммерческой недвижимости, коммерческая недвижимость в Набережных Челнах{% endblock %}

{% block body %}
<p>всего {{ total }} объявлений</p>
<table class="table table-bordered table-striped table-condensed">
<thead> 
<tr>
<th>Объект</th>
<th>Адрес</th>
<th>Этаж</th>
<th>Площадь</th>
<th>Балкон</th>
<th>Телефон</th>
<th>Цена</th>
</tr>
</thead>
<tbody>
{% for item in items %}
<tr>
<td align="center">{{ item.object }}</td> 
<td align="center">{{ item.adres|replace({'"': '', ',': ', ', '.': '. '}) }}</td> 
<td>{{ item.floor }}</td>
<td>{{ item.square }}</td>
<td>{{ item.balcon }}</td>
<td>тел.: {{ item.firm_tel }}<br /> 
<small>{{ item.comment|replace({',': ', ', '.': ". "}) }}</small></td>
<td><strong>{{ item.price|replace({'Дог':'дог', 'догов.': 'Договорная', 'догов': 'Договорная', 'дог': 'Договорная'}) }}</strong></td>
</tr>
{% endfor %}
</tbody>
</table>
{# <div class="pagenator">
{% autoescape false %}
{{ pager }}
{% endautoescape %}
</div> #}
<div id="left_banner"></div>
{% endblock %}
{% block footer_text %}Сдаются помещения в аренду. {% endblock %}