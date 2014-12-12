<div class="add" id="page">
<div class="errors"></div>
<form enctype="multipart/form-data" method="post" id="add_items" name="add" action="/content/save/">
<table cellspacing="1" cellpadding="2" border="0" width="100%" class="form">
<tbody>
<tr>
	<td></td>
	<td>
		<input type="text" name="created" value="<?=date("Y-m-d H:i:s")?>">
	</td>
</tr>

<tr>
	<td>Регион</td>
	<td>
		<select name="region">
        	<option>Челны</option>
        	<option>Казань</option>
        	<option>Татарстан</option>            
        	<option>Москва</option>            
        	<option>Россия</option>            
        </select>
	</td>
</tr>

<tr>
	<td>Заголовок</td>
	<td>
		<input type="text" style="width:600px" name="title" value="">
	</td>
</tr>

<tr>
	<td>Ссылка</td>
	<td>
		<input type="text" style="width:300px" name="atitle" value="">
	</td>
</tr>

<tr>
	<td>Анонс</td>
	<td><br>
		<textarea style="width:100%;" name="anons" class="redactor_content"></textarea>
	</td>
</tr>

<tr>
	<td>Текст</td>
	<td><br>
		<textarea style="width:100%;" name="text" class="redactor_content"></textarea> 
	</td>
</tr>

<tr>
	<td>Источник</td>
	<td><br>
		<input type="text" name="author">
	</td>
</tr>

<tr>
	<td>Тип контента</td>
	<td><br>
		<select name="type">
		<option value="news">Новость</option>
		<option value="article">Статья</option>
		</select>
	</td>
</tr>

<tr>
	<td>Мета</td>
	<td><br>
		T: <input type="text" style="width:300px" name="tit" value=""><br>
		K: <input type="text" style="width:300px" name="key" value=""><br>
		D: <textarea style="width:50%;" name="desc"></textarea>                 
	</td>
</tr>


<tr>
	<td></td>
	<td align="right">
	<input type="submit" class="btn btn-success" value="Добавить">
    </td>
</tr>

</tbody>
</table>    
</form>
</div>
