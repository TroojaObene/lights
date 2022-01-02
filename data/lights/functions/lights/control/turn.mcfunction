tellraw @s [{"text":"Yaw:  ","color":"green"},{"text":"[-45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-45 ~"}},{"text":" "},{"text":"[-15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-15 ~"}},{"text":" "},{"text":"[-1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-1 ~"}},{"text":" "},{"text":"[+1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~1 ~"}},{"text":" "},{"text":"[+15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~15 ~"}},{"text":" "},{"text":"[+45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~45 ~"}},{"text":" Yaw:","color":"gold"},{"nbt":"Rotation[0]","entity":"@e[tag=selected]","color":"gold"}]
tellraw @s [{"text":"Pitch: ","color":"red"},{"text":"[-45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-45"}},{"text":" "},{"text":"[-15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-15"}},{"text":" "},{"text":"[-1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-1"}},{"text":" "},{"text":"[+1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~1"}},{"text":" "},{"text":"[+15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~15"}},{"text":" "},{"text":"[+45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~45"}},{"text":" Pitch:","color":"gold"},{"nbt":"Rotation[1]","entity":"@e[tag=selected]","color":"gold"}]
tellraw @s [{"text":"[↑Up]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ -90"}},{"text":" "},{"text":"[→stragiht]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 0"}},{"text":" "},{"text":"[↓Down]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 90"}},{"text":"    "},{"text":"[↗Up_45]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ -45"}},{"text":" "},{"text":"[↘Down_45]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 45"}},{"text":"    "},{"text":"[Reset]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Reset the light to an upright position","color": "red"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ 0 -90"}}]
