# Utils

DP Version: `4`

MC Version: `1.21.X`

## Features

- Global Commands
- Entity Commands
- Player Commands
- Motion Entity in Direction
- Predicates
- Item Modifiers
- Player Score ID
- Entity Tags
- Consts Scores
- Macro Functions
- Custom Use Remainder

## Commands

### Global

Clear chat for all players:

```mcfunction
/function utils:global/clear_chat
```

Hide sidebar:

```mcfunction
/function utils:global/hide_sidebar
```

### Entity

Despawn an entity/mob:

```mcfunction
/execute as @n[type=zombie] run function utils:entity/despawn
```

Reset entity/mob/player all attributes:

```mcfunction
/execute as @n[type=zombie] run function utils:entity/reset_all_attributes
```

Remove fire from entity:

```mcfunction
/execute as @n[type=zombie] run function utils:entity/remove_fire
```

Heal full:

```mcfunction
/execute as @n[type=iron_golem] run function utils:entity/heal_full
```

### Player

Clear chat for player:

```mcfunction
/function utils:player/clear_chat
```

Reset XP (points and levels):

```mcfunction
/function utils:player/xp/reset
```

Get all XP Points:

```mcfunction
/function utils:player/xp/get_all_points
```

The function return the all xp points and they are saved in the score `utils.player.xp.total_points`

Random TP for voids worlds:

```mcfunction
/function utils:player/random_tp
```

## Motion

```mcfunction
function utils:motion/calc

summon fireball ^ ^ ^.5

execute store result entity @n[type=fireball] Motion[0] double -0.00025 run scoreboard players get @s utils.motion.mx
execute store result entity @n[type=fireball] Motion[1] double -0.00025 run scoreboard players get @s utils.motion.my
execute store result entity @n[type=fireball] Motion[2] double -0.00025 run scoreboard players get @s utils.motion.mz
```

or you can use the Storage and Macro method:

```mcfunction
function utils:motion/storage {"value":"-0.00025"}

summon fireball ^ ^ ^.5

data modify entity @n[type=fireball] Motion set from storage utils:motion motion
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

```mcfunction
/execute as @s if predicate utils:is/on_fire run say I am on fire D:
```

## Item Modifiers

- count
    - count/add/<amount>
    - count/remove/<amount>
    - count/set/<amount>
- enchantment_glint_override/<boolean>
- rarity/<rarity_name>
- tooltip/<tooltip_name>/<show | hide>
- use_cooldown/<tine> (1s, 1m, 1h, etc...)
- clear_bundle
- clear_container
- death_protection
- enchant_randomly_compatible
- enchant_randomly
- furnace_smelt
- glider
- hide_additional_tooltip
- hide_tooltip
- non_consumable
- one_use
- remove_container_loot
- repair
- unbrekeable

Example:

```mcfunction
/execute if items entity @s weapon.mainhand minecraft:raw_iron run item modify entity @s weapon.mainhand utils:furnace_smelt
```

## Player Score ID

Get the player score ID:

```mcfunction
/scoreboard players get @s utils.player.id
```

## Entity Tags

- animals
- aquatics_animals
- aquatics_real_animals
- aquatics
- arthropods
- bosses
- cows
- end
- fishs
- flyers_hostile
- flyers
- hostiles
- humanoids
- illagers
- monsters
- insects
- nether
- neutrals
- passives
- piglins
- proyectiles
- real_animals
- rideables_animals
- rideables
- slimes
- spiders
- tameables
- undead
- villagers_hostiles
- villagers
- zombiess
- team_player

Example:

```mcfunction
/effect give @e[type=#utils:team_player] glowing 1 0
```

## Consts

There are constants from 0 to 1000.

You can check and get the const value running this command:

```mcfunction
/scoreboard players get <number> utils.const
```

Usage example:

```mcfunction
/scoreboard players get 1 utils.const
```

## Player Data Storage

### Create data

Exist two ways to create or add data to a path, `set` and `append`, when you use `set`, the absolute value of the path will be the `data` arg,
and for `append`, the path will be an array, and will append the data arg.

```mcfunction
# absolute
/function utils:player/storage/set {"path":"lives","data":3}
/function utils:player/storage/set {"path":"name","data":'"lullaby6"'}

# array
/function utils:player/storage/append {"path":"deaths","data":1}
/function utils:player/storage/append {"path":"deaths","data":2}
/function utils:player/storage/append {"path":"deaths","data":3}
```

### Run function with Player's data

When you use the `player/storage/function` all data/args from player's storage will be received to the function like macro args.

```mcfunction
/function utils:player/storage/function {"function":"namespace:say_lives"}
```

say_lives.mcfunction:
```mcfunction
$say $(lives)
```

### Remove data

```mcfunction
/function utils:player/storage/remove/data {"path":"lives"}
/function utils:player/storage/remove/data {"path":"name"}
/function utils:player/storage/remove/first {"path":"deaths"}
/function utils:player/storage/remove/index {"path":"deaths","index":1}
```

## License

MIT