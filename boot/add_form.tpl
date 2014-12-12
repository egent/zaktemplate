{% extends "boot/main.tpl" %}

{% block title %}Добавить объявление на сайт{% endblock %}
{% block header %}Добавить объявление{% endblock %}

{% block ads_top %}
{% endblock %} 

{% block script %}
{{ parent() }} 

<script src="/design/boot/js/validate/jquery.form.js"></script>
<script src="/design/boot/js/validate/jquery.validate.js"></script>
<script src="/design/boot/js/validate/messages_ru.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	form = $("#new_objects");

	form.resetForm();
	
	form.validate({
		rules: {
			// simple rule, converted to {required:true}
			name: "required",
			city_id: "required",
			category: "required",
			type: "required",
			// compound rule
			email: {
				required: true,
				email: true
			},
			price: {
				required: true,
				min: 1000,
				number: true
			},
			header: {
				required: true,
				minlength: 10,
			},
		},
		messages: {
			name: "Пожалуйста введите ваше имя или название фирмы.",
			tel: "Укажите ваш контактный телефон",
			category: "Выберите категорию объявления",
			type: "Выберите тип объявления",
			header: { 
				required: "Напишите краткое описание объявления (заголовок)",
				minlength: "Заголовок объявления должен быть не менее {0} символов"
			},
			email: {
				required: "Необходимо указать ваш E-mail.",
				email: "Указанный вами E-mail неверный."
			},
			price: { 
				required: "Укажите цену",
				number: "Цена должна быть числовым значением",
				min: "Пожалуйста укажите достоверную цену"
			},
		},
		
		errorPlacement: function(error, element) {
				error.insertBefore(element);		
		}				
		
	});

	$("#type").on("change",
		function(){
		//$("#authorName").prop("disabled",!$("#authorName").prop("disabled"))			
	});

    $('#poks').on("change",function(){
       // $('#kompleks').prop("disabled", !$(this).is(':checked'));
    });
	
	$('#cat').on("change", function(){
		cat = $("#cat").val();
		if(cat !== '') $("#type").prop("disabled", false); else $("#type").prop("disabled", true);
	});

	var form_elements = new Array(); 
	
	form_rooms = '<select name="rooms" id="rooms" class="required"><option value="">-- Комнат в квартире --</option><option value="studio">Студия</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5 и более</option></select>';
	
	form_view = '<select name="view" id="view"><option value="">-- Вид объекта --</option><option value="second">Вторичка</option><option value="new">Новостройка</option></select>';
	
	form_rent_period = '<select id="rent_period" name="rent_period"><option value="">-- Срок аренды --</option><option value="m">На длительный срок</option><option value="d">Посуточно</option><option value="h">Почасовая</option></select>';  
	
	form_e = '<select name="e" id="e"><option value="">-- Этаж --</option><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option value="31">&gt; 30</option></select>';
	
	form_ee = '<select name="ee" id="ee"><option value="">-- Этажей в доме --</option><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option value="31">&gt; 30</option></select>';
	
	form_house_type = '<select name="house_type" id="house_type"><option value="">-- Тип дома --</option><option value="1">Кирпичный</option><option value="2">Панельный</option><option value="3">Блочный</option><option value="4">Монолитный</option><option value="5">Деревянный</option></select>';	
	
	form_total = ' '
      + '<br><br><label>Площадь</label>'
      + '<div class="input-append">'
      + '<input type="text" name="total" class="input-mini">'
      + '<span class="add-on">м<sup>2</sup></span> </div>';
	  
	form_square = ' '
      + '<br><br><label for="square">Площадь дома</label>'
      + '<div class="input-append">'
      + '<input type="text" name="square" id="square" class="input-mini">'
      + '<span class="add-on">м<sup>2</sup></span> </div>';
	  
	form_garden = ' '
      + '<br><br><label for="garden">Площадь участка</label>'
      + '<div class="input-append">'
      + '<input type="text" name="garden" id="garden" class="input-mini">'
      + '<span class="add-on">соток</span> </div>';
	  
	form_lands = ' '
      + '<br><label for="garden">Площадь</label>'
      + '<div class="input-append">'
      + '<input type="text" name="garden" id="garden" class="input-mini">'
      + '<span class="add-on">соток</span> </div>';  
	  
	 
	form_dom_view = '<select name="view" id="view"><option value="">-- Вид объекта --</option><option value="dom">Дом</option><option value="dacha">Дача</option><option value="cottage">Коттедж</option><option value="townhouse">Таунхаус</option></select>';	  
	
	form_dom_material = '<select id="dom_material" name="dom_material"><option value="">-- Материал стен --</option><option value="1">Кирпич</option><option value="2">Брус</option><option value="3">Бревно</option><option value="4">Металл</option><option value="5">Пеноблоки</option><option value="6">Сэндвич-панели</option><option value="7">Ж/б панели</option><option value="8">Экспериментальные материалы</option></select>';
	
	form_garage_view = '<select class="filter form-input-select" id="view" name="view"><option value="">-- Вид объекта --</option><option value="garage">Гараж</option><option value="carplace">Машиноместо</option></select>';
	
	form_com_view ='<select id="view" name="view"><option value="">-- Вид объекта --</option><option value="magaz">Магазин</option><option value="ofis">Офис</option><option value="proiz">Производство</option><option value="kafe">Ресторан, кафе</option><option value="salon">Салон красоты</option><option value="sklad">Склад</option><option value="drugoe">Другое</option></select>';
	
	form_address ='<div class="control-group"><label class="control-label">Адрес<br><small class="muted">улица, дом</small></label><div class="controls"><input type="text" name="street" id="street">,<input type="text" name="dom" id="dom" class="input-mini"></div></div>';

	form_kompleks = '<div class="control-group"><label class="control-label">по комплексу<br><small class="muted">62/05</small></label><div class="controls"><input type="text" name="kompleks" id="kompleks"></div></div>';

	ccs = '<div class="control-group"><div class="controls">';
	cce = '</div></div>';
	

	form_elements['flat_sale'] = ccs + form_rooms + form_view + form_e + form_ee + form_house_type + form_total + cce + form_address + form_kompleks;
	form_elements['flat_rent'] = ccs + form_rooms + form_rent_period + form_e + form_ee + form_house_type + form_total + cce + form_address + form_kompleks;

	form_elements['room_sale'] = ccs + form_rooms + form_e + form_ee + form_house_type + form_total + cce + form_address + form_kompleks;
	form_elements['room_rent'] = ccs + form_rooms + form_rent_period + form_e + form_ee + form_house_type + form_total + cce + form_address + form_kompleks;

	form_elements['house_sale'] = ccs + form_dom_view + form_dom_material + form_square + form_garden + cce + form_address;
	form_elements['house_rent'] = ccs + form_dom_view + form_dom_material + form_rent_period + form_square + form_garden + cce + form_address;
	
	form_elements['garage_sale'] = ccs + form_garage_view + form_total + cce + form_address;
	form_elements['garage_rent'] = ccs + form_garage_view + form_total + cce + form_address;	
	
	form_elements['com_sale'] = ccs + form_com_view + form_total + cce + form_address;
	form_elements['com_rent'] = ccs + form_com_view + form_total + cce + form_address;	

	form_elements['lands_sale'] = ccs + form_lands + cce;	
		
	
	function insert_prop()
	{
		cat = $("#cat").val();
		type = $("#type").val();

		$("#some_prop").slideUp(400,function(){$(this).empty()});

		if(form_elements[cat + '_' + type])	{
			$("#some_prop").slideUp(400,
				function()
				{					
					$("#some_prop").prepend(''+form_elements[cat + '_' + type]+'').slideDown();
				});
			
		
		
		}
	}	
		
	$('#type').on("change", function(){
		insert_prop()
	});
	
	$('#cat').on("change", function(){
		insert_prop()
	});

});
</script>
{% endblock %} 

{% block style %}
{{ parent() }} 
<style>
#newfoto .prev_image { text-align:center; display:block; margin:4px; text-align:center; float:left; }
label.error { color:#F00; font-size:12px; padding:0 4px; }
</style>
{% endblock %}

{% block body %}
<div class="well">
    <form action="/boot/do_add/" id="new_objects" method="post" class="form-horizontal">
	<input type="hidden" name="userkey" value="{{ userkey }}">
      <div class="control-group">
        <label class="control-label"></label>
        <div class="controls">
            <label class="radio inline">
            <input type="radio" value="1" name="private" checked="checked"> Частное лицо </label>
            <label class="radio inline">
            <input type="radio" value="0" name="private"> Компания </label>        
        </div>
      </div>
      
      <div class="control-group">
        <label class="control-label" for="authorName">Ф.И.О/Фирма</label>
        <div class="controls">
          <input type="text" id="authorName" name="name" class="required">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="authorTel"><a href="#" title="пример: 79171234567, 88552123456" class="tip"><i class="icon-exclamation-sign"></i></a> Телефон</label>
        <div class="controls">
          <input type="tel" id="authorTel" name="tel" class ="required">
		</div>
      </div>
      <div class="control-group">
        <label class="control-label" for="authorEmail">E-mail</label>
        <div class="controls">
          <input type="email" id="authorEmail" name="email" validate="email" class="required">
        </div>
      </div>
      
      <div class="control-group">
        <label class="control-label" for="authorEmail">Город</label>
        <div class="controls">
          <select name="city_id" id="city_id" class="span6">
            <option value="">-- Выберите город --</option>
            <option value="510" selected="selected">Набережные Челны</option>            
            <option value="400">Казань</option>
            <option value="140">Агрыз</option>
            <option value="150">Азнакаево</option>
            <option value="160">Айша</option>
            <option value="170">Аксубаево</option>
            <option value="180">Актаныш</option>
            <option value="190">Актюбинский</option>
            <option value="200">Алексеевское</option>
            <option value="210">Альметьевск</option>
            <option value="220">Апастово</option>
            <option value="230">Арск</option>
            <option value="240">Бавлы</option>
            <option value="250">Базарные Матаки</option>
            <option value="260">Балтаси</option>
            <option value="270">Бетьки</option>
            <option value="280">Богатые Сабы</option>
            <option value="290">Болгар</option>
            <option value="300">Большая Атня</option>
            <option value="310">Бугульма</option>
            <option value="320">Буинск</option>
            <option value="330">Васильево</option>
            <option value="340">Верхний Услон</option>
            <option value="350">Высокая Гора</option>
            <option value="360">Джалиль</option>
            <option value="370">Елабуга</option>
            <option value="380">Заинск</option>
            <option value="390">Зеленодольск</option>
            <option value="410">Камские Поляны</option>
            <option value="420">Камское Устье</option>
            <option value="430">Карабаш</option>
            <option value="440">Кукмор</option>
            <option value="450">Лаишево</option>
            <option value="460">Лениногорск</option>
            <option value="470">Мамадыш</option>
            <option value="480">Менделеевск</option>
            <option value="490">Мензелинск</option>
            <option value="500">Муслюмово</option>
            <option value="520">Нижнекамск</option>
            <option value="530">Нижние Вязовые</option>
            <option value="540">Нижняя Мактама</option>
            <option value="550">Новошешминск</option>
            <option value="560">Нурлат</option>
            <option value="570">Осиново</option>
            <option value="580">Пестрецы</option>
            <option value="590">Русский Акташ</option>
            <option value="600">Рыбная Слобода</option>
            <option value="610">Сарманово</option>
            <option value="620">Старое Дрожжаное</option>
            <option value="630">Столбищи</option>
            <option value="640">Тетюши</option>
            <option value="650">Уруссу</option>
            <option value="660">Черемшан</option>
            <option value="670">Чистополь</option>
            <option value="680">Шемордан</option>
          </select>
        </div>
      </div>      
      
      <div class="control-group">
        <label class="control-label" for="cat">Категория</label>
        <div class="controls">
          <select name="category" id="cat" class="span6">
            <option value="">-- Выберите категорию --</option>
            <option value="flat">Квартиры</option>
            <option value="room">Комнаты</option>
            <option value="house">Дома, дачи, коттеджи</option>
            <option value="lands">Земельные участки</option>
            <option value="garage">Гаражи и машиноместа</option>
            <option value="com">Коммерческая недвижимость</option>
          </select>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">Выберите параметры</label>
        <div class="controls">
          <select name="type" id="type" disabled="disabled" class="span6">
            <option value="">-- Тип объявления --</option>
            <option value="sale">Продам</option>
            <option value="rent">Сдам</option>
            <option value="demand">Спрос</option>
            <option value="change">Обмен</option>
          </select>
        </div>
      </div>
      
      <div id="some_prop">
      </div>

      <div class="control-group">
        <label class="control-label" for="header">Заголовок</label>
        <div class="controls">
          <input type="text" name="header" id="header" class="span12" maxlength="80">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="text">Текст объявления</label>
        <div class="controls">
          <textarea name="text" class="span12" style="resize:none; height:200px;"></textarea>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="price"><a href="#" title="Указывайте реальную цену!" class="tip"><i class="icon-exclamation-sign"></i></a> Цена</label>
        <div class="controls">
          <div class="input-append">
            <input type="number" name="price" style="width:80px;" value="0">
            <span class="add-on" id="price_label">руб.</span> 
            </div>
        </div>
      </div>
      
      
      
      
      <div class="control-group">
        <label class="control-label">Фото</label>
        <div class="controls">
        
		<link rel="stylesheet" href="/design/boot/js/file/fileuploader.css" type="text/css" />
        <script src="/design/boot/js/file/fileuploader.js"></script>
        
            <div id="file-uploader">       
                <noscript>          
                    <p>Please enable JavaScript to use file uploader.</p>
                    <!-- or put a simple form for upload here -->
                </noscript>         
            </div>            
            <div id="newfoto" style="margin-top:15px;"></div>       

			<script>
            var uploader = new qq.FileUploader({
                // pass the dom node (ex. $(selector)[0] for jQuery users)
                element: document.getElementById('file-uploader'),	
					multiple: false,
                    action: '/add/images/',
                    params: {},		
                    allowedExtensions: ['jpg', 'jpeg', 'png', 'gif'],        
                    sizeLimit: 5000000, // max size   
                    minSizeLimit: 100, // min size		
                    debug: false,		
                    onSubmit: function(id, fileName){},
                    onProgress: function(id, fileName, loaded, total){ 
						$('#loaded').text(Math.round(loaded / total * 100) + '%'); 
					},
                    onComplete: function(id, fileName, responseJSON){ 
						setTimeout(function(){$('#loaded').text('')},1000);						
						$('#newfoto').prepend('<div class="prev_image"><img src="' + responseJSON.image +'" width="60" align="left"><br><input type="radio" name="first_image" value="' + responseJSON.image + '" checked></div>');
					},
                    onCancel: function(id, fileName){},
                    
                    messages: {
						typeError: "{file} формат файла неверный. Допускаются файлы с расширениями {extensions} .",
						sizeError: "{file} файл очень большого размера, максимальный размер {sizeLimit}.",
						minSizeError: "{file} маленький файл, минимум {minSizeLimit}.",
						emptyError: "{file} пустой, сделайте выбор без этого файла.",
                    	onLeave: "Идет загрузка файла, покинув эту страницу загрузка будет остановлена."
                    },
                    
                    showMessage: function(message){ alert(message); }				
                    
            });
            </script>


        </div>
      </div>      


      
      <div class="control-group">
        <label class="control-label"></label>
        <div class="controls">
          разместить объявление на <input type="text" name="days" id="days" value="30" style="width:20px;"> дней
        </div>
      </div>
      <div class="control-group">
        <label class="control-label"></label>
        <div class="controls">
          <input class="btn btn-success zf" type="submit" value="Все верно, добавить!">
          <input type="reset" value="Очистить" class="btn pull-right">
        </div>
      </div>
    </form>
</div>
<br />
<br />
{% endblock %}
{% block footer_text %}Продажа квартир в Набережных Челнах. Добавить объявление.{% endblock %}