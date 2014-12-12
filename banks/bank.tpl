{% extends "template.tpl" %}

{% block top_title %}{% endblock %}
{% block title %}{{ item.bank_name }} {{ gorod }}. Отзывы.{% endblock %}
{% block desc %}Описание и адреса банка «{{ item.bank_name }}». Отзывы банка «{{ item.bank_name }}» {{ vgorode }}{% endblock %}
{% block key %}{{ item.bank_name }},{{ gorod }},{{ vgorode }}{% endblock %}
{% block header %}{{ item.bank_name }}{% endblock %}
{% block top_banners %} 
{% endblock %}
{% block reklama %} 
{% endblock %}

{% block menu %}
<ul class="topmenu">
<li><a href="/">Главная</a></li>
<li><a href="/banks/">Банки</a></li>
</ul>
{% endblock %}

{% block body %}
<div class="banks">
<div id="left_banner" style="margin-right:10px">
</div>

<div class="bank_detail">
	<img src="/images/b/{{ item.bank_logo }}" class="bank_logo" title="{{ item.bank_name }} Набережные Челны">
	<div class="bank_desc">
    {% autoescape false %}{#{ item.bank_desc }#}{% endautoescape %}
    </div>

</div>
<br>
<br clear="all">

<h3 align="center">Отзывы банка «{{ item.bank_name }}»</h3><br><br>
 
        <div id="disqus_thread"></div>
        <script type="text/javascript">
            /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
            var disqus_shortname = 'zakamieru'; // required: replace example with your forum shortname

            /* * * DON'T EDIT BELOW THIS LINE * * */
            (function() {
                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
            })();
        </script>
        <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>

</div>

{% endblock %}
{% block footer_text %}Банки {{ vgorode }}. {{ item.bank_name }}.{% endblock %}