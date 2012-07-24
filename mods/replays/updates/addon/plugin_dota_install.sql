CREATE TABLE {pre}_replays_dota (
  replays_dota_id {serial},
  replays_id int(8) NOT NULL default '0',
	replays_dota_w3type varchar(4) NOT NULL default '',
  replays_dota_version varchar(20) NOT NULL default '',
  replays_dota_length int(8) NOT NULL default '0',
  replays_dota_gametype varchar(40) NOT NULL default '',
  replays_dota_mapname varchar(80) NOT NULL default '',
  replays_dota_gateway varchar(12) NOT NULL default '',
  replays_dota_winner int(2) NOT NULL default 0,
  replays_dota_hoster varchar(25) NOT NULL default '',
  replays_dota_saver varchar(25) NOT NULL default '',
	replays_dota_observers mediumblob NOT NULL,
 	replays_dota_bans mediumblob NOT NULL,
 	replays_dota_picks mediumblob NOT NULL,
	replays_dota_team01_name varchar(160) NOT NULL default '',
  replays_dota_team01_race char(2) NOT NULL default '',
  replays_dota_team01_details mediumblob NOT NULL,
	replays_dota_team02_name varchar(160) NOT NULL default '',
  replays_dota_team02_race char(2) NOT NULL default '',
  replays_dota_team02_details mediumblob NOT NULL,
  replays_dota_slot01_name varchar(25) NOT NULL default '',
  replays_dota_slot01_team int(2) NOT NULL default 0,
  replays_dota_slot01_details mediumblob NOT NULL,
  replays_dota_slot02_name varchar(25) NOT NULL default '',
  replays_dota_slot02_team int(2) NOT NULL default 0,
  replays_dota_slot02_details mediumblob NOT NULL,
  replays_dota_slot03_name varchar(25) NOT NULL default '',
  replays_dota_slot03_team int(2) NOT NULL default 0,
  replays_dota_slot03_details mediumblob NOT NULL,
  replays_dota_slot04_name varchar(25) NOT NULL default '',
  replays_dota_slot04_team int(2) NOT NULL default 0,
  replays_dota_slot04_details mediumblob NOT NULL,
  replays_dota_slot05_name varchar(25) NOT NULL default '',
  replays_dota_slot05_team int(2) NOT NULL default 0,
  replays_dota_slot05_details mediumblob NOT NULL,
  replays_dota_slot06_name varchar(25) NOT NULL default '',
  replays_dota_slot06_team int(2) NOT NULL default 0,
  replays_dota_slot06_details mediumblob NOT NULL,
  replays_dota_slot07_name varchar(25) NOT NULL default '',
  replays_dota_slot07_team int(2) NOT NULL default 0,
  replays_dota_slot07_details mediumblob NOT NULL,
  replays_dota_slot08_name varchar(25) NOT NULL default '',
  replays_dota_slot08_team int(2) NOT NULL default 0,
  replays_dota_slot08_details mediumblob NOT NULL,
  replays_dota_slot09_name varchar(25) NOT NULL default '',
  replays_dota_slot09_team int(2) NOT NULL default 0,
  replays_dota_slot09_details mediumblob NOT NULL,
  replays_dota_slot10_name varchar(25) NOT NULL default '',
  replays_dota_slot10_team int(2) NOT NULL default 0,
  replays_dota_slot10_details mediumblob NOT NULL,
  replays_dota_slot11_name varchar(25) NOT NULL default '',
  replays_dota_slot11_team int(2) NOT NULL default 0,
  replays_dota_slot11_details mediumblob NOT NULL,
  replays_dota_slot12_name varchar(25) NOT NULL default '',
  replays_dota_slot12_team int(2) NOT NULL default 0,
  replays_dota_slot12_details mediumblob NOT NULL,
  replays_dota_chat_log mediumblob NOT NULL,
  PRIMARY KEY (replays_dota_id)
){engine};

INSERT INTO {pre}_options (options_mod, options_name, options_value) VALUES ('replays_dota', 'games_ids', '');
INSERT INTO {pre}_options (options_mod, options_name, options_value) VALUES ('replays_dota', 'overwrite', 'map,version');
INSERT INTO {pre}_options (options_mod, options_name, options_value) VALUES ('replays_dota', 'color_sentinel', '3366FF');
INSERT INTO {pre}_options (options_mod, options_name, options_value) VALUES ('replays_dota', 'color_scourge', 'FF99FF');
