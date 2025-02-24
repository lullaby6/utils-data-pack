$execute unless entity @a[distance=..50] run bossbar set utils:$(id) visible false

$bossbar set utils:$(id) players @a[distance=..50]

$bossbar set utils:$(id) visible true

$execute store result bossbar utils:$(id) value run data get entity @s Health