tellraw @s [{"text": "Flight: ","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "How long should the flighttime be?"},{"text": " (in Ticks)","color": "gray"}]}},{"text": " "},{"text": "-","color": "red", "clickEvent": {"action": "run_command","value":"/execute as @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] unless score @s F_lifeTime matches 0 run scoreboard players remove @s F_lifeTime 1"}},{"text": " "},{"score":{"objective": "F_lifeTime","name": "@e[type=marker,tag=firework,tag=light,limit=1,sort=nearest]"},"color": "gold","clickEvent": {"action":"suggest_command","value": "/scoreboard players set @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] F_lifeTime "},"hoverEvent":{"action":"show_text","contents":[{"text":"Type a custom lifetime in!"}]}},{"text": " "},{"text": "+","color": "green", "clickEvent": {"action": "run_command","value":"/execute as @e[type=marker,tag=firework,tag=light,limit=1,sort=nearest] unless score @s F_lifeTime matches 1000 run scoreboard players add @s F_lifeTime 1"}}]