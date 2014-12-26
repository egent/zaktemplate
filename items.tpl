    <p class="pull-left">всего {{ total }} объявлений</p>
    <p class="pull-right">
    <a href="/flats/one/" class="btn btn-success btn-xs">1к</a>
    <a href="/flats/two/" class="btn btn-success btn-xs">2х</a>
    <a href="/flats/three/" class="btn btn-success btn-xs">3х</a>
    <a href="/flats/four/" class="btn btn-success btn-xs">4х</a>
    <a href="/flats/more/" class="btn btn-success btn-xs">>4</a>
    </p>
    <br clear="all">
    <table class="table table-bordered table-striped table-condensed"> 
    <thead> 
    <tr>
    <th class="filter-select filter-exact" data-placeholder="Выбрать">Адрес</th>
    <th>Этаж</th>
    <th class="sorter-false filter-false">Пл<span class="hidden-xs">ощадь</span></th>
    <th class="sorter-false filter-false" width="10">Бал<span class="hidden-xs">кон</span></th>
    <th class="sorter-false">Опис<span class="hidden-xs">ание</span></th>
    <th>Цена</th>
    <th class="sorter-false filter-false"></th>
    </tr>
    </thead>    
	<tfoot>
		<tr>
			<th colspan="7" class="ts-pager form-horizontal">
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
    {% if ( loop.index == 11000 ) %}
    <tr><td colspan="9" align="center">
    <!-- Яндекс.Директ -->
    <script type="text/javascript">
    yandex_partner_id = 84574;
    yandex_site_bg_color = 'FFFFFF';
    yandex_stat_id = 4;
    yandex_site_charset = 'utf-8';
    yandex_ad_format = 'direct';
    yandex_font_size = 0.8;
    yandex_direct_type = 'flat';
    yandex_direct_limit = 1;
    yandex_direct_title_font_size = 1;
    yandex_direct_title_color = 'E44D26';
    yandex_direct_url_color = '999999';
    yandex_direct_all_color = '999999';
    yandex_direct_text_color = '999999';
    yandex_direct_hover_color = '666666';
    yandex_direct_favicon = false;
    document.write('<sc'+'ript type="text/javascript" src="http://an.yandex.ru/system/context.js"></sc'+'ript>');
    </script>
    </td></tr>
    {% endif %}
    <tr valign="middle">
    <td align="center">
    {{ item.adres }}
    </td> 
    <td>{{ item.floor }}</td>
    <td>{{ item.square }}</td>
    <td>{{ item.balcon }}</td>
    <td>    
    <span class="hidden-xs">{{ item.comment|replace({',': ', ', '.': ". "}) }}</span>    
    <i class="btn ppvr visible-xs-block glyphicon glyphicon-info-sign" data-placement="top" data-content="{{ item.comment|replace({',': ', ', '.': ". "}) }}"></i>
    </td>
    <td>
    <strong>{{ item.price|replace({'догов': 'Договорная', 'дог': 'Договорная'}) }}</strong>
    </td>
    <td align="center">
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
    </div> #}