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