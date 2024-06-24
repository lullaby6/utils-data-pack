function utils:id/tick

tag @e[type=#utils:team_player,gamemode=!creative,gamemode=!spectator] add utils.team_player
tag @a[gamemode=creative] remove utils.team_player
tag @a[gamemode=spectator] remove utils.team_player