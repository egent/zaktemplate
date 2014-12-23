    <p>всего {{ total }} объявлений</p>
    <table class="table table-bordered table-striped table-condensed"> 
    <thead> 
    <tr>
    <th filter-type='ddl'>Адрес</th>
    <th>Этаж</th>
    <th>Площадь</th>
    <th>Балкон</th>
    <th>Описание</th>
    <th>Цена</th>
    <th></th>
    </tr>
    </thead>
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
    {{ item.adres|replace({'/ ': '/'}) }}
    </td> 
    <td>{{ item.floor }}</td>
    <td>{{ item.square }}</td>
    <td>{{ item.balcon }}</td>
    <td>    
    {{ item.comment|replace({',': ', ', '.': ". "}) }}
    </td>
    <td>
    <strong>{{ item.price|replace({'догов': 'Договорная', 'дог': 'Договорная'}) }}</strong>
    </td>
    <td>
    <button type="button" class="ppvr" data-placement="left" data-content="<p>{{ item.firm }}</p><p>{{ item.firm_tel }}</p>"><i class="glyphicon glyphicon-earphone"></i></button>
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