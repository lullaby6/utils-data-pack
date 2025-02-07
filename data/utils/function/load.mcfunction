scoreboard objectives add utils.config dummy

scoreboard players set load utils.config 1
scoreboard players set version utils.config 3

scoreboard objectives add utils.player.xp.points dummy
scoreboard objectives add utils.player.xp.levels dummy
scoreboard objectives add utils.player.xp.total_points dummy

function utils:id/load

function utils:motion/load

function utils:random_tp/load

function utils:consts