#give the controlling player controller tag
tag @s add controller

#give the selected light the selected tag
execute as @e[type=marker,tag=still,tag=light] if score @s Light_Id = @p[tag=controller] selected_Id run tag @s add selected

#give the tag to the closest light
execute as @s at @s run tag @e[tag=light,limit=1,sort=nearest] add nearest_light

#tellraw @s "still light selected"

#display the particles
execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ~ ~ ~ 0.15 0.15 0.15 0 1 force @s
#execute at @e[type=marker,tag=light,tag=selected] run particle end_rod ~ ~ ~ ^ ^ ^1 0.1 0 force @s
execute at @e[type=marker,tag=light,tag=selected] run particle totem_of_undying ^ ^ ^3 0 0 0 0 1 force @s

#empty lines
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"

#gui
#selected light
tellraw @s ["",{"text": "Selected light Id:"},{"text": "  -","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players remove @s selected_Id 1"}},{"score":{"name":"@s","objective":"selected_Id"},"color": "aqua"},{"text": "+  ","color": "green","clickEvent": {"action":"run_command","value": "/scoreboard players add @s selected_Id 1"}},{"text": "     "},{"text": "[CLEAR]","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players set @s selected_Id 0"},"hoverEvent": {"action": "show_text","contents": "Deselect the current light"}}]

#position
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"X:","color":"gold"},{"nbt":"Pos[0]","entity":"@e[tag=selected]","color":"gold"},{"text":"   "},{"text":"[-1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X-1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~-1 ~ ~"}},{"text":" "},{"text":"[-0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X-0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~-0.5 ~ ~"}},{"text":" "},{"text":"[-0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X-0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~-0.1 ~ ~"}},{"text":" "},{"text":"[+0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X+0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~0.1 ~ ~"}},{"text":" "},{"text":"[+0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X+0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~0.5 ~ ~"}},{"text":" "},{"text":"[+1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X+1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~1 ~ ~"}}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"Y:","color":"gold"},{"nbt":"Pos[1]","entity":"@e[tag=selected]","color":"gold"},{"text":"   "},{"text":"[-1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y-1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~-1 ~"}},{"text":" "},{"text":"[-0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y-0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~-0.5 ~"}},{"text":" "},{"text":"[-0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y-0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~-0.1 ~"}},{"text":" "},{"text":"[+0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y+0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~0.1 ~"}},{"text":" "},{"text":"[+0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y+0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~0.5 ~"}},{"text":" "},{"text":"[+1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y+1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~"}}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"Z:","color":"gold"},{"nbt":"Pos[2]","entity":"@e[tag=selected]","color":"gold"},{"text":"   "},{"text":"[-1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z-1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-1"}},{"text":" "},{"text":"[-0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z-0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.5"}},{"text":" "},{"text":"[-0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z-0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.1"}},{"text":" "},{"text":"[+0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z+0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.1"}},{"text":" "},{"text":"[+0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z+0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.5"}},{"text":" "},{"text":"[+1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z+1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~1"}}]

tellraw @s "\n"
#rotation
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s "Pitch"
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s "yaw"

#wen not close enaugh
execute unless score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @a ["",{"text":"The closest light is not the selected light, so you can't edit the pos and rot currently, please move closer","bold":true,"color":"red"},{"text":"\n","bold":true},{"text":"Selected id:","bold":true,"color":"aqua"},{"score":{"name":"@e[limit=1,tag=selected]","objective":"Light_Id"},"bold":true,"color":"aqua"},{"text":" Closest Id:","bold":true,"color":"gold"},{"score":{"name":"@e[limit=1,tag=nearest_light]","objective":"Light_Id"},"bold":true,"color":"gold"}]




#clear the tags
tag @e[type=marker,tag=light,tag=selected] remove selected
tag @e[type=marker,tag=light,tag=nearest_light] remove nearest_light
tag @a remove controller