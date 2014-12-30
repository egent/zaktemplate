{% extends "template.tpl" %}

{% block top_title %}Дачи{% endblock %}
{% block title %}Дачи в Набережных Челнах{% endblock %}
{% block header %}Дачи в Набережных Челнах{% endblock %}
{% block side %}{% endblock %}
{% block content_width %}style="width:100%"{% endblock %} 
{% block body %}
<p class="pull-left">всего {{ total }} объявлений</p>
<p class="pull-right">
<button type="button" class="reset btn btn-primary btn-xs" data-column="0" data-filter=""><i class="icon-white icon-refresh glyphicon glyphicon-refresh"></i> Отмена фильтров</button>
</p>
<br clear="all">
<table class="table table-bordered table-striped table-condensed">
<thead> 
<tr>
<th class="filter-select filter-exact" data-placeholder="Выбрать">Общество</th>
<th>Сотки</th>
<th class="sorter-false filter-false" width="10">Дом</th>
<th class="sorter-false filter-false" width="10">Эл</th>
<th class="sorter-false filter-false" width="10">Во</th>
<th class="sorter-false filter-false">Опис<span class="hidden-xs">ание</span></th>
<th>Цена</th>
<th class="sorter-false filter-false"></th>
</tr>
</thead>
	<tfoot>
		<tr>
			<th colspan="8" class="ts-pager form-horizontal">
				<button type="button" class="btn first"><i class="icon-step-backward glyphicon glyphicon-step-backward"></i></button>
				<button type="button" class="btn prev"><i class="icon-arrow-left glyphicon glyphicon-backward"></i></button>
				<span class="pagedisplay"></span> <!-- this can be any element, including an input -->
				<button type="button" class="btn next"><i class="icon-arrow-right glyphicon glyphicon-forward"></i></button>
				<button type="button" class="btn last"><i class="icon-step-forward glyphicon glyphicon-step-forward"></i></button>
				<select class="pagesize input-mini" title="Select page size">
					<option selected="selected" value="10">10</option>
					<option value="20">20</option>
					<option value="30">30</option>
					<option value="40">40</option>
				</select>
				<select class="pagenum input-mini" title="Номер страницы"></select>
			</th>
		</tr>
	</tfoot> 
<tbody>
{% for item in items %}
<tr>
<td>
{{ item.adres|replace({',': ', ', '.': '. ', '-':'', '  ':''}) }}
</td> 
<td>{{ item.sotki }}</td>
<td>{{ item.square }}</td>
<td>{{ item.elect }}</td>
<td>{{ item.vo }}</td>
<td>
    <span class="hidden-xs">{{ item.comment|replace({',': ', ', '.': ". "}) }}</span>    
    <i class="btn ppvr visible-xs-block glyphicon glyphicon-info-sign" data-placement="top" data-content="{{ item.comment|replace({',': ', ', '.': ". "}) }}"></i>
</td>
<td>
<strong>{{ item.price|replace({'торг':' торг'}) }}</strong>
</td>
<td>
<i class="btn ppvr glyphicon glyphicon-earphone" data-placement="left" data-content="<p>{{ item.firm }}</p><p>{{ item.firm_tel }}</p>"></i>
</td>
</tr>
{% endfor %}
</tbody>
</table>
{# <div class="pagenator">
{% autoescape false %}
{{ pager }}
{% endautoescape %}
</div>#}
<div id="left_banner"></div>
{% endblock %}
{% block footer_text %}Дачи Набережные Челны{% endblock %}