scoreboard objectives add utils.config dummy

scoreboard players set load utils.config 1
scoreboard players set version utils.config 2

scoreboard objectives add utils.entity.fire dummy
scoreboard objectives add utils.entity.hurt_time dummy
scoreboard objectives add utils.entity.health dummy

function utils:id/load

function utils:motion/load

function utils:random_tp/load

function utils:consts