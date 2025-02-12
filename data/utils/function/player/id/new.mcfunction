execute store result score @s utils.player.id run scoreboard players get .id utils.player.id

scoreboard players add .id utils.player.id 1

execute store result score @s utils.player.uuid.0 run data get entity @s UUID[0]
execute store result score @s utils.player.uuid.1 run data get entity @s UUID[1]
execute store result score @s utils.player.uuid.2 run data get entity @s UUID[2]
execute store result score @s utils.player.uuid.3 run data get entity @s UUID[3]