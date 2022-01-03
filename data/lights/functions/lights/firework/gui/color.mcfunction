#Color		    	Decimal
#Dark Red			11141120
#Red 				16733525
#Gold 				16755200
#Yellow 			16777045
#Dark Green 		43520
#Green 				5635925
#Aqua 				5636095
#Dark Aqua 			43690
#Dark Blue 			170
#Blue 				5592575
#Light Purple		16733695
#Dark Purple		11141290
#White 				16777215
#Gray 				11184810
#Dark Gray 			5592405
#Black 				0

#off
execute if score @e[tag=nearest_light, limit=1] F_color matches 1 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 0"}},{"text": " "},{"text": "[Off]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "red"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 11141120"}}]
#Dark Red
execute if score @e[tag=nearest_light, limit=1] F_color matches 11141120 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 1"}},{"text": " "},{"text": "[Dark Red]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "dark_red"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16733525"}}]
#Red
execute if score @e[tag=nearest_light, limit=1] F_color matches 16733525 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 11141120"}},{"text": " "},{"text": "[Red]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "red"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16755200"}}]
#Gold
execute if score @e[tag=nearest_light, limit=1] F_color matches 16755200 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16733525"}},{"text": " "},{"text": "[Gold]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "gold"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16777045"}}]
#Yellow
execute if score @e[tag=nearest_light, limit=1] F_color matches 16777045 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16755200"}},{"text": " "},{"text": "[Yellow]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "yellow"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 43520"}}]
#Dark Green
execute if score @e[tag=nearest_light, limit=1] F_color matches 43520 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16777045"}},{"text": " "},{"text": "[Dark Green]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "dark_green"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5635925"}}]
#Green
execute if score @e[tag=nearest_light, limit=1] F_color matches 5635925 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 43520"}},{"text": " "},{"text": "[Green]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "green"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5636095"}}]
#Aqua
execute if score @e[tag=nearest_light, limit=1] F_color matches 5636095 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5635925"}},{"text": " "},{"text": "[Aqua]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "aqua"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 43690"}}]
#Dark Aqua
execute if score @e[tag=nearest_light, limit=1] F_color matches 43690 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5636095"}},{"text": " "},{"text": "[Dark Aqua]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "dark_aqua"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 170"}}]
#Dark Blue
execute if score @e[tag=nearest_light, limit=1] F_color matches 170 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 43690"}},{"text": " "},{"text": "[Dark Blue]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "dark_blue"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5592575"}}]
#Blue
execute if score @e[tag=nearest_light, limit=1] F_color matches 5592575 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 170"}},{"text": " "},{"text": "[Blue]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "blue"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16733695"}}]
#Light Purple
execute if score @e[tag=nearest_light, limit=1] F_color matches 16733695 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5592575"}},{"text": " "},{"text": "[Pink]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "light_purple"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 11141290"}}]
#Dark Purple
execute if score @e[tag=nearest_light, limit=1] F_color matches 11141290 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16733695"}},{"text": " "},{"text": "[purple]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "dark_purple"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16777215"}}]
#White
execute if score @e[tag=nearest_light, limit=1] F_color matches 16777215 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 11141290"}},{"text": " "},{"text": "[White]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "white"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 11184810"}}]
#Gray
execute if score @e[tag=nearest_light, limit=1] F_color matches 11184810 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 16777215"}},{"text": " "},{"text": "[Gray]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "gray"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5592405"}}]
#Dark Gray
execute if score @e[tag=nearest_light, limit=1] F_color matches 5592405 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 11184810"}},{"text": " "},{"text": "[Dark Gray]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "dark_gray"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 0"}}]
#Black
execute if score @e[tag=nearest_light, limit=1] F_color matches 0 run tellraw @s [{"text": "Color: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explosion color"}]}},{"text": "<","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 5592405"}},{"text": " "},{"text": "[Black]","clickEvent": {"action": "suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color "},"hoverEvent":{"action":"show_text","contents":[{"text":"Enter a custom color."},{"text": " (Use Decimal system)","color": "gray"}]},"color": "black"},{"text": " "},{"text": ">","color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_color 1"}}]