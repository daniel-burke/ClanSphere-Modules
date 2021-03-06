<table class="forum" cellpadding="0" cellspacing="{page:cellspacing}" style="width:{page:width}">
 <tr>
  <td class="headb">{lang:mod} - {lang:create}</td>
 </tr>
 <tr>
  <td class="leftc">{var:message}</td>
 </tr>
</table>
<br />

<script type="text/javascript" src="{page:path}mods/bets/js/bets.js"></script>
<form name="create" method="post" id="bets_create" action="{url:bets_create}">
<table class="forum" cellpadding="0" cellspacing="{page:cellspacing}" style="width:{page:width}">
 <tr>
  <td class="leftc">{icon:package_games} {lang:auto_title}</td>
  <td class="leftb"><input type="checkbox" name="bets_auto_title" value="1" {value:bets_auto_title_checked} /> [<b>{value:option_auto_title_separator}</b>]</td>
 </tr>
 <tr>
  <td class="leftc">{icon:package_games} {lang:title}</td>
  <td class="leftb">
    <input type="text" name="bets_title" value="{value:title}" maxlength="80" size="50"  />
  </td>
 </tr>
  <tr>
  <td class="leftc">{icon:1day} {lang:start_date}</td>
  <td class="leftb">{dropdown:date_start}</td>
 </tr>
  <tr>
  <td class="leftc">{icon:1day} {lang:end_date} *</td>
  <td class="leftb">{dropdown:date_end}</td>
 </tr>
 <tr>
  <td class="leftc">{icon:folder_yellow} {lang:category} *</td>
  <td class="leftb">
    <select name="categories_id" >
     <option value="0">----</option>
     {categories:choose}
    </select> - 
    <input type="text" name="categories_name" value="" maxlength="80" size="20"  />
  </td>
 </tr>
	<tr>
      <td class="leftc" valign="top">{icon:bets} {lang:quote_type}</td>
      <td class="leftb"><select id="bets_quote_type" name="bets_quote_type" onChange="cs_bet_toggle_quote(this)">{value:quote_type_options}</select><br />{lang:quote_type_explain}</td>
    </tr>
 <tr>
	<td class="leftc" valign="top">
    	{icon:kdmconfig} {lang:contestant} *
    </td>
	<td class="leftb" id="check_tr">
        <div style="margin-bottom:10px">{lang:min_contestants}</div>
        <table cellpadding="0" border="0" cellspacing="0" style="padding:10px;">
        	<tr>
            	<td style="padding-right:8px;">{icon:yast_user_add}{lang:name}:</td>
                <td><input type="text" name="contestant[]" value="{contestant:value0}" maxlength="80" size="20"  /> {lang:or} Clan:
                    {bets:clan_sel0}
                    - <a href="{url:clans_create}">{lang:create}</a></td>
			</tr>
            <tr class="bet_quote" style="visibility:collapse;">
                <td>{icon:agt_reload} {lang:bets_quote}:</td>
                <td><input type="text" name="quote[]" style="text-align:center;" value="2" maxlength="40" size="10" /></td>
         	</tr>
 		</table>
        <table cellpadding="0" border="0" cellspacing="0" style="padding:10px;">
        	<tr>
            	<td style="padding-right:8px;">{icon:yast_user_add} {lang:name}:</td>
                <td><input type="text" name="contestant[]" value="{contestant:value1}" maxlength="80" size="20"  /> {lang:or} Clan:
                    {bets:clan_sel1}
                    - <a href="{url:clans_create}">{lang:create}</a></td>
			</tr>
            <tr class="bet_quote" style="visibility:collapse;">
                <td>{icon:agt_reload} {lang:bets_quote}:</td>
                <td><input type="text" name="quote[]" style="text-align:center;" value="2" maxlength="40" size="10"  /></td>
         	</tr>
 		</table>
         <input style="margin-top:10px;" type="button" value="{lang:add_contestant}" onclick="cs_bet_add_contestant(this)">
         <input type="button" value="{lang:remove_contestant}" onclick="cs_bet_remove_contestant(this)">
	</td>
	</tr>
	<tr>
		<td class="leftc" valign="top">{icon:1day} {lang:draw}</td>
		<td class="leftb">
	    	<p><input type="checkbox" name="bets_enable_draw" value="1" {value:bets_enable_draw_checked} /> {lang:accept_draw} </p>
			<p>{icon:agt_reload} {lang:bets_quote}: <input type="text" name="draw_quote" style="text-align:center;" value="4" maxlength="40" size="10"  /></p>
	    </td>
	</tr>
	<tr>
	    <td class="leftc">{icon:kate} {lang:description}
	        <br /><br />
	        {abcode:smileys}
	    </td>
	    <td class="leftb">{abcode:features}
	        <br />
	        <textarea name="bets_description" cols="50" rows="8" id="wars_report" >{value:report}</textarea>
	    </td>
	</tr>
	 	<tr>
		<td class="leftc">{icon:configure} {lang:more}</td>
		<td class="leftb"><input type="checkbox" name="bets_com_close" value="1" {value:bets_com_close_checked} /> {lang:com_close}</td>
	</tr>
	<tr>
		<td class="leftc">{icon:ksysguard} {lang:options}</td>
	  	<td class="leftb">
	        <input type="hidden" name="players" value="{form:players}"  />
	        <input type="submit" name="submit" value="{lang:create}"  />
	        <input type="reset" name="reset" value="{lang:reset}" />
	  	</td>
	</tr>
</table>
</form>
<script type="text/javascript" src="{page:path}mods/bets/js/bets_init.js"></script>
