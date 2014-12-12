<div class="gray_box">
<b>Добавить банк</b>
<form enctype="multipart/form-data" class="webform zf" name="add_bank" method="post" action="/banks/save/"> 

<table cellspacing="1" cellpadding="2" border="0" width="90%" align="center">
        <tbody>

        <tr class="odd">
          <td align="center">
          <label>Название</label>
          </td>
          
          <td>
          <input type="text" onclick="return { oRequired : { iMin : 2 } }" name="bank_name" value="" size="40" maxlength="250" class="zf">            
          </td>
        </tr>
        
        <tr>
          <td align="center">
          <label>Склонение названия</label>
          </td>
          
          <td>
          <input type="text" onclick="return { oRequired : { iMin : 2 } }" name="bank_name2" value="" size="40" maxlength="250" class="zf">            
          </td>
        </tr>   

        <tr class="odd">
          <td align="center">
          <label>Юридическое название</label>
          </td>          
          <td>
          <input type="text" onclick="return { }" name="of_bank_name" value="" size="40" maxlength="250" class="zf">            
          </td>
        </tr>           
        
        <tr>
          <td align="center">
          <label>Ссылка</label>
          </td>
          <td>
            <input type="text" onclick="return { oValid : { rPattern : /^[a-zA-Z0-9_-]*$/ }, oRequired : {} }" name="bank_aname" value="" size="40" maxlength="250" class="zf">
          </td>
        </tr>
        
        <tr class="odd">
            <td nowrap="nowrap" align="center"><label>Адрес офиса</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_office" value="" size="40" maxlength="250" class="zf">
            </td>
        </tr>          
        
        <tr>
            <td align="center">
            <label>Описание</label>
            </td>
            <td>
            <textarea onclick="return { }" name="bank_desc" rows="7" cols="40" class="zf redactor_content" id="witheditor2"></textarea>
            </td>
        </tr>        

        <tr>
            <td align="center">
            <label>Филиалы</label>
            </td>
            <td>
            <textarea onclick="return { }" name="bank_filials" rows="7" cols="40" class="zf redactor_content" id="witheditor2"></textarea>
            </td>
        </tr>                       

        <tr class="odd">
            <td align="center"><p><label>Города присутствия</label></p>
              <p style="font-size:10px;">(в строчку через запятую)</p></td>
            <td>
              <textarea onclick="return { oRequired : { iMin : 3 } }" name="bank_city" rows="7" cols="40" dir="ltr" class="zf auto_city"></textarea>
            </td>
        </tr> 
        
        <tr class="odd">
            <td align="center"><label>Телефон 8 800</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_telefon_free" value="" size="40" maxlength="250" class="zf" >
            </td>
        </tr> 

        <tr>
            <td align="center"><label>Телефон в Москве</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_telefon_msk" value="" size="40" maxlength="250" class="zf" >
            </td>
        </tr>

        <tr class="odd">
            <td align="center"><label>Сайт</label></td>
            <td>
              <input type="text" onclick="return { oRequired : { iMin : 5 } }" name="bank_site" value="" size="40" maxlength="250" class="zf" >
            </td>
        </tr>        

        <tr>
          <td align="center">Логотип</td>
          <td>
            <input type="file" name="userfile" value="" size="40" maxlength="250" class="zf" >
          </td>
        </tr>  


        
        <tr>
          <td align="center"></td>
          <td align="center"><input type="submit" value="Добавить" name="add" class="zf zf-submit btn"> </td>          
        </tr>            
        
        
        </tbody></table>  
        
</form>
</div>



