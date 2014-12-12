{% extends "template.tpl" %}

{% block title %}Добавить объявление на сайт{% endblock %}
{% block header %}Добавить фото к объявлению{% endblock %}

{% block top_banners%} 
{% endblock %}

{% block side %}
{% endblock %}

{% block body %}


<div class="addarea">
<script src="/js/fileuploader.js"></script>   
<link href="/js/fileuploader.css" rel="stylesheet" type="text/css">	



<div id="file-uploader">       
    <noscript>          
        <p>Please enable JavaScript to use file uploader.</p>
        <!-- or put a simple form for upload here -->
    </noscript>         
</div>



<script>
var uploader = new qq.FileUploader({
    // pass the dom node (ex. $(selector)[0] for jQuery users)
    element: document.getElementById('file-uploader'),	
		// url of the server-side upload script, should be on the same domain
		action: '/add/img/',
		// additional data to send, name-value pairs
		params: {},		
		// validation    
		// ex. ['jpg', 'jpeg', 'png', 'gif'] or []
		allowedExtensions: ['jpg', 'jpeg', 'png', 'gif'],        
		// each file size limit in bytes
		// this option isn't supported in all browsers
		sizeLimit: 3000000, // max size   
		minSizeLimit: 10, // min size		
		// set to true to output server response to console
		debug: false,		
		// events         
		// you can return false to abort submit
		onSubmit: function(id, fileName){},
		onProgress: function(id, fileName, loaded, total){},
		onComplete: function(id, fileName, responseJSON){},
		onCancel: function(id, fileName){},
		
		messages: {
      typeError: "{file} has invalid extension. Only {extensions} are allowed.",
      sizeError: "{file} is too large, maximum file size is {sizeLimit}.",
  	  minSizeError: "{file} is too small, minimum file size is {minSizeLimit}.",
      emptyError: "{file} is empty, please select files again without it.",
	    onLeave: "The files are being uploaded, if you leave now the upload will be cancelled."           
		},
		
		showMessage: function(message){ alert(message); }				
		
});
</script>
<br>
<blockquote>
<strong>Запомните!</strong> Для удаления данного объявления Вам необходимо пройти по ссылке: <br>
<strong>http://www.zakamie.ru/objects/delete/{{ unique }}/</strong>
</blockquote>
<br>
<a href="/add/save/" style="float:right;"><strong>Закончить, сохранить объявление</strong></a>

</div>
<br>
<br>
{% endblock %}
{% block footer_text %}Продажа квартир в Набережных Челнах. Добавить объявление.{% endblock %}