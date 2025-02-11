function utils:motion/storage {"value":"-0.00025"}

execute anchored eyes run summon fireball ^ ^ ^.5 {Tags:["fireball"]}

data modify entity @n[tag=fireball] Owner set from entity @s UUID

data modify entity @n[tag=fireball] Motion set from storage utils:motion motion

tag @n[tag=fireball] remove fireball