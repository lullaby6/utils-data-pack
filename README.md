# Utils Data-Pack

Version: 2

## Table of Contents

- [Commands](#commands)
- [Predicates](#predicates)
- [Motion](#motion)
- [Player Score ID](#player_score_id)
- [Entitiy Tags](#entity_tags)

## Commands

### Global

Clear chat for all players:

```
/function utils:global/clear_chat
```

Hide sidebar:

```
/function utils:global/hide_sidebar
```

### Entity

Despawn an entity/mob:

```
/execute as @n[type=zombie] run function utils:entity/despawn
```

Reset entity/mob/player all attributes:

```
/execute as @n[type=zombie] run function utils:entity/reset_all_attributes
```

### Player

Clear chat for player:

```
/function utils:player/clear_chat
```

Reset XP (points and levels):

```
/function utils:player/reset_xp
```

Random TP for voids worlds:

```
/function utils:player/random_tp
```

## Predicates

- can/see_sky
- has/effect/<effect_name> (speed, regeneration, ...)
- has/passenger
- in/biome/<biome_name>
- in/dimension/<dimension_name> (overworld, the_nether, the_end)
- in/light/<light_level> (0, 5, 10, 15, 0-5, 5-10, ...)
- is/raining
- is/thundering
- is/baby
- is/falling
- is/flying
- is/ground
- is/on_fire
- is/riding
- is/sneaking
- is/sprinting
- is/swimming
- random/<random_chance> <0.1 (10%), 0.5 (50%), ...>

Example:

```
/execute as @s if predicate utils:is/on_fire run say I am on fire D:
```

## Motion

Example:

```
function utils:motion/calc

execute anchored eyes run summon fireball ^ ^ ^.5 {Tags:["fireball"]}

data modify entity @n[tag=fireball] Owner set from entity @s UUID

execute store result entity @n[tag=fireball] Motion[0] double -0.00025 run scoreboard players get @s utils.motion.mx
execute store result entity @n[tag=fireball] Motion[1] double -0.00025 run scoreboard players get @s utils.motion.my
execute store result entity @n[tag=fireball] Motion[2] double -0.00025 run scoreboard players get @s utils.motion.mz

tag @n[tag=fireball] remove fireball
```

## Player Score ID

Get the player score ID:

```
/scoreboard players get @s utils.player.id
```

## Entity Tags

- team_player

Example:

```
/effect give @e[type=#utils:team_player] glowing 1 0
```