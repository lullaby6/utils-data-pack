data modify storage utils:storage 0 set from entity @s UUID[0]
data modify storage utils:storage 1 set from entity @s UUID[1]
data modify storage utils:storage 2 set from entity @s UUID[2]
data modify storage utils:storage 3 set from entity @s UUID[3]
$data modify storage utils:storage path set value "$(path)"

function utils:player/storage/macro/remove/data with storage utils:storage

data remove storage utils:storage 0
data remove storage utils:storage 1
data remove storage utils:storage 2
data remove storage utils:storage 3
data remove storage utils:storage path