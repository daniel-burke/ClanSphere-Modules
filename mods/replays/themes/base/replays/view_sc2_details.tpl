<table cellpadding="1" cellspacing="1" style="width: 100%;">
	{loop:details}
	<tr>
	<td>{details:player_raceicon}</td>
	<td><font color="{details:player_color}">{details:player_name}</font></td>
	</tr>
	<tr>
	<td></td>
	<td>{details:player_details}</td>
	</tr>
	{stop:details}
</table>