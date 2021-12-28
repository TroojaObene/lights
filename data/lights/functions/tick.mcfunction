#run place functions
execute as @e[type=marker,tag=placed,tag=still] run function lights:lights/still/create/place

#game leave give id
execute as @a[scores={Player_leave=1..}] run function lights:players/give_id

#be able to see the gui and the light ficture
execute as @e[type=marker,tag=light] at @s run function lights:control/light_selector

#enable light techs to select an id
scoreboard players enable @a[tag=lights] selected_Id