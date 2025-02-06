function utils:id/tick

tag @e[type=#utils:team_player] add utils.team_player
tag @a[gamemode=creative] remove utils.team_player
tag @a[gamemode=spectator] remove utils.team_player

execute as @e[tag=utils.entity.fire_inmunity] run function utils:entity/remove_fire
execute as @e[tag=utils.entity.hurt_time] store result score @s utils.entity.hurt_time run data get entity @s HurtTime
execute as @e[tag=utils.entity.fire] store result score @s utils.entity.fire run data get entity @s Fire
execute as @e[tag=utils.entity.health] store result score @s utils.entity.health run data get entity @s Health