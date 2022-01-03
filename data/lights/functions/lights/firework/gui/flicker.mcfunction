execute if score @e[tag=nearest_light, limit=1] F_flicker matches 0 run tellraw @s [{"text": "Flicker: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explodes with a flicker effect that looks like twinkling"}]}},{"text": "[ON]","color": "gray", "clickEvent": {"action": "run_command","value":"/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_flicker 1"}},{"text": " "},{"text": "[OFF]","color": "red","bold": true, "clickEvent": {"action": "run_command","value":"/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_flicker 0"}}]
execute if score @e[tag=nearest_light, limit=1] F_flicker matches 1 run tellraw @s [{"text": "Flicker: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Explodes with a flicker effect that looks like twinkling"}]}},{"text": "[ON]","color": "green","bold": true, "clickEvent": {"action": "run_command","value":"/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_flicker 1"}},{"text": " "},{"text": "[OFF]","color": "gray", "clickEvent": {"action": "run_command","value":"/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_flicker 0"}}]