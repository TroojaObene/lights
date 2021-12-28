#run place functions
execute as @e[type=marker,tag=placed,tag=still] run function lights:lights/still/create/place

#game leave give id
execute as @a[scores={Player_leave=1..}] run function lights:players/give_id

#be able to see the gui and the light ficture
execute as @a[tag=lights] at @s if score @s selected_Id = @e[limit=1,type=marker,tag=still,tag=light] Light_Id run function lights:control/still
execute as @a[tag=lights] at @s if score @s selected_Id = @e[limit=1,type=marker,tag=moving,tag=light] Light_Id run function lights:control/moving 