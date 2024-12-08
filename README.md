# Utils Data-Pack

Version: 2

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