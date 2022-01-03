#say started
tellraw @a {"text": "Lights loaded!","color": "blue"}

#create scoreboards
scoreboard objectives add Light_Id dummy
scoreboard objectives add Player_Id dummy
scoreboard objectives add Light_group dummy

scoreboard objectives add Player_leave custom:leave_game

scoreboard objectives add selected_Id trigger
scoreboard objectives add Get_Eggs trigger

##fireworks
scoreboard objectives add F_color dummy
scoreboard objectives add F_type dummy
scoreboard objectives add F_flight dummy
scoreboard objectives add F_life dummy
scoreboard objectives add F_trail dummy
scoreboard objectives add F_FadeColors dummy


##turn rot into motion
#scoreboard objectives add _startX dummy
#scoreboard objectives add _startY dummy
#scoreboard objectives add _startZ dummy
#scoreboard objectives add _targetX dummy
#scoreboard objectives add _targetY dummy
#scoreboard objectives add _targetZ dummy

scoreboard objectives add pos dummy

