function utils:player/id/tick

tag @e[type=#utils:team_player] add utils.team_player
tag @a[gamemode=creative] remove utils.team_player
tag @a[gamemode=spectator] remove utils.team_player

execute as @a at @s if dimension minecraft:overworld if entity @s[y=-80,dy=10] run tp ~ 100 ~