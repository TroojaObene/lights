scoreboard players add #temp Light_Id 1
scoreboard players set #matches Light_Id 0
execute as @e if score #temp Light_Id = @s Light_Id run scoreboard players add #matches Light_Id 1

execute unless score #matches Light_Id matches 0 run function math:lights/smallest_id_find
execute if score #matches Light_Id matches 0 run scoreboard players operation smallest Light_Id = #temp Light_Id