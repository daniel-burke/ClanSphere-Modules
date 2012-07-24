<?php
// ClanSphere 2010 - www.clansphere.net
// Id: com_create.php (Tue Nov 18 10:34:52 CET 2008) fAY-pA!N

$cs_lang = cs_translate('replays');
$cs_post = cs_post('fid');
$cs_get = cs_get('id');

$fid = empty($cs_post['fid']) ? 0 : $cs_post['fid'];
$quote_id = empty($cs_get['id']) ? 0 : $cs_get['id'];

$cs_replays = cs_sql_select(__FILE__,'replays','replays_close, replays_access',"replays_id = '" . $fid . "'");
if ($cs_replays['replays_access'] == '0' || $account['access_replays'] < $cs_replays['replays_access'])
{
	echo $cs_lang['no_access'];
	return;
}

require_once('mods/comments/functions.php');
cs_commments_create($fid,'replays','view',$quote_id,$cs_lang['mod_name'],$cs_replays['replays_close']);