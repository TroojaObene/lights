#give the controlling player controller tag
tag @s add controller

#give the selected light the selected tag
execute as @e[type=marker,tag=firework,tag=light] if score @s Light_Id = @p[tag=controller] selected_Id run tag @s add selected

#give the tag to the closest light
execute as @s at @s run tag @e[tag=light,limit=1,sort=nearest] add nearest_light

#tellraw @s "firework light selected"

##visualize the light
execute as @e[tag=selected] at @s run function lights:lights/firework/visualize

#empty lines
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"

#group edit
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text": "    "},{"text": "Group","color": "aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Groups are ammounts of fictures that you can select or visualize. Maybe even control","color": "aqua"}]}}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text": "     "},{"text": "[UP]","color": "green","clickEvent": {"action":"run_command","value": "/scoreboard players add @e[tag=light,limit=1,sort=nearest] Light_group 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Next group","color": "green"}]}}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text": "      "},{"score":{"objective": "Light_group","name": "@e[limit=1,tag=selected,tag=light]"},"color": "aqua","clickEvent": {"action":"suggest_command","value": "/scoreboard players set @e[tag=light,tag=firework,limit=1,sort=nearest] Light_group "},"hoverEvent":{"action":"show_text","contents":[{"text":"Type a custom group in!","color": "aqua"}]}}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text": "    "},{"text": "[Down]","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players remove @e[tag=light,limit=1,sort=nearest] Light_group 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Previous group","color": "red"}]}}]

#empty line
tellraw @s ""
#execute unless score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s "\n\n\n\n"

#gui
#selected light
tellraw @s ["",{"text": "Selected fixture Id:"},{"text": "  -","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players remove @s selected_Id 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Previous ficture","color": "aqua"}]}},{"text": " "},{"score":{"name":"@s","objective":"selected_Id"},"color": "aqua","clickEvent": {"action": "suggest_command","value": "/trigger selected_Id set "},"hoverEvent":{"action":"show_text","contents":[{"text":"type a new selector Id","color": "aqua"}]}},{"text": " "},{"text": "+  ","color": "green","clickEvent": {"action":"run_command","value": "/scoreboard players add @s selected_Id 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Next ficture","color": "aqua"}]}},{"text": "     "},{"text": "[CLEAR]","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players set @s selected_Id 0"},"hoverEvent": {"action": "show_text","contents": "Deselect the current light"}}]

#position
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"X:  ","color":"red"},{"text":"[-1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X-1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~-1 ~ ~"}},{"text":" "},{"text":"[-0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X-0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~-0.5 ~ ~"}},{"text":" "},{"text":"[-0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X-0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~-0.1 ~ ~"}},{"text":" "},{"text":"[+0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X+0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~0.1 ~ ~"}},{"text":" "},{"text":"[+0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X+0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~0.5 ~ ~"}},{"text":" "},{"text":"[+1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"X+1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~1 ~ ~"}},{"text":"   X:","color":"gold"},{"nbt":"Pos[0]","entity":"@e[tag=selected]","color":"gold"}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"Y:  ","color":"blue"},{"text":"[-1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y-1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~-1 ~"}},{"text":" "},{"text":"[-0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y-0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~-0.5 ~"}},{"text":" "},{"text":"[-0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y-0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~-0.1 ~"}},{"text":" "},{"text":"[+0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y+0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~0.1 ~"}},{"text":" "},{"text":"[+0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y+0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~0.5 ~"}},{"text":" "},{"text":"[+1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Y+1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~"}},{"text":"   Y:","color":"gold"},{"nbt":"Pos[1]","entity":"@e[tag=selected]","color":"gold"}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"Z:  ","color":"green"},{"text":"[-1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z-1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-1"}},{"text":" "},{"text":"[-0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z-0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.5"}},{"text":" "},{"text":"[-0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z-0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.1"}},{"text":" "},{"text":"[+0.1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z+0.1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.1"}},{"text":" "},{"text":"[+0.5]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z+0.5"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.5"}},{"text":" "},{"text":"[+1]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Z+1"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~1"}},{"text":"   Z:","color":"gold"},{"nbt":"Pos[2]","entity":"@e[tag=selected]","color":"gold"}]

#tellraw @s "\n"
#rotation
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"Yaw:  ","color":"green"},{"text":"[-45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-45 ~"}},{"text":" "},{"text":"[-15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-15 ~"}},{"text":" "},{"text":"[-1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-1 ~"}},{"text":" "},{"text":"[+1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~1 ~"}},{"text":" "},{"text":"[+15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~15 ~"}},{"text":" "},{"text":"[+45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~45 ~"}},{"text":" Yaw:","color":"gold"},{"nbt":"Rotation[0]","entity":"@e[tag=selected]","color":"gold"}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"Pitch: ","color":"red"},{"text":"[-45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-45"}},{"text":" "},{"text":"[-15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-15"}},{"text":" "},{"text":"[-1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-1"}},{"text":" "},{"text":"[+1°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~1"}},{"text":" "},{"text":"[+15°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~15"}},{"text":" "},{"text":"[+45°]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~45"}},{"text":" Pitch:","color":"gold"},{"nbt":"Rotation[1]","entity":"@e[tag=selected]","color":"gold"}]
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text":"[↑Up]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ -90"}},{"text":" "},{"text":"[→stragiht]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 0"}},{"text":" "},{"text":"[↓Down]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 90"}},{"text":"    "},{"text":"[↗Up_45]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ -45"}},{"text":" "},{"text":"[↘Down_45]","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 45"}},{"text":"    "},{"text":"[Reset]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Reset the light to an upright position","color": "red"}]},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=light,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ 0 -90"}}]

#wen not close enaugh
execute unless score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s ["",{"text":"The closest light is not the selected light, so you can't edit the Pos. and Rot. Please move closer","bold":true,"color":"red"},{"text":"\n","bold":true},{"text":"Selected id:","bold":true,"color":"aqua"},{"score":{"name":"@e[limit=1,tag=selected]","objective":"Light_Id"},"bold":true,"color":"aqua"},{"text":" Closest Id:","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Edit the closest light instead!","color": "green"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players operation @s selected_Id = @e[limit=1,sort=nearest,type=marker,tag=light] Light_Id"}},{"score":{"name":"@e[limit=1,tag=nearest_light]","objective":"Light_Id"},"bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Edit the closest light instead!","color": "green"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players operation @s selected_Id = @e[limit=1,sort=nearest,type=marker,tag=light] Light_Id"}}]

#with delete
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text": "\n"},{"text": "[DELETE]","color": "red","hoverEvent":{"action":"show_text","contents":[{"text":"By clicking this, you remove the light from existance. BE AWARE!","color": "red"}]},"clickEvent": {"action":"run_command","value": "/tag @e[limit=1,sort=nearest,type=marker,tag=light,tag=firework] add delete"}}]

#without delete
#execute unless score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s ""

#clear the tags
tag @e[type=marker,tag=light,tag=selected] remove selected
tag @e[type=marker,tag=light,tag=nearest_light] remove nearest_light
tag @a remove controller