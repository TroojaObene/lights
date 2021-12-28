#say started
tellraw @a {"text": "Lights loaded!","color": "blue"}

#create scoreboards
scoreboard objectives add Light_Id dummy
scoreboard objectives add Player_Id dummy
scoreboard objectives add selected_Id trigger
scoreboard objectives add Light_group dummy

scoreboard objectives add Player_leave custom:leave_game