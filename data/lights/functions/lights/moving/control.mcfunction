#give the controlling player controller tag
tag @s add controller

#give the selected light the selected tag
execute as @e[type=marker,tag=moving,tag=light] if score @s Light_Id = @p[tag=controller] selected_Id run tag @s add selected

#give the tag to the closest light
execute as @s at @s run tag @e[tag=light,limit=1,sort=nearest] add nearest_light

#tellraw @s "moving light selected"

##visualize the light
execute at @e[tag=selected] run function lights:lights/moving/visualize

#empty lines
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"

#group edit
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run function lights:lights/control/group

#empty line
tellraw @s ""
#execute unless score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s "\n\n\n\n"

#gui
#selected light
tellraw @s ["",{"text": "Selected fixture Id:"},{"text": "  -","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players remove @s selected_Id 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Previous ficture","color": "aqua"}]}},{"text": " "},{"score":{"name":"@s","objective":"selected_Id"},"color": "aqua","clickEvent": {"action": "suggest_command","value": "/trigger selected_Id set "},"hoverEvent":{"action":"show_text","contents":[{"text":"type a new selector Id","color": "aqua"}]}},{"text": " "},{"text": "+  ","color": "green","clickEvent": {"action":"run_command","value": "/scoreboard players add @s selected_Id 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Next ficture","color": "aqua"}]}},{"text": "     "},{"text": "[CLEAR]","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players set @s selected_Id 0"},"hoverEvent": {"action": "show_text","contents": "Deselect the current light"}}]

#position
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run function lights:lights/control/move

#tellraw @s "\n"
#rotation
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run function lights:lights/control/turn

#wen not close enaugh
execute unless score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s ["",{"text":"The closest light is not the selected light, so you can't edit the Pos. and Rot. Please move closer","bold":true,"color":"red"},{"text":"\n","bold":true},{"text":"Selected id:","bold":true,"color":"aqua"},{"score":{"name":"@e[limit=1,tag=selected]","objective":"Light_Id"},"bold":true,"color":"aqua"},{"text":" Closest Id:","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Edit the closest light instead!","color": "green"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players operation @s selected_Id = @e[limit=1,sort=nearest,type=marker,tag=light] Light_Id"}},{"score":{"name":"@e[limit=1,tag=nearest_light]","objective":"Light_Id"},"bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Edit the closest light instead!","color": "green"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players operation @s selected_Id = @e[limit=1,sort=nearest,type=marker,tag=light] Light_Id"}}]

#with delete
execute if score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s [{"text": "\n"},{"text": "[DELETE]","color": "red","hoverEvent":{"action":"show_text","contents":[{"text":"By clicking this, you remove the light from existance. BE AWARE!","color": "red"}]},"clickEvent": {"action":"run_command","value": "/tag @e[limit=1,sort=nearest,type=marker,tag=light,tag=moving] add delete"}}]

#without delete
#execute unless score @e[limit=1,tag=selected] Light_Id = @e[limit=1,tag=nearest_light] Light_Id run tellraw @s ""

#clear the tags
tag @e[type=marker,tag=light,tag=selected] remove selected
tag @e[type=marker,tag=light,tag=nearest_light] remove nearest_light
tag @a remove controller