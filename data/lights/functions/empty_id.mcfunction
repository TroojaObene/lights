tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"
tellraw @s "\n\n\n\n\n"

tellraw @s ["",{"text": "There is no fixture at this ID:"},{"text": "  -","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players remove @s selected_Id 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Previous ficture","color": "aqua"}]}},{"text": " "},{"score":{"name":"@s","objective":"selected_Id"},"color": "aqua","clickEvent": {"action": "suggest_command","value": "/trigger selected_Id set "},"hoverEvent":{"action":"show_text","contents":[{"text":"type a new selector Id","color": "aqua"}]}},{"text": " "},{"text": "+  ","color": "green","clickEvent": {"action":"run_command","value": "/scoreboard players add @s selected_Id 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Next ficture","color": "aqua"}]}},{"text": "     "},{"text": "[CLEAR]","color": "red","clickEvent": {"action":"run_command","value": "/scoreboard players set @s selected_Id 0"},"hoverEvent": {"action": "show_text","contents": "Deselect the current Id"}}]