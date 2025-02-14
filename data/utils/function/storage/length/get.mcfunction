$scoreboard players set $(path) utils.storage.length 0

$data modify storage utils:storage/length $(path) set from storage $(storage) $(path)

$execute if data storage utils:storage/length $(path)[0] run function utils:storage/length/count {"path":"$(path)"}

$data remove storage utils:storage/length $(path)

$return run scoreboard players get $(path) utils.storage.length