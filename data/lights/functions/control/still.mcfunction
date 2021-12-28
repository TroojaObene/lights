execute if score @e[limit=1,type=marker,tag=still,tag=light] Light_Id = @s selected_Id run tag @e[limit=1,type=marker,tag=still,tag=light] add selected

tellraw @s "still light selected"

execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ~ ~ ~ 0.25 0.25 0.25 0 1 force @s

tag @e[limit=1,type=marker,tag=still,tag=light,tag=selected] remove selected