{% extends "template.tpl" %}

{% block title %}Добавить объявление на сайт{% endblock %}
{% block header %}Добавить объявление{% endblock %}


{% block body %}


<div class="addarea">
<style>
.zf dt { margin: 0; padding: 5px; }
input[type="text"], textarea, select { 	border:#CCC solid 2px; padding:4px; border-radius:5px; box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1) inset; }
.zf-invalid input { border:#F00 solid 2px;  }
</style>
 
<form action="/add/do_add/" name="add" id="add_items" method="post" class="zf" onclick="return { oOptions : { bUpdatableSubmit : false } }">
<dl>
	<dt><label>Заголовок</label></dt>
	<dt>
		<input type="text" name="header" class="zf" onclick="return { oRequired : { iMin : 20 } }" size="60">
  </dt>
</dl>

<dl>
	<dt><label>Текст объявления</label></dt>
	<dt>
		<textarea tabindex="19" cols="60" rows="7" name="text" class="zf" onclick="return { oRequired : { iMin : 50 } }"></textarea>
    </dt>
</dl>

<dl>
	<dt><label>Цена</label></dt>
	<dt>
        <input type="text" value="" name="price" class="zf" size="10" onclick="return { oRequired : { iMin : 1 }, oValid : { rPattern : /^[0-9]*$/ } }"> руб. <small class="gray">( 0 - договорная )</small>
    </dt>    
</dl>
<hr>
<dl>
	<dt><label>Ф.И.О/Фирма</label></dt>
	<dt>
		<input type="text" name="name" onclick="return { oRequired : { iMin : 3 } }" class="zf" size="50">
	</dt>
</dl>

<dl>
	<dt><label>Телефон</label></dt>
	<dt>
		<input type="text" name="tel" onclick="return { oRequired : { iMin : 6 }, oValid : { rPattern : /^[0-9]*$/ } }" class="zf"><br>
		<small class="gray">пример: 79171234567, 88552123456</small>
	</dt>
</dl>

<dl>
	<dt>
  <label>E-mail</label><br>
  <small class="gray">Необходим для дальнейшего редактирования объектов</small>
  </dt>
	<dt>
		<input type="text" name="email" class="zf" onclick="return { oValid : { sType : 'email' } }">
	</dt>
</dl>
<hr>
<dl>
	<dt><label><strong>Категория</strong></label></dt>
	<dt>
    <select name="category" class="zf" onclick="return { oRequired : { iMin : 1 } }">
    <option value="">&nbsp;</option>
    <option value="sale">Продажа</option>
    <option value="rent">Аренда</option>
    <option value="demand">Спрос</option>
    <option value="change">Обмен</option>
    </select>
  </dt>
</dl>
<br>
<dl>
	<dt><label><strong>Тип объекта</strong></label></dt>
	<dt>
    <sdlong>Квартиры</sdlong>:<br>
    <input type="radio" name="type" value="flat" id="flat" checked="checked" checked> <label for="flat"><em>Вторичное</em></label><br>
		<input type="radio" name="type" value="new" id="new"> <label for="new"><em>Новостройки</em></label><br>    
<br>
		<sdlong>Дома, дачи, земля, гаражи</sdlong><br>
 		<input type="radio" name="type" value="house" id="house"> <label for="house"><em>Дома, дачи</em></label><br>
    <input type="radio" name="type" value="lands" id="lands"> <label for="lands"><em>Земля</em></label><br>
    <input type="radio" name="type" value="garage" id="garage"> <label for="garage"><em>Гаражи, стоянки</em></label><br>
    <br>
		<input type="radio" name="type" value="com" id="com"> <label for="com"><sdlong><em>Коммерческая недвижимость</em></sdlong><br>
    <small class="gray">Офисы, Торговля и сервис, Производство и склады, Кафе. Бары. Рестораны. Здания и особняки, ПСН</small><br></label>
<br>
    
  </dt>
</dl>
<br>
<dl>
	<dt><label><strong>Адрес по улице</strong></label></dt>
	<dt>
	улица <input type="text" name="street" class="zf" onclick="return { oRequired : { iMin : 1 }, oEnabled : { sName : 'category', rPattern : 'sale|rent' } }" size="20" maxlength="120">
	дом <input type="text" name="dom" class="zf" onclick="return { oRequired : { iMin : 1 }, oEnabled : { sName : 'category', rPattern : 'sale|rent' } }" size="5" maxlength="5">  
  </dt>
</dl>

<dl>
	<dt><label><strong>Адрес по комплексу</strong></label></dt>
	<dt>
	комплекс <input type="text" name="kompleks" class="zf" size="15" maxlength="80">
	</dt>
</dl>
<br>

<dl>
	<dt><label><strong>Количество комнат</strong></label></dt>
	<dt>
    <select name="rooms" class="zf" onclick="return { oRequired : { iMin : 1 } }">
    <option value=""></option>
    <option value="0">малосемейка</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
	  <option value="4">4</option>
	  <option value="5">5+</option>
    </select>  
  </dt>
</dl>

<table><tr><td>
<dl>
	<dt><label><strong>Этаж</strong></label></dt>
	<dt>
	<input type="text" name="e" class="zf" onclick="return { oValid : { rPattern : /^[0-9]*$/ } }" size="3" maxlength="2">
  </dt>
</dl>
</td><td>
<dl>
	<dt><label><strong>Этажность</strong></label></dt>
	<dt>
	<input type="text" name="ee" class="zf" onclick="return { oValid : { rPattern : /^[0-9]*$/ } }" size="3" maxlength="2">
  </dt>
</dl>
</td></tr></table>
<br>
<strong>Укажите площадь</strong>
<table><tr><td>
<dl>
	<dt><label>общая</label></dt>
	<dt>
      <input type="text" name="total" class="zf" onclick="return { oValid : { rPattern : /^[0-9]*$/ } }" size="3" maxlength="3"> м<sup>2</sup>
	</dt>
</dl>
</td><td>
<dl>
	<dt><label>жилая</label></dt>
	<dt>
      <input type="text" name="living" class="zf" onclick="return { oValid : { rPattern : /^[0-9]*$/ } }" size="3" maxlength="3"> м<sup>2</sup>
	</dt>
</dl>
</td><td>
<dl>
	<dt><label>кухни</label></dt>
	<dt>
      <input type="text" name="kitchen" class="zf" onclick="return { oValid : { rPattern : /^[0-9]*$/ } }" size="3" maxlength="3"> м<sup>2</sup>
  </dt>
</dl>
</td></tr></table>


<dl>
	<dt></dt>
	<dt>
	<input type="submit" name="add_items" value="Добавить" class="zf zf-submit" style="float:right">
  </dt>
</dl>

</form>


</div>
<br />
<br />

{% endblock %}
{% block footer_text %}Продажа квартир в Набережных Челнах. Добавить объявление.{% endblock %}