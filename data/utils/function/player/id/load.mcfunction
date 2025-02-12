scoreboard objectives add utils.player.id dummy

execute unless score .id utils.player.id matches 0.. run scoreboard players set .id utils.player.id 1

scoreboard objectives add utils.player.uuid.0 dummy
scoreboard objectives add utils.player.uuid.1 dummy
scoreboard objectives add utils.player.uuid.2 dummy
scoreboard objectives add utils.player.uuid.3 dummy