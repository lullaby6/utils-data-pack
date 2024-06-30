scoreboard objectives add utils.player.id dummy

execute unless score .id utils.player.id matches 0.. run scoreboard players set .id utils.player.id 1