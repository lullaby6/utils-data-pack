$scoreboard players add $(path) utils.storage.length 1

$data remove storage utils:storage/length $(path)[0]

$execute if data storage utils:storage/length $(path)[0] run function utils:storage/length/count {"path":"$(path)"}