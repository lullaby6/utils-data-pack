execute store result storage utils:storage 0 int 1 run scoreboard players get @s utils.player.uuid.0
execute store result storage utils:storage 1 int 1 run scoreboard players get @s utils.player.uuid.1
execute store result storage utils:storage 2 int 1 run scoreboard players get @s utils.player.uuid.2
execute store result storage utils:storage 3 int 1 run scoreboard players get @s utils.player.uuid.3
$data modify storage utils:storage storage set value "$(storage)"
$data modify storage utils:storage path set value "$(path)"

function utils:player/storage/macro/remove_first with storage utils:storage

data remove storage utils:storage 0
data remove storage utils:storage 1
data remove storage utils:storage 2
data remove storage utils:storage 3
data remove storage utils:storage storage
data remove storage utils:storage path