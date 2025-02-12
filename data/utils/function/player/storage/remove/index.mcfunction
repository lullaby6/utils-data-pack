execute store result storage utils:storage 0 int 1 run scoreboard players get @s utils.player.uuid.0
execute store result storage utils:storage 1 int 1 run scoreboard players get @s utils.player.uuid.1
execute store result storage utils:storage 2 int 1 run scoreboard players get @s utils.player.uuid.2
execute store result storage utils:storage 3 int 1 run scoreboard players get @s utils.player.uuid.3
$data modify storage utils:storage path set value "$(path)"
$data modify storage utils:storage index set value "$(index)"

function utils:player/storage/macro/remove/index with storage utils:storage

data remove storage utils:storage 0
data remove storage utils:storage 1
data remove storage utils:storage 2
data remove storage utils:storage 3
data remove storage utils:storage path
data remove storage utils:storage index