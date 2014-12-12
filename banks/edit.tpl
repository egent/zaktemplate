<div class="gray_box">

 
<!-- tab "panes" -->
<div class="panes">
<div>

<h3>Редактирование банка</h3>
<form enctype="multipart/form-data" class="webform zf" name="add_bank" method="post" action="/banks/save/"> 
<input type="hidden" name="update" value="1">
<input type="hidden" name="bid" value="<?=$bank->bid?>">

<table cellspacing="1" cellpadding="2" border="0" width="100%">
        <tbody>

        <tr class="odd">
          <td align="center">
          <label>Название</label>
          </td>
          
          <td> 
          <input type="text" onclick="return { oRequired : { iMin : 2 } }" name="bank_name" value="<?=$bank->bank_name?>" size="40" maxlength="250" class="zf">            
          </td>
        </tr>
        
        <tr>
          <td align="center">
          <label>Склонение названия</label>
          </td>
          
          <td>
          <input type="text" onclick="return { oRequired : { iMin : 2 } }" name="bank_name2" value="<?=$bank->bank_name2?>" size="40" maxlength="250" class="zf">            
          </td>
        </tr>     
        
        <tr class="odd">
          <td align="center">
          <label>Юридическое название</label>
          </td>          
          <td>
          <input type="text" onclick="return { }" name="of_bank_name" value="<?=$bank->of_bank_name?>" size="40" maxlength="250" class="zf">            
          </td>
        </tr>             
        
        <tr>
          <td align="center">
          <label>Ссылка</label>
          </td>
          <td>
            <input type="text" onclick="return { oValid : { rPattern : /^[a-zA-Z0-9_-]*$/ }, oRequired : {} }" name="bank_aname" value="<?=$bank->bank_aname?>" size="40" maxlength="250" class="zf">
          </td>
        </tr>
        
        <tr class="odd">
            <td nowrap="nowrap" align="center"><label>Адрес офиса</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_office" value="<?=$bank->bank_office?>" size="40" maxlength="250" class="zf">
            </td>
        </tr>          
        
        <tr>
            <td align="center">
            <label>Описание</label>
            </td>
            <td>
            <textarea onclick="return { }" name="bank_desc" rows="7" cols="40" class="zf redactor_content" id="witheditor2"><?=$bank->bank_desc?></textarea>
            </td>
        </tr>     

        <tr class="odd">
            <td align="center"><p><label>Города присутствия</label></p>
              <p style="font-size:10px;">(в строчку через запятую)</p></td>
            <td>
              <textarea onclick="return { oRequired : { iMin : 3 } }" name="bank_city" rows="9" cols="70" dir="ltr" id="field_18_3" class="zf auto_city"><?=$bank->bank_city?></textarea>
            </td>
        </tr>                   

        <tr class="odd">
            <td align="center"><label>Телефон 8 800</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_telefon_free" value="<?=$bank->bank_telefon_free?>" size="40" maxlength="250" class="zf" >
            </td>
        </tr>  

        <tr>
            <td align="center"><label>Телефон в Москве</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_telefon_msk" value="<?=$bank->bank_telefon_msk?>" size="40" maxlength="250" class="zf" >
            </td>
        </tr>
        
        <tr class="odd">
            <td align="center"><label>Сайт</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_site" value="<?=$bank->bank_site?>" size="40" maxlength="250" class="zf" >
            </td>
        </tr>        

        <tr>
          <td align="center">Логотип</td>
          <td>
            <input type="file" name="userfile" value="" size="40" maxlength="250" class="zf" ><br>
						<img src="/images/b/<?=$bank->bank_logo?>">
          </td>
        </tr> 

        </tbody></table>  
        <input type="submit" value="Сохранить" name="add" class="zf zf-submit" style="display:block;"> 
</form>
</div>