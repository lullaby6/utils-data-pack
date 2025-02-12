data modify storage utils:advancement function set from storage utils:advancement_copy entity_hurt_player[0]
data remove storage utils:advancement_copy entity_hurt_player[0]
function utils:macro/function with storage utils:advancement
data remove storage utils:advancement function

$execute if data storage utils:advancement_copy $(advancement)[0] run function utils:advancement/function {"advancement":"$(advancement)"}