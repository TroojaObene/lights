#display the particles
execute at @e[type=marker,tag=light,tag=selected] run particle dust 0 1 0 2 ~ ~ ~ 0.15 0.15 0.15 0 1 force @s
#execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ~ ~ ~ ^ ^ ^1 0.1 0 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ^ ^ ^3 0 0 0 0 1 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ^ ^ ^6 0 0 0 0 1 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ^ ^ ^9 0.5 0.5 0.5 0.025 1 force @s