#display the particles
execute at @e[type=marker,tag=light,tag=selected] run particle dust 0.635 0 1 2 ~ ~ ~ 0.15 0.15 0.15 0 1 force @s
#execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ~ ~ ~ ^ ^ ^1 0.1 0 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ^ ^ ^2 0 0 0 0 1 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ^ ^ ^4 0 0 0 0 1 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ^ ^ ^8 0 0 0 0 1 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ^ ^ ^16 0 0 0 0 1 force @s