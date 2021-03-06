<?php
// ClanSphere 2010 - www.clansphere.net
// $Id$

$cs_lang = cs_translate('cups');

include_once 'mods/cups/defines.php';

$data = array();

$games_id = !empty($_GET['id']) ? (int) $_GET['id'] : 0;
$games_id = !empty($_POST['games_id']) ? (int) $_POST['games_id'] : $games_id;

$data_games = cs_sql_select(__FILE__,'games','games_name, games_id',0,'games_name',0,0);
$data['games'] = cs_dropdownsel($data_games,$games_id,'games_id');

$cells  = 'cp.cups_id AS cups_id, cp.cups_access AS cups_access, cp.cups_name AS cups_name, '
        . 'cp.cups_start AS cups_start, cp.games_id AS games_id, '
        . 'cp.cups_teams AS cups_teams, COUNT(cs.cupsquads_id) AS cups_joined';
$tables = 'cups cp LEFT JOIN {pre}_cupsquads cs ON cp.cups_id = cs.cups_id';
$groups = ' GROUP BY cp.cups_id, cp.cups_name, cp.cups_start, cp.games_id, cp.cups_teams';
$where  = 'cp.cups_access > 0 AND cp.cups_access <= '.$account['access_cups'];
$where2 = $where;

if (empty($games_id))
  $where2 .= $groups;
else
  $where2 .= ' AND cp.games_id = ' . $games_id . $groups;

$data['cups'] = cs_sql_select(__FILE__,$tables, $cells, $where2,'cp.cups_start DESC',0,$account['users_limit']);
$data['count']['all'] = cs_sql_count(__FILE__,'cups cp', $where);
$count_cups = count($data['cups']);

for ($run = 0; $run < $count_cups; $run++) {
  $data['cups'][$run]['games_img'] = cs_html_img('uploads/games/' . $data['cups'][$run]['games_id'] . '.gif');
  $data['cups'][$run]['start'] = cs_date('unix',$data['cups'][$run]['cups_start'],1);
  $data['cups'][$run]['percentage_reg'] = (int) (100 * $data['cups'][$run]['cups_joined'] / $data['cups'][$run]['cups_teams']);
  if ($data['cups'][$run]['percentage_reg'] > 100)
  	$data['cups'][$run]['percentage_reg'] = 100;
  $data['cups'][$run]['percentage_open'] = 100 - $data['cups'][$run]['percentage_reg'];
}

echo cs_subtemplate(__FILE__,$data,'cups','list');
