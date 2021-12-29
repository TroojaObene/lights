#run place functions
execute as @e[type=marker,tag=placed,tag=still] run function lights:lights/still/place
execute as @e[type=marker,tag=placed,tag=moving] run function lights:lights/moving/place
execute as @e[type=marker,tag=placed,tag=laser] run function lights:lights/laser/place
execute as @e[type=marker,tag=placed,tag=fill] run function lights:lights/fill/place
execute as @e[type=marker,tag=placed,tag=firework] run function lights:lights/firework/place

#game leave give id
execute as @a[scores={Player_leave=1..}] run function lights:players/give_id

#be able to see the gui and the light ficture
execute as @e[type=marker,tag=light] at @s run function lights:light_selector

#enable light techs to select an id
scoreboard players enable @a[tag=lights] selected_Id

#get eggs trigger
scoreboard players enable @a[tag=lights] Get_Eggs
execute as @a[tag=lights,scores={Get_Eggs=1..}] run clear @s bat_spawn_egg
execute as @a[tag=lights,scores={Get_Eggs=1..}] run function lights:give_eggs
scoreboard players set @a Get_Eggs 0

#remove lights with the correct tag
execute as @e[tag=light,type=marker,tag=still,tag=delete] at @s run function lights:lights/still/delete
execute as @e[tag=light,type=marker,tag=moving,tag=delete] at @s run function lights:lights/moving/delete
execute as @e[tag=light,type=marker,tag=fill,tag=delete] at @s run function lights:lights/fill/delete
execute as @e[tag=light,type=marker,tag=laser,tag=delete] at @s run function lights:lights/laser/delete
execute as @e[tag=light,type=marker,tag=firework,tag=delete] at @s run function lights:lights/firework/delete

#limit the light groups from 0 to 100