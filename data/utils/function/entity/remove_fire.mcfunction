effect give @s minecraft:fire_resistance 1 0 true

execute store result score @s utils.entity.fire run data get entity @s Fire

execute if score @s utils.entity.fire matches -19.. run data modify entity @s Fire set value -1000

scoreboard players reset @s utils.entity.fire